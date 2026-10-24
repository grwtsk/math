# weightedActualSecondPrimitive_eq_finite_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6b8a414-8b8d-d965-f2d4-84a2f3815353",
  "kind": "theorem",
  "lexical_name": "weightedActualSecondPrimitive_eq_finite_window",
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
  "slug": "weightedactualsecondprimitive-eq-finite-window--39e52ebb60f592214728ad87",
  "source": {
    "blob": "55e4c36b4d058947d8d037dc3eed3c1e1ba4af97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant75fdfbb693045095505b768a300009c5a89b36aaf9d636ed54a78625b86006a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39e52ebb60f592214728ad877716469e235147aa1b7c616858560d076e1def4c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant75fdfbb693045095505b768a300009c5a89b36aaf9d636ed54a78625b86006a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6b8a414-8b8d-d965-f2d4-84a2f3815353`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedActualSecondPrimitive_eq_finite_window (l t : ℝ)
    (hl : 0 ≤ l) (hlt : l ≤ t) :
    weightedActualSecondPrimitive l t =
      4 * Real.exp (t / 2) * (mangoldtLogError t + Real.eulerMascheroniConstant + 4) -
      Real.exp (l / 2) * (2 * (t - l) + 4) *
        (mangoldtLogError l + Real.eulerMascheroniConstant) -
      Real.exp (l / 2) * (4 * (t - l) + 16) -
      ∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
        vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
          (2 * (t - Real.log (n : ℝ)) + 4) := by
  have hF := atomTest_contDiff t
  have hw := mangoldtLogWindow_sub_integral l t hl hlt (atomTest t) hF
  have hi := mangoldtLogError_mul_deriv_intervalIntegrable l t hlt (atomTest t) hF
  have hg := hF.continuous_deriv_one.intervalIntegrable (μ := volume) l t
  have hc : (∫ s in l..t, deriv (atomTest t) s) = atomTest t t - atomTest t l := by
    exact intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun s _ => ((contDiff_one_iff_deriv.mp hF).1 s).hasDerivAt) hg
  have hsplit : weightedActualSecondPrimitive l t =
      (∫ s in l..t, mangoldtLogError s * deriv (atomTest t) s) +
        Real.eulerMascheroniConstant * (atomTest t t - atomTest t l) := by
    unfold weightedActualSecondPrimitive primitiveDensity
    have hf : (fun s : ℝ => (t - s) *
        (Real.exp (s / 2) * (mangoldtLogError s + Real.eulerMascheroniConstant))) =
        fun s => mangoldtLogError s * deriv (atomTest t) s +
          Real.eulerMascheroniConstant * deriv (atomTest t) s := by
      funext s
      rw [(atomTest_hasDerivAt t s).deriv]
      ring
    rw [hf, intervalIntegral.integral_add hi (hg.const_mul _),
      intervalIntegral.integral_const_mul, hc]
  rw [mangoldtLogWindow_eq_interval_sum l t hl hlt] at hw
  rw [atomTest_integral] at hw
  have hwexpand : (∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
      vonMangoldt n / (n : ℝ) * atomTest t (Real.log (n : ℝ))) =
      ∑ n ∈ Finset.Ioc ⌊Real.exp l⌋₊ ⌊Real.exp t⌋₊,
        vonMangoldt n / (n : ℝ) * Real.exp (Real.log (n : ℝ) / 2) *
          (2 * (t - Real.log (n : ℝ)) + 4) := by
    apply Finset.sum_congr rfl
    intro n _
    unfold atomTest
    ring
  rw [hwexpand] at hw
  rw [hsplit]
  unfold atomTest at *
  simp only [sub_self, mul_zero, zero_add] at *
  linarith

end FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteReadout
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant75fdfbb693045095505b768a300009c5a89b36aaf9d636ed54a78625b86006a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualPrimitiveFiniteReadout/Variant75fdfbb693045095505b768a300009c5a89b36aaf9d636ed54a78625b86006a1.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e4c36b4d058947d8d037dc3eed3c1e1ba4af97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
