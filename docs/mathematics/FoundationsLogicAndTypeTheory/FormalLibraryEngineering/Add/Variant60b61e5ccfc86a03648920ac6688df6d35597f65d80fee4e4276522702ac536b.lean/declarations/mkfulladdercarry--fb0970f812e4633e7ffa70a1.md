# mkFullAdderCarry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8edb28ccb57b8bf25859ac56cf4e6b7ee4a308f1cef63db2cb3304afffb81652",
  "kind": "def",
  "lexical_name": "mkFullAdderCarry",
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
  "slug": "mkfulladdercarry--fb0970f812e4633e7ffa70a1",
  "source": {
    "blob": "cb7b95e6449d2041e6cf5012b20a3858fbd816c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb0970f812e4633e7ffa70a14daa41192a0dd6c6f908758bcbf9d9e4591f3f9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8edb28ccb57b8bf25859ac56cf4e6b7ee4a308f1cef63db2cb3304afffb81652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkFullAdderCarry (aig : AIG α) (input : FullAdderInput aig) : AIG.Entrypoint α :=
  -- let subExpr = XOR lhs rhs
  -- cout = OR (AND subExpr cin) (AND lhs rhs)
  -- subExpr is shared in `mkFullAdderOut` and `mkFullAdderCarry`
  -- Due to automated subterm sharing in the AIG we don't have to ensure this explicitly.
  let ⟨lhs, rhs, cin⟩ := input
  let res := aig.mkXorCached ⟨lhs, rhs⟩
  let aig := res.aig
  let subExprRef := res.ref
  have hsub := AIG.LawfulOperator.le_size (f := AIG.mkXorCached) ..
  let lhs := lhs.cast hsub
  let rhs := rhs.cast hsub
  let cin := cin.cast hsub
  let res := aig.mkAndCached ⟨subExprRef, cin⟩
  let aig := res.aig
  let lorRef := res.ref
  have hlor := AIG.LawfulOperator.le_size (f := AIG.mkAndCached) ..
  let lhs := lhs.cast hlor
  let rhs := rhs.cast hlor
  let res := aig.mkAndCached ⟨lhs, rhs⟩
  let aig := res.aig
  let rorRef := res.ref
  have hror := AIG.LawfulOperator.le_size (f := AIG.mkAndCached) ..
  let lorRef := lorRef.cast hror
  aig.mkOrCached ⟨lorRef, rorRef⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant60b61e5ccfc86a03648920ac6688df6d35597f65d80fee4e4276522702ac536b.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb7b95e6449d2041e6cf5012b20a3858fbd816c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
