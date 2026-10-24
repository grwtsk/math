# local_count_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:549398ac-8f19-1738-5084-26323f30f33d",
  "kind": "theorem",
  "lexical_name": "local_count_two_line",
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
  "slug": "local-count-two-line--52f05999ac850db9be82194d",
  "source": {
    "blob": "ed166c6aaf888dfc00f84b130d40418343d23f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 337,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52f05999ac850db9be82194d56db302b319b0ead14e5b99ee552660e62d46dd3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:549398ac-8f19-1738-5084-26323f30f33d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_count_two_line {f : ℂ → ℂ} {Cf t₀ : ℝ} {k : ℕ}
    (hfa : ∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ f (closedBall (2 + t * I) (91 / 50)))
    (hCf : 0 < Cf)
    (hgrow : ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖f s‖ ≤ Cf * |s.im| ^ k)
    (hlow' : ∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖f (2 + t * I)‖)
    (Zc : ZeroConfig)
    (hlink : ∀ ρ ∈ Zc.carrier, 1 / 2 ≤ ρ.re → f ρ = 0 ∧ analyticOrderNatAt f ρ = Zc.mult ρ) :
    ∃ A₀ : ℝ, 1 ≤ A₀ ∧ ∀ t : ℝ,
    (Zc.N t (t + 1) : ℝ) ≤ A₀ * Real.log (|t| + 3) := by
  obtain ⟨A₁, t₁, hA₁, hlarge⟩ := half_count_large_two_line hfa hCf hgrow hlow' Zc hlink
  -- the finite constant for small |t|
  set K : ℝ := (Zc.N (-(|t₁| + 2)) (|t₁| + 2) : ℝ) with hK
  have hK0 : 0 ≤ K := by positivity
  refine ⟨max 1 (max (2 * A₁) K), le_max_left _ _, fun t => ?_⟩
  have hlog3 := one_le_log_add_three t
  rcases le_or_gt t₁ |t + 1 / 2| with ht | ht
  · have hhalf := Zc.N_le_two_mul_half t (t + 1)
    calc (Zc.N t (t + 1) : ℝ) ≤ 2 * (A₁ * Real.log (|t| + 3)) := by
          refine hhalf.trans ?_
          have := hlarge t ht
          linarith
      _ = (2 * A₁) * Real.log (|t| + 3) := by ring
      _ ≤ max 1 (max (2 * A₁) K) * Real.log (|t| + 3) := by
          apply mul_le_mul_of_nonneg_right _ (by linarith)
          exact le_trans (le_max_left _ _) (le_max_right _ _)
  · -- |t + 1/2| < t₁ ≤ |t₁|: the window sits inside (−(|t₁|+2), |t₁|+2]
    have ht' : |t + 1 / 2| < |t₁| := lt_of_lt_of_le ht (le_abs_self _)
    rw [abs_lt] at ht'
    have hsub : Zc.window t (t + 1) ⊆ Zc.window (-(|t₁| + 2)) (|t₁| + 2) := by
      rintro ρ ⟨hρ, ha, hb⟩
      exact ⟨hρ, by linarith, by linarith⟩
    have hmono : Zc.N t (t + 1) ≤ Zc.N (-(|t₁| + 2)) (|t₁| + 2) :=
      Zc.finsum_mult_mono _ _ hsub subset_rfl
    calc (Zc.N t (t + 1) : ℝ) ≤ K := by rw [hK]; exact_mod_cast hmono
      _ ≤ K * Real.log (|t| + 3) := le_mul_of_one_le_right hK0 hlog3
      _ ≤ max 1 (max (2 * A₁) K) * Real.log (|t| + 3) := by
          apply mul_le_mul_of_nonneg_right _ (by linarith)
          exact le_trans (le_max_right _ _) (le_max_right _ _)


/-! ### good heights -/

set_option maxHeartbeats 1600000 in
/-- **Good heights, generic**: with the two-line data for f and a ZeroConfig Zc whose β ≥ 1/2 points are zeros
of f with the same order (hlink) and which contains every right-half-plane zero of f with |Im ρ| ≥ t₀ (hlink'):
for j ≥ j₀ there is R ∈ [j, j+1] with f ≠ 0 and ‖f′/f‖ ≤ C log²(j+3) on Im s = ±R, 1/2 ≤ Re s ≤ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed166c6aaf888dfc00f84b130d40418343d23f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
