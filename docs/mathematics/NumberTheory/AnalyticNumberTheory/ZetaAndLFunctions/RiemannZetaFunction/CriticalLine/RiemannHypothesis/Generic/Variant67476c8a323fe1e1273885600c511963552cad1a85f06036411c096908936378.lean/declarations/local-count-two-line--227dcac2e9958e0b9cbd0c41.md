# local_count_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58012f458575d1efeb286634aea144124e4207a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6db89b68-a10c-8452-9c0f-aa5c93054f85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f1e16a0-f3ff-5ff1-2a49-899356760d69",
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
  "slug": "local-count-two-line--227dcac2e9958e0b9cbd0c41",
  "source": {
    "blob": "58012f458575d1efeb286634aea144124e4207a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 329,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:227dcac2e9958e0b9cbd0c41f805e98408a2c1521e31c7beece2494a488af203",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f1e16a0-f3ff-5ff1-2a49-899356760d69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–374.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58012f458575d1efeb286634aea144124e4207a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
