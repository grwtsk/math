# norm_Lfn_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba4a10b6-55d6-bce2-a14e-dcb2c12b500b",
  "kind": "theorem",
  "lexical_name": "norm_Lfn_line",
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
  "slug": "norm-lfn-line--d86b54d640b9af1ec4be89d3",
  "source": {
    "blob": "f70730c366692a2ec37e4bef2264eaea8c67e895",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d86b54d640b9af1ec4be89d34ddfe663d128990f7224828296973d71da505607",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba4a10b6-55d6-bce2-a14e-dcb2c12b500b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Lfn_line : ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ,
    ‖Lfn (((5 / 4 : ℝ) : ℂ) + t * I)‖ ≤ C * Real.log (2 + |t|) := by
  obtain ⟨CΓ, hCΓ, hΓ⟩ := Zeta23.WeilEF.norm_logDeriv_Gammaℝ_le
  refine ⟨CΓ + 10, by positivity, fun t => ?_⟩
  set s : ℂ := ((5 / 4 : ℝ) : ℂ) + t * I with hs
  have hG := hΓ (5 / 4) t (by norm_num) (by norm_num)
  have h1 : ‖1 / s‖ ≤ 4 / 5 := by
    rw [norm_div, norm_one]
    have : (5 / 4 : ℝ) ≤ ‖s‖ := by
      have := Complex.abs_re_le_norm s
      rw [hs, re_54] at this
      rw [abs_of_pos (by norm_num)] at this
      exact this
    rw [div_le_div_iff₀ (by linarith) (by norm_num)]
    linarith
  have h2 : ‖1 / (s - 1)‖ ≤ 4 := by
    rw [norm_div, norm_one]
    have : (1 / 4 : ℝ) ≤ ‖s - 1‖ := by
      have := Complex.abs_re_le_norm (s - 1)
      have hre : (s - 1).re = 1 / 4 := by rw [Complex.sub_re, hs, re_54]; norm_num
      rw [hre, abs_of_pos (by norm_num)] at this
      exact this
    rw [div_le_iff₀ (by linarith)]
    linarith
  have hL := half_le_log_two_add_abs t
  calc ‖Lfn s‖ = ‖logDeriv Complex.Gammaℝ s + 1 / s + 1 / (s - 1)‖ := rfl
    _ ≤ ‖logDeriv Complex.Gammaℝ s‖ + ‖1 / s‖ + ‖1 / (s - 1)‖ := norm_add₃_le
    _ ≤ CΓ * Real.log (2 + |t|) + 4 / 5 + 4 := by rw [hs]; linarith [hG, h1, h2]
    _ ≤ (CΓ + 10) * Real.log (2 + |t|) := by nlinarith

/-- **‖E(5/4 + it)‖ ≤ C log(2 + |t|)**, E = ξ′/ξ = L + ζ′/ζ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LineBound/Variant9a9856e8cfddb17bbbea7cea2131232b2c8384d69dc4aa8f761e26ea9eb41839.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f70730c366692a2ec37e4bef2264eaea8c67e895` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
