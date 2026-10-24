# norm_sub_le_mul_volume_of_norm_lineDeriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6b/6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9622bc76-4fe0-5d63-c338-2ac359fd7fcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dcf200ea-e669-afc1-ce15-b9c4024ee442",
  "kind": "lemma",
  "lexical_name": "norm_sub_le_mul_volume_of_norm_lineDeriv_le",
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
  "slug": "norm-sub-le-mul-volume-of-norm-linederiv-le--77d0a538b73eb77bb8f9cefb",
  "source": {
    "blob": "f6c00a2bf7286cdf0fd7c681fa741f00670eb766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 122,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77d0a538b73eb77bb8f9cefb374453b9bff253ff41d0821f251f95547b1525f5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf200ea-e669-afc1-ce15-b9c4024ee442`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_sub_le_mul_volume_of_norm_lineDeriv_le
    (hfc : ContinuousOn f (segment ℝ a b))
    (hfd : ∀ t ∈ Ioo (0 : ℝ) 1, LineDifferentiableAt ℝ f (lineMap a b t) (b - a))
    (hf' : ∀ᵐ t : ℝ, t ∈ Ioo (0 : ℝ) 1 → ‖lineDeriv ℝ f (lineMap a b t) (b - a)‖ ≤ C) :
    ‖f b - f a‖ ≤
      C * volume.real {t ∈ Ioo (0 : ℝ) 1 | lineDeriv ℝ f (lineMap a b t) (b - a) ≠ 0} := by
  set g : ℝ → F := fun t ↦ f (lineMap a b t)
  have hgc : ContinuousOn g (Icc 0 1) := by
    refine hfc.comp ?_ ?_
    · exact AffineMap.lineMap_continuous.continuousOn
    · simp [segment_eq_image_lineMap, mapsTo_image]
  have hdg (t : ℝ) (ht : t ∈ Ioo 0 1) : HasDerivAt g (lineDeriv ℝ f (lineMap a b t) (b - a)) t := by
    have := (hfd t ht).hasLineDerivAt.scomp_of_eq (𝕜 := ℝ) t ((hasDerivAt_id t).sub_const t)
    simpa [g, lineMap_apply_module', Function.comp_def, sub_smul, add_comm _ a] using this
  suffices ‖g 1 - g 0‖ ≤ C * volume.real {t ∈ Ioo 0 1 | deriv g t ≠ 0} by
    convert! this using 1
    · simp [g]
    · congr 2 with t
      simp +contextual [(hdg _ _).deriv]
  apply norm_sub_le_mul_volume_of_norm_deriv_le_of_le zero_le_one hgc
  · exact fun t ht ↦ (hdg t ht).differentiableAt.differentiableWithinAt
  · exact hf'.mono fun t ht ht_mem ↦ by simpa only [(hdg t ht_mem).deriv] using ht ht_mem

/-- Let `f : E → F` be a function differentiable on a set `s` and continuous on its closure.
Let `a`, `b` be two points such that the open segment connecting `a` to `b` is a subset of `s`.

If `‖Df‖ ≤ C` everywhere on `s` then `‖f b - f a‖ ≤ C * volume u`,
where `u` is the set of points `t ∈ Ioo 0 1`
such that `f` has nonzero derivative at `lineMap a b t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/DistLEIntegral/Variant6bacec211e49472154a0b53667d34560de01a10627f8f5a727d0ed0e04ea19a4.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6c00a2bf7286cdf0fd7c681fa741f00670eb766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
