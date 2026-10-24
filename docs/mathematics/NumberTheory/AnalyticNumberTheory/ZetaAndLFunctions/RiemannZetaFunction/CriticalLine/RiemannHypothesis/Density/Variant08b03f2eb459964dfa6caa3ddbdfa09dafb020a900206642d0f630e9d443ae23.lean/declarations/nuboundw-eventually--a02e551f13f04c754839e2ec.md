# nuBoundW_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29555fe4-4d79-4cc9-c5af-3d41fb2aa1a9",
  "kind": "theorem",
  "lexical_name": "nuBoundW_eventually",
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
  "slug": "nuboundw-eventually--a02e551f13f04c754839e2ec",
  "source": {
    "blob": "e9be1bee90e255b5e4ea77de82c24e304cf53f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a02e551f13f04c754839e2eca55596ed32eb7991b5c6b6b58e36d52639dd62ae",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29555fe4-4d79-4cc9-c5af-3d41fb2aa1a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nuBoundW_eventually (hΓ : Zeta23.GammaFacts) {lam : ℝ} (hlam : 0 < lam) (cPi : ℝ) :
    ∃ T₀ : ℝ, ∀ p : Setting, p.lam = lam → T₀ ≤ p.T → ∀ c : ℕ → ℂ,
      NuBound p (BcW cPi c p) (nucW cPi p.X c) := by
  obtain ⟨T₁, hT₁⟩ := nuBound_eventually lam hΓ hlam
  obtain ⟨x₀, hx₀⟩ := PrimeSide.PX_abs_le Zeta23.Cheb.chebyshevMertens
  refine ⟨max T₁ (2 * π * Real.exp (|x₀| / lam)), fun p hplam hT c τ => ?_⟩
  have hνX := hT₁ p hplam ((le_max_left _ _).trans hT) τ
  have hlam0 : 0 < p.lam := hplam ▸ hlam
  have hX : x₀ ≤ p.X := Setting.le_X_of_T hlam0 (by rw [hplam]; exact (le_max_right _ _).trans hT)
  have hX1 : 1 ≤ p.X := by
    have : (0:ℝ) ≤ p.L := by
      have := Setting.le_l_of_T (p := p) (l₀ := |x₀| / lam)
        ((le_max_right _ _).trans hT)
      have hl : 0 ≤ p.l := le_trans (by positivity) this
      show 0 ≤ p.lam * Zeta23.l p.T
      exact mul_nonneg hlam0.le hl
    simpa [Setting.X] using Real.one_le_exp this
  have hPi : |Zeta23.PiX p.X τ| ≤ 3 * Real.sqrt p.X := by
    refine (Zeta23.PiX_abs_le hX1 τ).trans ?_
    rw [div_le_iff₀ (by positivity)]
    nlinarith [abs_nonneg τ, Real.sqrt_nonneg p.X]
  have hPX : |Zeta23.PX p.X τ| ≤ Real.sqrt p.X := hx₀ _ hX τ
  have hPc := Pc_abs_le p.X c τ
  have e : nucW cPi p.X c τ
      = Zeta23.nuX p.X τ + (cPi - 1) * Zeta23.PiX p.X τ + (Pc p.X c τ - Zeta23.PX p.X τ) := by
    unfold nucW Zeta23.nuX; ring
  rw [e]
  unfold BcW
  calc |Zeta23.nuX p.X τ + (cPi - 1) * Zeta23.PiX p.X τ + (Pc p.X c τ - Zeta23.PX p.X τ)|
      ≤ |Zeta23.nuX p.X τ| + |(cPi - 1) * Zeta23.PiX p.X τ| + |Pc p.X c τ - Zeta23.PX p.X τ| :=
        abs_add_three _ _ _
    _ ≤ (Bconst p + max (Real.log (|τ| / (4 * p.T))) 0) + |cPi - 1| * (3 * Real.sqrt p.X)
        + ((1 / π) * S1 c p.X + Real.sqrt p.X) := by
        refine add_le_add (add_le_add hνX ?_) ?_
        · rw [abs_mul]; exact mul_le_mul_of_nonneg_left hPi (abs_nonneg _)
        · exact (abs_sub _ _).trans (add_le_add hPc hPX)
    _ = _ := by ring

/-! ## [lem:ends] for ν -/

/-- **[lem:ends] for ν = μ + cΠ·Π_X + P_c** (from `lem_ends_nu`): for `T ≥ T₀` and every `c`,
`|tr G̃² − 𝓜| ≤ C · L · l · log l · B_c²`,  `B_c = l + O(√X) + (1/π)Σ‖c_N‖/√N`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Density/Variant08b03f2eb459964dfa6caa3ddbdfa09dafb020a900206642d0f630e9d443ae23.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9be1bee90e255b5e4ea77de82c24e304cf53f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
