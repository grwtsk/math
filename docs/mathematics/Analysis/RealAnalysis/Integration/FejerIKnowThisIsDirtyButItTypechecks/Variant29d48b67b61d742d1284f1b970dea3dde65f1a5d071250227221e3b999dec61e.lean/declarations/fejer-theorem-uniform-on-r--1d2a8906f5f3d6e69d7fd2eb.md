# fejer_theorem_uniform_on_R

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17c8780a-717d-7ee4-c602-1b1d5369b7bd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:804e501f-3a26-9b11-9634-1a7f03d930cc",
  "kind": "theorem",
  "lexical_name": "fejer_theorem_uniform_on_R",
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
  "slug": "fejer-theorem-uniform-on-r--1d2a8906f5f3d6e69d7fd2eb",
  "source": {
    "blob": "fbf09c6bea6d3331635dd00fcb6f355dd9b375f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1779,
    "line": 1758,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d2a8906f5f3d6e69d7fd2ebed0b9cd9d7a02c3df10cf40acf8532e9c2225f98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:804e501f-3a26-9b11-9634-1a7f03d930cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1758–1779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejer_theorem_uniform_on_R (f : ℝ → ℝ) (hf_int : IntervalIntegrable f MeasureTheory.volume (-Real.pi) Real.pi)
    (hf_per : Function.Periodic f (2 * Real.pi)) (hf_cont : Continuous f) :
    TendstoUniformly (fejer_sum f) f Filter.atTop := by
      -- By `fejer_theorem_uniform_on_I`, `fejer_sum f` converges uniformly to `f` on $[-\pi, \pi]$.
      have h_unif : TendstoUniformlyOn (fejer_sum f) f Filter.atTop (Set.Icc (-Real.pi) Real.pi) := by
        apply fejer_theorem_uniform_on_I f hf_int hf_per (-Real.pi) Real.pi (by linarith [Real.pi_pos]);
        exact fun x hx => hf_cont.continuousAt;
      rw [ Metric.tendstoUniformlyOn_iff ] at h_unif;
      rw [ Metric.tendstoUniformly_iff ];
      -- Given ε > 0, we can find N such that for all n ≥ N, the distance between f(x) and fejer_sum f n x is less than ε for all x in [-π, π].
      intro ε hε_pos
      obtain ⟨N, hN⟩ : ∃ N, ∀ n ≥ N, ∀ x ∈ Set.Icc (-Real.pi) Real.pi, dist (f x) (fejer_sum f n x) < ε := by
        exact Filter.eventually_atTop.mp ( h_unif ε hε_pos ) |> fun ⟨ N, hN ⟩ => ⟨ N, fun n hn x hx => hN n hn x hx ⟩;
      -- Since both `fejer_sum f n` and `f` are $2\pi$-periodic, we can extend the uniform convergence to all of $\mathbb{R}$.
      have h_periodic : ∀ n x, fejer_sum f n (x + 2 * Real.pi) = fejer_sum f n x ∧ f (x + 2 * Real.pi) = f x := by
        exact fun n x => ⟨ by exact Function.Periodic.int_mul ( fejer_sum_periodic f n ) 1 x ▸ by norm_num, by exact hf_per x ⟩;
      refine' Filter.eventually_atTop.mpr ⟨ N, fun n hn x => _ ⟩;
      -- By periodicity, we can reduce any $x$ to the interval $[-\pi, \pi]$.
      obtain ⟨k, hk⟩ : ∃ k : ℤ, x - 2 * k * Real.pi ∈ Set.Icc (-Real.pi) Real.pi := by
        exact ⟨ ⌊ ( x + Real.pi ) / ( 2 * Real.pi ) ⌋, by nlinarith [ Int.floor_le ( ( x + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ], by nlinarith [ Int.lt_floor_add_one ( ( x + Real.pi ) / ( 2 * Real.pi ) ), Real.pi_pos, mul_div_cancel₀ ( x + Real.pi ) ( by positivity : ( 2 * Real.pi ) ≠ 0 ) ] ⟩;
      convert hN n hn ( x - 2 * k * Real.pi ) hk using 1 ; ring;
      exact congr_arg₂ _ ( by simpa [ mul_assoc, mul_comm Real.pi ] using Function.Periodic.int_mul hf_per k ( x - k * Real.pi * 2 ) ) ( by simpa [ mul_assoc, mul_comm Real.pi ] using Function.Periodic.int_mul ( show Function.Periodic ( fun x => fejer_sum f n x ) ( 2 * Real.pi ) from fun x => h_periodic n x |>.1 ) k ( x - k * Real.pi * 2 ) )
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FejerIKnowThisIsDirtyButItTypechecks/Variant29d48b67b61d742d1284f1b970dea3dde65f1a5d071250227221e3b999dec61e.lean#L1758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf09c6bea6d3331635dd00fcb6f355dd9b375f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
