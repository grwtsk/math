# tail_improved

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e101a3e7-f969-47a1-5eb5-5d6488f3d78a",
  "kind": "theorem",
  "lexical_name": "tail_improved",
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
  "slug": "tail-improved--918d83fc5faef101d6e5eb03",
  "source": {
    "blob": "bbbc590fca211c6b2b543b5ee06ce0a6f640eb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 205,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:918d83fc5faef101d6e5eb03975ba22b6ad1869dea853d87ef8c2a4406c6081f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e101a3e7-f969-47a1-5eb5-5d6488f3d78a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_improved {s : ℂ} (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) :
    ‖tail 2 s‖ ≤ (3 / 4 : ℝ) *
      ((2 : ℝ) ^ (-(s.re + 5)) / (30240 * (s.re + 5))) := by
  have hs : 0 < s.re := by linarith
  have hden : 0 < s.re + 5 := by linarith
  have hp : IntegrableOn (fun t : ℝ => t ^ (-(s.re + 6))) (Ioi 2) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) (by norm_num)
  have hi := sixthKernel.integrand_integrable (T := 2) (z := s + 6) (by norm_num)
    (by simp only [Complex.add_re, Complex.ofNat_re]; linarith)
  have heq : (∫ t : ℝ in Ioi 2, defect s t) =
      (2 : ℝ) ^ (-(s.re + 5)) / (s.re + 5) -
        30240 * ∫ t : ℝ in Ioi 2, ‖sixthKernel.integrand (s + 6) t‖ := by
    rw [defect, integral_sub hp (hi.norm.const_mul 30240), integral_const_mul]
    rw [integral_Ioi_rpow_of_lt (by linarith : -(s.re + 6) < -1) (by norm_num : (0 : ℝ) < 2),
      show -(s.re + 6) + 1 = -(s.re + 5) by ring, neg_div_neg_eq]
  have hn : ‖tail 2 s‖ ≤ ∫ t : ℝ in Ioi 2, ‖sixthKernel.integrand (s + 6) t‖ :=
    norm_integral_le_integral_norm _
  have hd := full_defect_lower hs hx1
  rw [heq, weight_shift] at hd
  have hb : 30240 * ‖tail 2 s‖ + (2 : ℝ) ^ (-(s.re + 5)) / 22 ≤
      (2 : ℝ) ^ (-(s.re + 5)) / (s.re + 5) := by nlinarith
  have hm := mul_le_mul_of_nonneg_right hb hden.le
  rw [div_mul_cancel₀ _ hden.ne'] at hm
  have hpow : 0 ≤ (2 : ℝ) ^ (-(s.re + 5)) := Real.rpow_nonneg (by norm_num) _
  have hsave := mul_nonneg hpow (show 0 ≤ s.re - 1 / 2 by linarith)
  rw [← mul_div_assoc]
  apply (le_div_iff₀ (mul_pos (by norm_num : (0 : ℝ) < 30240) hden)).mpr
  change ‖tail 2 s‖ * (30240 * (s.re + 5)) ≤ (3 / 4 : ℝ) * (2 : ℝ) ^ (-(s.re + 5))
  nlinarith

/-- The exact residual and all seven parameter factors remain attached to H. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCutoffTwoTailDefect.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbbc590fca211c6b2b543b5ee06ce0a6f640eb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
