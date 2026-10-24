# le_support_iff_le_vanishingIdeal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 495,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:241f5539-e127-4716-c7df-88109c1e0aaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:629b281e-621d-0dfa-60f6-ce511f7e4abd",
  "kind": "lemma",
  "lexical_name": "le_support_iff_le_vanishingIdeal",
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
  "slug": "le-support-iff-le-vanishingideal--2eedb29ba2d2575361c175f3",
  "source": {
    "blob": "fce5dd422aa2b418b7a04d1ca6a8d56487a994d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 495,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eedb29ba2d2575361c175f328162912f7b752e71faa3edd0ceeb7175d03a50e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:629b281e-621d-0dfa-60f6-ce511f7e4abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 495–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma le_support_iff_le_vanishingIdeal {I : X.IdealSheafData} {Z : Closeds X} :
    Z ≤ I.support ↔ I ≤ vanishingIdeal Z := by
  simp only [le_def, vanishingIdeal_ideal, ← PrimeSpectrum.subset_zeroLocus_iff_le_vanishingIdeal]
  trans ∀ U : X.affineOpens, (Z : Set X) ∩ U ⊆ I.support ∩ U
  · refine ⟨fun H U x hx ↦ ⟨H hx.1, hx.2⟩, fun H x hx ↦ ?_⟩
    obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ :=
      (isBasis_affine_open X).exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
    exact (H ⟨U, hU⟩ ⟨hx, hxU⟩).1
  refine forall_congr' fun U ↦ ?_
  rw [coe_support_inter, ← Set.image_subset_image_iff U.2.fromSpec.isOpenEmbedding.injective,
    Set.image_preimage_eq_inter_range, IsAffineOpen.fromSpec_image_zeroLocus,
    IsAffineOpen.range_fromSpec]

/-- `support` and `vanishingIdeal` forms a galois connection.
This is the global version of `PrimeSpectrum.gc`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant344e99d43c28b9374ec22947ee0677a0953100e573993a6136582ddbb4199a92.lean#L495).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce5dd422aa2b418b7a04d1ca6a8d56487a994d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
