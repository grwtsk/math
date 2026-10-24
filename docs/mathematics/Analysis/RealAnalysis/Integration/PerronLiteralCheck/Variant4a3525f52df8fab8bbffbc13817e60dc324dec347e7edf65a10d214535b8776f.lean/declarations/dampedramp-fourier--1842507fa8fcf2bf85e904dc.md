# dampedRamp_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dad2d0668d555407733f30e4b09dde6877bff6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65eaf83c-7fb5-3146-2b50-4dd1a18b10f1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6e14ecbc-32cd-0431-1dc2-0f8b6b515dc1",
  "kind": "theorem",
  "lexical_name": "dampedRamp_fourier",
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
  "slug": "dampedramp-fourier--1842507fa8fcf2bf85e904dc",
  "source": {
    "blob": "6dad2d0668d555407733f30e4b09dde6877bff6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1842507fa8fcf2bf85e904dcb0c1f283be4e5a2b920ba849b45e64a616b83981",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e14ecbc-32cd-0431-1dc2-0f8b6b515dc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedRamp_fourier (c : ℝ) (hc : 0 < c) (ξ : ℝ) :
    𝓕 (dampedRamp c) ξ = 1 / ((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) ^ 2 := by
  rw [Real.fourier_eq']
  simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial]
  rw [← setIntegral_eq_integral_of_forall_compl_eq_zero (s := Ioi (0 : ℝ))
    (fun t ht => by simp [dampedRamp, max_eq_right (le_of_not_gt (show ¬0 < t from ht))])]
  calc
    _ = ∫ t : ℝ in Ioi 0, (t : ℂ) *
        Complex.exp (-((c : ℂ) + (2 * Real.pi * ξ : ℝ) * Complex.I) * t) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      simp only [dampedRamp, max_eq_left (mem_Ioi.mp ht).le]
      rw [mul_left_comm, ← Complex.exp_add]
      congr 2
      push_cast
      ring
    _ = _ := integral_first_moment _ (by simpa using hc)

/-- The reciprocal-square vertical kernel is absolutely integrable for every c>0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PerronLiteralCheck/Variant4a3525f52df8fab8bbffbc13817e60dc324dec347e7edf65a10d214535b8776f.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dad2d0668d555407733f30e4b09dde6877bff6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
