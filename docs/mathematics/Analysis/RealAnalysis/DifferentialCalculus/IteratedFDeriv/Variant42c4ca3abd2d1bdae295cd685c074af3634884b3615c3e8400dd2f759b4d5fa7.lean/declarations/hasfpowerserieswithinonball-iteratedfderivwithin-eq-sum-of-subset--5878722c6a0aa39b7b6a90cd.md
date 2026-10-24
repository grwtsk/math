# HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0779ebcf-8da6-8b7e-f4b2-7b3183b59f98",
  "kind": "lemma",
  "lexical_name": "HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset",
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
  "slug": "hasfpowerserieswithinonball-iteratedfderivwithin-eq-sum-of-subset--5878722c6a0aa39b7b6a90cd",
  "source": {
    "blob": "eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5878722c6a0aa39b7b6a90cdc4162d08faf81ad615b077148f0b1f60023819bc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0779ebcf-8da6-8b7e-f4b2-7b3183b59f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma HasFPowerSeriesWithinOnBall.iteratedFDerivWithin_eq_sum_of_subset
    (h : HasFPowerSeriesWithinOnBall f p s x r) (h' : AnalyticOn 𝕜 f s)
    (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s)
    {n : ℕ} (v : Fin n → E) (h's : s ⊆ EMetric.ball x r) :
    iteratedFDerivWithin 𝕜 n f s x v = ∑ σ : Perm (Fin n), p n (fun i ↦ v (σ i)) := by
  have I : insert x s ∩ EMetric.ball x r = s := by
    rw [Set.insert_eq_of_mem hx]
    exact Set.inter_eq_left.2 h's
  have fcont : ContDiffOn 𝕜 (↑n) f s := by
    apply AnalyticOn.contDiffOn _ hs
    simpa [I] using h'
  let g : E → F := fun z ↦ p n (fun _ ↦ z - x)
  have gcont : ContDiff 𝕜 ω g := by
    apply (p n).contDiff.comp
    exact contDiff_pi.2 (fun i ↦ contDiff_id.sub contDiff_const)
  let q : FormalMultilinearSeries 𝕜 E F := fun k ↦ if h : n = k then (h ▸ p n) else 0
  have A : HasFiniteFPowerSeriesOnBall g q x (n + 1) r := by
    apply HasFiniteFPowerSeriesOnBall.mk' _ h.r_pos
    · intro y hy
      rw [Finset.sum_eq_single_of_mem n]
      · simp [q, g]
      · simp
      · intro i hi h'i
        simp [q, h'i.symm]
    · intro m hm
      have : n ≠ m := by omega
      simp [q, this]
  have B : HasFPowerSeriesWithinOnBall g q s x r :=
    A.toHasFPowerSeriesOnBall.hasFPowerSeriesWithinOnBall
  have J1 : iteratedFDerivWithin 𝕜 n f s x =
      iteratedFDerivWithin 𝕜 n g s x + iteratedFDerivWithin 𝕜 n (f - g) s x := by
    have : f = g + (f - g) := by abel
    nth_rewrite 1 [this]
    rw [iteratedFDerivWithin_add_apply (gcont.of_le le_top).contDiffWithinAt
      (by exact (fcont _ hx).sub (gcont.of_le le_top).contDiffWithinAt) hs hx]
  have J2 : iteratedFDerivWithin 𝕜 n (f - g) s x = 0 := by
    apply (h.sub B).iteratedFDerivWithin_eq_zero (h'.sub ?_) hs hx
    · simp [q]
    · apply gcont.contDiffOn.analyticOn
  have J3 : iteratedFDerivWithin 𝕜 n g s x = iteratedFDeriv 𝕜 n g x :=
    iteratedFDerivWithin_eq_iteratedFDeriv hs (gcont.of_le le_top).contDiffAt hx
  simp only [J1, J3, J2, add_zero]
  let g' : E → F := fun z ↦ p n (fun _ ↦ z)
  have : g = fun z ↦ g' (z - x) := rfl
  rw [this, iteratedFDeriv_comp_sub]
  exact (p n).iteratedFDeriv_comp_diagonal _ v

/-- If a function has a power series in a ball, then its `n`-th iterated derivative is given by
`(v₁, ..., vₙ) ↦ ∑ pₙ (v_{σ (1)}, ..., v_{σ (n)})` where the sum is over all
permutations of `{1, ..., n}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/IteratedFDeriv/Variant42c4ca3abd2d1bdae295cd685c074af3634884b3615c3e8400dd2f759b4d5fa7.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb37bddbbfcff564f7d8563ceeb960bb91e9fbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
