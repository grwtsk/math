# casesOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80820962b6af4c9e96e01f268a0ff82639b326d8bedbad6ae4c92ae0ac155006",
  "kind": "def",
  "lexical_name": "casesOn",
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
  "slug": "caseson--ef33ebcf35665087cdaf2f15",
  "source": {
    "blob": "bec39ccc6f59bf587136e77b930d3be1ddc2e516",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 394,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef33ebcf35665087cdaf2f1554fbfeb8b8e062c57561f9f8f6f5419fc40d0d51",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80820962b6af4c9e96e01f268a0ff82639b326d8bedbad6ae4c92ae0ac155006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def casesOn (x : Expr) (codomain : Expr) (alts : List Expr) : MetaM Expr := do
  match alts with
  | [] => throwError "Mutual.casesOn: no alternatives"
  | [alt] => return alt.beta #[x]
  | alt₁ :: alts => do
    let t ← inferType x
    match_expr t with
    | PSum a b =>
      let u ← getLevel codomain
      let us := t.getAppFn.constLevels!
      let motive ← mkLambdaFVars #[x] codomain
      let alt₂ ←
        if let [alt] := alts then pure alt else
        withLocalDeclD (← mkFreshUserName `_x) b fun y => do
          let codomain' := motive.beta #[mkApp3 (.const ``PSum.inr us) a b y]
          mkLambdaFVars #[y] (← casesOn y codomain' alts)
      return mkApp6 (.const ``PSum.casesOn (u::us)) a b motive x alt₁ alt₂
    | _ => throwError "Mutual.casesOn: Expected PSum type, got {t}"

/--
Given unary expressions `e₁`, `e₂` with types `(x : A) → R₁[x]`
and `(z : C) → R₂[z]`, returns an expression of type
```
(x : A ⊕' C) → (match x with | .inl x => R₁[x] | .inr R₂[z])
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ArgsPacker/Variant251160806562299c789917c7a871ef78e743ab8507d65c0de6bef0637f043900.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bec39ccc6f59bf587136e77b930d3be1ddc2e516` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
