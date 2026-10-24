# half_count_large_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:565d833e-3176-e4bd-a708-cc6fbde21f83",
  "kind": "theorem",
  "lexical_name": "half_count_large_two_line",
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
  "slug": "half-count-large-two-line--ba295956321e09598929c4ae",
  "source": {
    "blob": "ed166c6aaf888dfc00f84b130d40418343d23f72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 283,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba295956321e09598929c4aea0fdc26df8570938902c3949c5bc4bfb9ac29c66",
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

Occurrence: `result:565d833e-3176-e4bd-a708-cc6fbde21f83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_count_large_two_line {f : ℂ → ℂ} {Cf t₀ : ℝ} {k : ℕ}
    (hfa : ∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ f (closedBall (2 + t * I) (91 / 50)))
    (hCf : 0 < Cf)
    (hgrow : ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖f s‖ ≤ Cf * |s.im| ^ k)
    (hlow' : ∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖f (2 + t * I)‖)
    (Zc : ZeroConfig)
    (hlink : ∀ ρ ∈ Zc.carrier, 1 / 2 ≤ ρ.re → f ρ = 0 ∧ analyticOrderNatAt f ρ = Zc.mult ρ) :
    ∃ A₁ t₁ : ℝ, 0 < A₁ ∧ ∀ t : ℝ, t₁ ≤ |t + 1 / 2| →
    (∑ᶠ ρ ∈ Zc.window t (t + 1) ∩ {ρ | 1 / 2 ≤ ρ.re}, (Zc.mult ρ : ℝ)) ≤ A₁ * Real.log (|t| + 3) := by
  classical
  obtain ⟨C, t₁, hC, ht₁4, -, hpf⟩ := logDeriv_partial_fraction_two_line hfa hCf hgrow hlow'
  refine ⟨2 * C, t₁, by positivity, fun t ht => ?_⟩
  obtain ⟨-, Z, hZset, hZcount, -⟩ := hpf (t + 1 / 2) ht
  set W : Set ℂ := Zc.window t (t + 1) ∩ {ρ | 1 / 2 ≤ ρ.re} with hW
  have hWfin : W.Finite := (Zc.window_finite t (t + 1)).subset inter_subset_left
  -- every ρ ∈ W is a zero of Y within 22/25·91/50 of the centre, with the same multiplicity
  have hmem : ∀ ρ ∈ W, ρ ∈ Z := by
    rintro ρ ⟨⟨hρ0, hρ1, hρ2⟩, hρre⟩
    have hstrip := Zc.strip ρ hρ0
    have hre : (1 / 2 : ℝ) ≤ ρ.re := hρre
    rw [← Finset.mem_coe, hZset]
    refine ⟨?_, (hlink ρ hρ0 hre).1⟩
    rw [mem_closedBall, Complex.dist_eq]
    have hre' : (ρ - (2 + ((t + 1 / 2 : ℝ) : ℂ) * I)).re = ρ.re - 2 := by simp
    have him' : (ρ - (2 + ((t + 1 / 2 : ℝ) : ℂ) * I)).im = ρ.im - (t + 1 / 2) := by simp
    have hsq : ‖ρ - (2 + ((t + 1 / 2 : ℝ) : ℂ) * I)‖ ^ 2 ≤ (5 / 2 : ℝ) := by
      rw [Complex.sq_norm, Complex.normSq_apply, hre', him']
      nlinarith [hstrip.2]
    nlinarith [norm_nonneg (ρ - (2 + ((t + 1 / 2 : ℝ) : ℂ) * I))]
  have hmult : ∀ ρ ∈ W, (Zc.mult ρ : ℝ) = (analyticOrderNatAt f ρ : ℝ) := by
    rintro ρ ⟨⟨hρ0, -, -⟩, hρre⟩
    rw [(hlink ρ hρ0 hρre).2]
  have hsum : (∑ᶠ ρ ∈ W, (Zc.mult ρ : ℝ))
      ≤ ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ) := by
    rw [finsum_mem_eq_finite_toFinset_sum _ hWfin,
      Finset.sum_congr rfl (fun ρ hρ => hmult ρ (hWfin.mem_toFinset.mp hρ))]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro ρ hρ
      exact hmem ρ (hWfin.mem_toFinset.mp hρ)
    · intros; positivity
  have hlog : Real.log (|t + 1 / 2| + 3) ≤ 2 * Real.log (|t| + 3) := by
    have h1 : |t + 1 / 2| + 3 ≤ (|t| + 3) ^ 2 := by
      have := abs_add_le t (1 / 2)
      rw [abs_of_pos (by norm_num : (0:ℝ) < 1 / 2)] at this
      nlinarith [abs_nonneg t]
    calc Real.log (|t + 1 / 2| + 3) ≤ Real.log ((|t| + 3) ^ 2) :=
          Real.log_le_log (by positivity) h1
      _ = 2 * Real.log (|t| + 3) := by rw [Real.log_pow]; push_cast; ring
  calc (∑ᶠ ρ ∈ W, (Zc.mult ρ : ℝ)) ≤ _ := hsum
    _ ≤ C * Real.log (|t + 1 / 2| + 3) := hZcount
    _ ≤ C * (2 * Real.log (|t| + 3)) := by gcongr
    _ = 2 * C * Real.log (|t| + 3) := by ring

/-- **Local count, generic**: N(t,t+1] ≤ A₀ log(|t|+3) for every real t, for a ZeroConfig linked to f. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant59f6344188b37871be9c75f89aab57ba541a220e4a8dc293df753639c7f8c8a6.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed166c6aaf888dfc00f84b130d40418343d23f72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
