# det_of_basisMatrix_non_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "25535bb42a7041e4aef67ed999f34373d17118fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33388a8f-4fe7-3623-3259-f500488c7d7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e751306a-2bf7-2f15-3281-ce0ae08fd6f3",
  "kind": "theorem",
  "lexical_name": "det_of_basisMatrix_non_zero",
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
  "slug": "det-of-basismatrix-non-zero--f3d7346915341d1207224d42",
  "source": {
    "blob": "25535bb42a7041e4aef67ed999f34373d17118fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3d7346915341d1207224d42a92af831201359e33320c68b772e0bb42397bbc0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e751306a-2bf7-2f15-3281-ce0ae08fd6f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_of_basisMatrix_non_zero [DecidableEq (K →+* ℂ)] : (basisMatrix K).det ≠ 0 := by
  rw [basisMatrix_eq_embeddingsMatrixReindex, ← pow_ne_zero_iff two_ne_zero]
  convert!
    (map_ne_zero_iff _ (algebraMap ℚ ℂ).injective).mpr
      (Algebra.discr_not_zero_of_basis ℚ (integralBasis K))
  rw [← Algebra.discr_reindex ℚ (integralBasis K) (equivReindex K).symm]
  exact (Algebra.discr_eq_det_embeddingsMatrixReindex_pow_two ℚ ℂ
    (integralBasis K ∘ (equivReindex K)) (RingHom.equivRatAlgHom K ℂ)).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/EquivReindex/Variant3266d6a07c98047b4715e7730df35e960fa99d829920846d8befc1e567f5c847.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25535bb42a7041e4aef67ed999f34373d17118fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
