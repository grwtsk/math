# norm_zeta_logDeriv_of_factorization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ea48664-4ac5-2385-27e6-bfcf4eed590c",
  "kind": "theorem",
  "lexical_name": "norm_zeta_logDeriv_of_factorization",
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
  "slug": "norm-zeta-logderiv-of-factorization--0faffe83efe6e64dbcceae20",
  "source": {
    "blob": "2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 158,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0faffe83efe6e64dbcceae20f4b9b1c969b38d049f125633e229dfdfe01aa31f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea48664-4ac5-2385-27e6-bfcf4eed590c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_zeta_logDeriv_of_factorization (N : ℕ) (hN : 2 ≤ N) (c : ℂ)
    (hc : c = upperCenter N ∨ c = lowerCenter N) (σ y : ℝ)
    (hσ : σ ∈ Icc (0 : ℝ) 2) (hy : |y| = separatedHeight N)
    (hnear : |y - c.im| ≤ 1 / 2) (C : ℂ) (hC : C ≠ 0) (L : ℂ → ℂ)
    (hL : DifferentiableOn ℂ L (ball 0 (11 / 4 : ℝ))) (h0 : L 0 = 0)
    (hreal : ∀ w ∈ ball 0 (11 / 4 : ℝ), (L w).re ≤ growthLog N)
    (hfactor : (fun w => riemannZeta (c + w)) =ᶠ[𝓝 (((σ : ℂ) + (y : ℂ) * Complex.I) - c)]
      fun w => C * (Complex.exp (L w) *
        ∏ z ∈ diskHead N c, (factor 3 (z.1 - c) w) ^ multiplicity z)) :
    ‖logDeriv riemannZeta ((σ : ℂ) + (y : ℂ) * Complex.I)‖ ≤
      80 * growthLog N + diskCountBudget N * (4 * (localCountBudget N + 1) + 1) := by
  let s : ℂ := (σ : ℂ) + (y : ℂ) * Complex.I
  let w : ℂ := s - c
  have hcr : c.re = 2 := by rcases hc with rfl | rfl <;> simp
  have hw : ‖w‖ ≤ 9 / 4 := central_point_norm c s hcr (by simpa [s] using hσ)
    (by simpa [s] using hnear)
  have hsep (z : ZeroPoint) (_hz : z ∈ diskHead N c) :
      heightClearance N ≤ ‖w - (z.1 - c)‖ := by
    have he : w - (z.1 - c) = s - z.1 := by dsimp [w]; ring
    rw [he]
    exact horizontal_distance N σ y hy z
  have hb := norm_logDeriv_of_factorization (diskHead N c) (fun z => z.1 - c) multiplicity
    L (fun u => riemannZeta (c + u)) C w (growthLog N) (heightClearance N)
    hC (growthLog_pos N) (heightClearance_pos N) hL h0 hreal
    (fun z hz => (mem_diskHead N c hc z).mp hz) hw hsep hfactor
  have hcs : c + w = s := by dsimp [w]; ring
  have hsne : s ≠ 1 := by
    intro he
    have hiy : y = 0 := by simpa [s] using congrArg Complex.im he
    rw [hiy, abs_zero] at hy
    linarith [separatedHeight_pos N]
  have hcomp : logDeriv (fun u => riemannZeta (c + u)) w = logDeriv riemannZeta s := by
    change logDeriv (riemannZeta ∘ fun u => c + u) w = _
    have hd : HasDerivAt (fun u : ℂ => c + u) 1 w := by
      simpa only [id_eq] using (hasDerivAt_id w).const_add c
    have hzeta : DifferentiableAt ℂ riemannZeta (c + w) := by
      rw [hcs]
      exact differentiableAt_riemannZeta hsne
    have he := logDeriv_comp (f := riemannZeta) (g := fun u => c + u) (x := w) hzeta hd.differentiableAt
    simpa only [hd.deriv, mul_one, hcs] using he
  rw [hcomp] at hb
  have hJ := localCountBudget_nonneg N
  have hinv : 1 / heightClearance N ≤ 4 * (localCountBudget N + 1) := by
    have hh := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 1)
      (by positivity : (0 : ℝ) < 1 / (4 * (localCountBudget N + 1))) (clearance_le_actual N hN)
    simpa only [one_div, inv_inv] using hh
  calc
    _ ≤ 80 * growthLog N + (∑ z ∈ diskHead N c, (multiplicity z : ℝ)) *
        (1 / heightClearance N + 1) := hb
    _ ≤ 80 * growthLog N + diskCountBudget N * (1 / heightClearance N + 1) :=
      add_le_add le_rfl (mul_le_mul_of_nonneg_right (diskMass_le N hN c hc)
        (by have := (heightClearance_pos N); positivity))
    _ ≤ _ := add_le_add le_rfl (mul_le_mul_of_nonneg_left
      (add_le_add hinv le_rfl) (diskCountBudget_nonneg N))

end
end GRWTSK.RiemannHypothesis.JensenDiskLogDerivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/JensenDiskLogDerivative.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b9c66de4bbbee9d6cd6efd91614c1c2c5033a0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
