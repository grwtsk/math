# isRflProofCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f363f4d6e0d495116931c7446d3bb1897243f9950e7139f31b07dc9e390e89e",
  "kind": "def",
  "lexical_name": "isRflProofCore",
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
  "slug": "isrflproofcore--bab64f05edd706180bc0f60f",
  "source": {
    "blob": "571240a5656393088d6ef0578b14d367b62cc861",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 121,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bab64f05edd706180bc0f60f155315e40d117d97d5a2e2e1a27f752b85bfe805",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f363f4d6e0d495116931c7446d3bb1897243f9950e7139f31b07dc9e390e89e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isRflProofCore (type : Expr) (proof : Expr) : CoreM Bool := do
  match type with
  | .forallE _ _ type _ =>
    if let .lam _ _ proof _ := proof then
      isRflProofCore type proof
    else
      return false
  | _ =>
    if type.isAppOfArity ``Eq 3 then
      if proof.isAppOfArity ``Eq.refl 2 || proof.isAppOfArity ``rfl 2 then
        return true
      else if proof.isAppOfArity ``Eq.symm 4 then
        -- `Eq.symm` of rfl proof is a rfl proof
        isRflProofCore type proof.appArg! -- small hack: we don't need to set the exact type
      else if proof.getAppFn.isConst then
        -- The application of a `defeq` or `backward_defeq` theorem is a `rfl` proof
        let env ← getEnv
        let c := proof.getAppFn.constName!
        return defeqAttr.hasTag env c || backwardDefeqAttr.hasTag env c
      else
        return false
    else
      return false

/--
For automatically generated theorems (equational theorems etc.), we tag the theorem with
the `defeq`/`backward_defeq` attributes based on its `rfl` proof:

* If the equation holds at `.implicit` transparency (matching the transparency at which
  `dsimp` operates), we tag it with `@[defeq]`.
* Independently, if the equation holds under the more permissive legacy check (equivalent
  to `validateDefEqAttr`, i.e. at `.default` or `.all` transparency), we tag it with
  `@[backward_defeq]`.

In particular, every theorem that would have been tagged `@[defeq]` before the stricter
inference rules were introduced is now tagged `@[backward_defeq]`. Local backwards
compatibility can be restored with `set_option backward.defeqAttrib.useBackward true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Varianta10eafd711ba7b56b35128f0cacb1155db457e044cbb6e1df1725e7a5bca8980.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `571240a5656393088d6ef0578b14d367b62cc861` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
