# mkCodomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca4ac9f61547edc3fe493ce7013fa646f624325e76bdeb6a025764d4814c3314",
  "kind": "def",
  "lexical_name": "mkCodomain",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "mkcodomain--747f60afaeced0320a8ca039",
  "source": {
    "blob": "0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 313,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:747f60afaeced0320a8ca03942d4215229a716d2ec9a5dca1340b78ec040f8c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca4ac9f61547edc3fe493ce7013fa646f624325e76bdeb6a025764d4814c3314`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def mkCodomain (types : Array Expr) (x : Expr) : MetaM Expr := do
  let u ← forallBoundedTelescope types[0]! (some 1) fun _ body => getLevel body
  let rec go (x : Expr) (i : Nat) : MetaM Expr := do
    if i < types.size - 1 then
      let xType ← whnfD (← inferType x)
      assert! xType.isAppOfArity ``PSum 2
      let xTypeArgs := xType.getAppArgs
      let casesOn := mkConst ``PSum.casesOn (mkLevelSucc u :: xType.getAppFn.constLevels!)
      let casesOn := mkAppN casesOn xTypeArgs -- parameters
      let casesOn := mkApp casesOn (← mkLambdaFVars #[x] (mkSort u)) -- motive
      let casesOn := mkApp casesOn x -- major
      let minor1 ← withLocalDeclD (← mkFreshUserName `_x) xTypeArgs[0]! fun x => do
        mkLambdaFVars #[x] (types[i]!.bindingBody!.instantiate1 x)
      let minor2 ← withLocalDeclD (← mkFreshUserName `_x) xTypeArgs[1]! fun x => do
        mkLambdaFVars #[x] (← go x (i+1))
      return mkApp2 casesOn minor1 minor2
    else
      return types[i]!.bindingBody!.instantiate1 x
    termination_by types.size - 1 - i
  go x 0

/--
Given types `(x : A) → R₁[x]` and `(z : B) → R₂[z]`, returns the type
```
(x : A ⊕' B) → (match x with | .inl x => R₁[x] | .inr R₂[z]
```
if the codomains are dependent, or
```
(x : A ⊕' B) → R
```
if they are all the same.

-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant0dac9ecd55844b8160095c6018db12688e7c918811ebeefa31d68a5528e7ef7e.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5ae703aafdb4f3075c9fae1e3fa45a9849c0d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
