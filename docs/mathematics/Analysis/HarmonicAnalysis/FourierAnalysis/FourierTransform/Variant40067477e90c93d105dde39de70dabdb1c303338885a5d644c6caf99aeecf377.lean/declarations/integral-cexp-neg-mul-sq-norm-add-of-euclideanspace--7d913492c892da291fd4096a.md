# integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "179491edbeb37eae5e80866272098233ff2a9f7f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 293,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29dc6a13-a0f6-b483-31c4-3633d4f458e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be110b9c-12c4-8886-0acd-16a217b8579f",
  "kind": "theorem",
  "lexical_name": "integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace",
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
  "slug": "integral-cexp-neg-mul-sq-norm-add-of-euclideanspace--7d913492c892da291fd4096a",
  "source": {
    "blob": "179491edbeb37eae5e80866272098233ff2a9f7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 293,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d913492c892da291fd4096abb5ebad0a028e3d0d0f6e1e6f8ffba253e7ce10e",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be110b9c-12c4-8886-0acd-16a217b8579f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 293–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_cexp_neg_mul_sq_norm_add_of_euclideanSpace
    {ι : Type*} [Fintype ι] (hb : 0 < b.re) (c : ℂ) (w : EuclideanSpace ℝ ι) :
    ∫ v : EuclideanSpace ℝ ι, cexp (- b * ‖v‖ ^ 2 + c * ⟪w, v⟫) =
      (π / b) ^ (Fintype.card ι / 2 : ℂ) * cexp (c ^ 2 * ‖w‖ ^ 2 / (4 * b)) := by
  rw [← (PiLp.volume_preserving_toLp ι).integral_comp
    (MeasurableEquiv.toLp 2 _).measurableEmbedding]
  simp only [neg_mul]
  convert! integral_cexp_neg_mul_sum_add hb (fun i ↦ c * w i) using 5 with _x y
  · simp only [EuclideanSpace.norm_eq, norm_eq_abs, sq_abs, neg_mul, neg_inj, mul_eq_mul_left_iff]
    norm_cast
    left
    rw [sq_sqrt]
    exact Finset.sum_nonneg (fun i _hi ↦ by positivity)
  · simp only [PiLp.inner_apply, RCLike.inner_apply, conj_trivial, ofReal_sum, ofReal_mul,
      Finset.mul_sum, mul_assoc]
    simp_rw [mul_comm]
  · simp only [EuclideanSpace.norm_eq, Real.norm_eq_abs, sq_abs, mul_pow, ← Finset.mul_sum]
    congr
    norm_cast
    rw [sq_sqrt]
    exact Finset.sum_nonneg (fun i _hi ↦ by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/FourierTransform/Variant40067477e90c93d105dde39de70dabdb1c303338885a5d644c6caf99aeecf377.lean#L293).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179491edbeb37eae5e80866272098233ff2a9f7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
