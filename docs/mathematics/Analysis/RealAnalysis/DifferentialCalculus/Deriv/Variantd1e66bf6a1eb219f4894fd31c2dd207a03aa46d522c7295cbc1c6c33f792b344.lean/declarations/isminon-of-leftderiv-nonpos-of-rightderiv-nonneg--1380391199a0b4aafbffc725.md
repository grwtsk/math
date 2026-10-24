# isMinOn_of_leftDeriv_nonpos_of_rightDeriv_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b4b7285f0161d814987aca90a53998399e4d149",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 690,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1e66bf6a1eb219f4894fd31c2dd207a03aa46d522c7295cbc1c6c33f792b344.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4465af5f-115b-0fc5-b617-d6c5ec358e46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7294fc68-a580-bb30-fc10-15b75eb7e51a",
  "kind": "lemma",
  "lexical_name": "isMinOn_of_leftDeriv_nonpos_of_rightDeriv_nonneg",
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
  "slug": "isminon-of-leftderiv-nonpos-of-rightderiv-nonneg--1380391199a0b4aafbffc725",
  "source": {
    "blob": "1b4b7285f0161d814987aca90a53998399e4d149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 707,
    "line": 690,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantd1e66bf6a1eb219f4894fd31c2dd207a03aa46d522c7295cbc1c6c33f792b344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1380391199a0b4aafbffc7257415617d88788294eae7400c206681506a812b4e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantd1e66bf6a1eb219f4894fd31c2dd207a03aa46d522c7295cbc1c6c33f792b344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7294fc68-a580-bb30-fc10-15b75eb7e51a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 690–707.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isMinOn_of_leftDeriv_nonpos_of_rightDeriv_nonneg (hf : ConvexOn ℝ S f) (hx : x ∈ interior S)
    (hf_ld : derivWithin f (Iio x) x ≤ 0) (hf_rd : 0 ≤ derivWithin f (Ioi x) x) :
    IsMinOn f S x := by
  intro y hy
  rcases lt_trichotomy x y with hxy | h_eq | hyx
  · suffices 0 ≤ slope f x y by
      simp only [slope_def_field, div_nonneg_iff, sub_nonneg, tsub_le_iff_right, zero_add,
        not_le.mpr hxy, and_false, or_false] at this
      exact this.1
    exact hf_rd.trans <| rightDeriv_le_slope_of_mem_interior hf hx hy hxy
  · simp [h_eq]
  · suffices slope f x y ≤ 0 by
      simp only [slope_def_field, div_nonpos_iff, sub_nonneg, tsub_le_iff_right, zero_add,
        not_le.mpr hyx, and_false, or_false] at this
      exact this.1
    rw [slope_comm]
    exact (slope_le_leftDeriv_of_mem_interior hf hy hx hyx).trans hf_ld

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantd1e66bf6a1eb219f4894fd31c2dd207a03aa46d522c7295cbc1c6c33f792b344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variantd1e66bf6a1eb219f4894fd31c2dd207a03aa46d522c7295cbc1c6c33f792b344.lean#L690).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4b7285f0161d814987aca90a53998399e4d149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
