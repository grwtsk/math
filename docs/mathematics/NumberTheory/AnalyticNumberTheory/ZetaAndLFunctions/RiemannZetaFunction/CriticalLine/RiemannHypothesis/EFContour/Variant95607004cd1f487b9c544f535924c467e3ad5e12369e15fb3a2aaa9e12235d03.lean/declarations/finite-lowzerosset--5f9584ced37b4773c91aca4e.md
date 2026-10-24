# finite_lowZerosSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb8c4e3e-4184-210d-653c-15e7641803be",
  "kind": "theorem",
  "lexical_name": "finite_lowZerosSet",
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
  "slug": "finite-lowzerosset--5f9584ced37b4773c91aca4e",
  "source": {
    "blob": "81e495413fa057991eff8203fff81c2aefef8151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 248,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5f9584ced37b4773c91aca4ea8afbc65b7240a539866ce99d058c88b8f55531f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb8c4e3e-4184-210d-653c-15e7641803be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_lowZerosSet {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 5 / 4) (t₀ : ℝ) : (lowZerosSet c t₀).Finite := by
  set T : ℝ := max t₀ 1 with hT
  have hT0 : 0 < T := lt_of_lt_of_le one_pos (le_max_right _ _)
  have hfA : AnalyticOnNhd ℂ Wreg (Rectangle (zc c T) (wc c T)) := fun s hs =>
    Wreg_analyticAt (re_bounds_of_mem hc1 hc2 hT0 hs).1 (re_bounds_of_mem hc1 hc2 hT0 hs).2
  have hfin := Zeta23.Analytic.finite_zeros_rectangle hfA (zero_mem_rect hc1 hc2 hT0) (by rw [Wreg_zero]; norm_num)
  refine hfin.subset ?_
  rintro ρ ⟨h0, hne0, hne1, him, hr1, hr2⟩
  have hρQ : ρ ∈ Rectangle (zc c T) (wc c T) :=
    (mem_rect_iff (by linarith) hT0.le ρ).mpr ⟨⟨hr1.le, hr2.le⟩,
      by linarith [(abs_lt.mp him).1, le_max_left t₀ 1], by linarith [(abs_lt.mp him).2, le_max_left t₀ 1]⟩
  refine ⟨hρQ, ?_⟩
  rw [Set.mem_preimage, Set.mem_singleton_iff,
    Wreg_eq_zero_iff ⟨(re_bounds_of_mem hc1 hc2 hT0 hρQ).1, (re_bounds_of_mem hc1 hc2 hT0 hρQ).2, hne0, hne1⟩]
  exact h0

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/EFContour/Variant95607004cd1f487b9c544f535924c467e3ad5e12369e15fb3a2aaa9e12235d03.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81e495413fa057991eff8203fff81c2aefef8151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
