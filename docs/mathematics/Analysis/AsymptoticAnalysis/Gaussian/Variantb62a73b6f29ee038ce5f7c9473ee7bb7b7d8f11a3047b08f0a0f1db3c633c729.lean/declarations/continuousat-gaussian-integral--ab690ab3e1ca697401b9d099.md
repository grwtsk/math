# continuousAt_gaussian_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "51e199d0bba54a5a81344683204442537ded94ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 229,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:460e74ad-fd50-9128-c842-3ae06aa2aae1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d188f42-4c3e-6902-2396-2e6eb7e51096",
  "kind": "theorem",
  "lexical_name": "continuousAt_gaussian_integral",
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
  "slug": "continuousat-gaussian-integral--ab690ab3e1ca697401b9d099",
  "source": {
    "blob": "51e199d0bba54a5a81344683204442537ded94ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 229,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab690ab3e1ca697401b9d09998dd20b9dd0553841e68a8d6716e501660b8f04f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d188f42-4c3e-6902-2396-2e6eb7e51096`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousAt_gaussian_integral (b : ℂ) (hb : 0 < re b) :
    ContinuousAt (fun c : ℂ => ∫ x : ℝ, cexp (-c * (x : ℂ) ^ 2)) b := by
  let f : ℂ → ℝ → ℂ := fun (c : ℂ) (x : ℝ) => cexp (-c * (x : ℂ) ^ 2)
  obtain ⟨d, hd, hd'⟩ := exists_between hb
  have f_meas : ∀ c : ℂ, AEStronglyMeasurable (f c) volume := fun c => by
    apply Continuous.aestronglyMeasurable
    exact Complex.continuous_exp.comp (continuous_const.mul (continuous_ofReal.pow 2))
  have f_cts : ∀ x : ℝ, ContinuousAt (fun c => f c x) b := fun x =>
    (Complex.continuous_exp.comp (continuous_id'.neg.mul continuous_const)).continuousAt
  have f_le_bd : ∀ᶠ c : ℂ in 𝓝 b, ∀ᵐ x : ℝ, ‖f c x‖ ≤ exp (-d * x ^ 2) := by
    refine' eventually_of_mem ((continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds hd') _
    refine' fun c hc => ae_of_all _ fun x => _
    rw [norm_cexp_neg_mul_sq, exp_le_exp]
    exact mul_le_mul_of_nonneg_right (neg_le_neg (le_of_lt hc)) (sq_nonneg _)
  exact
    continuousAt_of_dominated (eventually_of_forall f_meas) f_le_bd (integrable_exp_neg_mul_sq hd)
      (ae_of_all _ f_cts)
#align continuous_at_gaussian_integral continuousAt_gaussian_integral

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51e199d0bba54a5a81344683204442537ded94ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
