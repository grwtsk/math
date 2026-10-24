# reZeroSetL_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3023b1cc-d3bd-0624-e43d-99a99e257f11",
  "kind": "theorem",
  "lexical_name": "reZeroSetL_card_le",
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
  "slug": "rezerosetl-card-le--b9ea16a7cf2c98103847d4d6",
  "source": {
    "blob": "aff84b91dc54960a7cf959c64fc17e59bb110fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 313,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b9ea16a7cf2c98103847d4d6784dbcb642b187b476d3028b2a064bcdc4085098",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3023b1cc-d3bd-0624-e43d-99a99e257f11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reZeroSetL_card_le (hχ1 : χ ≠ 1) : ∃ C T₀ : ℝ, ∀ T : ℝ, T₀ ≤ |T| →
    (reZeroSetL χ T).Finite ∧ ((reZeroSetL χ T).ncard : ℝ) ≤ C * Real.log |T| := by
  obtain ⟨C, hC⟩ := reZeroSetL_card_le_uniform
  have hq1 : (1:ℝ) ≤ q := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr (NeZero.ne q)
  refine ⟨2 * |C|, 2 * q + 6, fun T hT => ?_⟩
  obtain ⟨hfin, hcount⟩ := hC q χ hχ1 T
  refine ⟨hfin, hcount.trans ?_⟩
  have hT3 : (3:ℝ) ≤ |T| := by linarith
  have hqT : (q:ℝ) * (|T| + 3) ≤ |T| ^ 2 := by
    nlinarith [mul_nonneg (sub_nonneg.2 hT) (by positivity : (0:ℝ) ≤ |T| + 3)]
  have hpos : (0:ℝ) < q * (|T| + 3) := by positivity
  have hlog : Real.log (q * (|T| + 3)) ≤ 2 * Real.log |T| :=
    calc Real.log (q * (|T| + 3)) ≤ Real.log (|T| ^ 2) := Real.log_le_log hpos hqT
      _ = 2 * Real.log |T| := by rw [Real.log_pow]; norm_num
  have hlog0 : 0 ≤ Real.log (q * (|T| + 3)) := Real.log_nonneg (by nlinarith)
  calc C * Real.log (q * (|T| + 3)) ≤ |C| * Real.log (q * (|T| + 3)) :=
        mul_le_mul_of_nonneg_right (le_abs_self C) hlog0
    _ ≤ |C| * (2 * Real.log |T|) := mul_le_mul_of_nonneg_left hlog (abs_nonneg C)
    _ = 2 * |C| * Real.log |T| := by ring

/-- **Backlund's bound for L(s,χ)**: two-sided in T; constants depend on χ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReZeroCountChi/Variant6fd4a51092cd1946012d3e4aee8fac633fd2f17fac20c64c3b7e3e5b34f24814.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aff84b91dc54960a7cf959c64fc17e59bb110fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
