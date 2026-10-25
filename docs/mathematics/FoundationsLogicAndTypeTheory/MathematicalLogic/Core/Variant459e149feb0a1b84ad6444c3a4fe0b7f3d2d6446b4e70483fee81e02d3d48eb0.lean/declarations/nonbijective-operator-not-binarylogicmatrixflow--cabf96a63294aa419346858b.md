# nonbijective_operator_not_BinaryLogicMatrixFlow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:991cf7d0-29d1-ceb2-2338-0889d2c912ee",
  "kind": "theorem",
  "lexical_name": "nonbijective_operator_not_BinaryLogicMatrixFlow",
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
  "slug": "nonbijective-operator-not-binarylogicmatrixflow--cabf96a63294aa419346858b",
  "source": {
    "blob": "a1735cbc2ee2e084b88360e5eb6bdb9832022fca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant459e149feb0a1b84ad6444c3a4fe0b7f3d2d6446b4e70483fee81e02d3d48eb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cabf96a63294aa419346858b7fa4c44adc2d345665143f290e8d4588fe134ee2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant459e149feb0a1b84ad6444c3a4fe0b7f3d2d6446b4e70483fee81e02d3d48eb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:991cf7d0-29d1-ceb2-2338-0889d2c912ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonbijective_operator_not_BinaryLogicMatrixFlow
    (A : BinaryLogicMatrixAveragingOperator rows cols) :
    ¬ Function.Bijective A.apply ->
      ¬ ∃ F : BinaryLogicMatrixFlow rows cols, F.forward = A.apply := by
  intro hnot h
  rcases h with ⟨F, hF⟩
  apply hnot
  rw [← hF]
  exact BinaryLogicMatrixFlow.blmFlow_forward_bijective F

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant459e149feb0a1b84ad6444c3a4fe0b7f3d2d6446b4e70483fee81e02d3d48eb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant459e149feb0a1b84ad6444c3a4fe0b7f3d2d6446b4e70483fee81e02d3d48eb0.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1735cbc2ee2e084b88360e5eb6bdb9832022fca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
