# gammaFactor_analyticAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:516d0550-c402-1219-093e-b246503fdab1",
  "kind": "lemma",
  "lexical_name": "gammaFactor_analyticAt",
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
  "slug": "gammafactor-analyticat--e53f074a1349dad609a364a8",
  "source": {
    "blob": "bc0a5b4c084aed86c77f00c6cc834e11e454a187",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 140,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e53f074a1349dad609a364a8ff187ee59610e1513950c71e02db684cfc67abaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:516d0550-c402-1219-093e-b246503fdab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma gammaFactor_analyticAt {w : ℂ} (h0 : 0 < w.re) :
    AnalyticAt ℂ (gammaFactor χ) w ∧ gammaFactor χ w ≠ 0 := by
  have key : ∀ a : ℂ, 0 < (w + a).re → AnalyticAt ℂ (fun z => Gammaℝ (z + a)) w ∧
      Gammaℝ (w + a) ≠ 0 := by
    intro a ha
    constructor
    · have hπ : AnalyticAt ℂ (fun z : ℂ => (Real.pi : ℂ) ^ (-(z + a) / 2)) w := by
        rw [analyticAt_iff_eventually_differentiableAt]
        filter_upwards with z
        exact (((differentiableAt_id.add_const a).neg).div_const 2).const_cpow
          (Or.inl (Complex.ofReal_ne_zero.mpr Real.pi_ne_zero))
      have hΓ : AnalyticAt ℂ (fun z : ℂ => Complex.Gamma ((z + a) / 2)) w := by
        rw [analyticAt_iff_eventually_differentiableAt]
        have hopen : IsOpen {z : ℂ | 0 < (z + a).re} := by
          have : Continuous fun z : ℂ => (z + a).re :=
            Complex.continuous_re.comp (continuous_add_const a)
          exact isOpen_lt continuous_const this
        filter_upwards [hopen.mem_nhds ha] with z hz
        have hd : DifferentiableAt ℂ Complex.Gamma ((z + a) / 2) := by
          refine Complex.differentiableAt_Gamma _ fun m => ?_
          intro h
          have h2 : z + a = -2 * (m : ℂ) := by
            rw [div_eq_iff (two_ne_zero (α := ℂ))] at h
            rw [h]; ring
          have h3 : (z + a).re = -2 * (m : ℝ) := by
            rw [h2]
            simp [Complex.mul_re]
          rw [h3] at hz
          have hm : (0 : ℝ) ≤ (m : ℝ) := Nat.cast_nonneg m
          nlinarith
        exact hd.comp z ((differentiableAt_id.add_const a).div_const 2)
      have := hπ.mul hΓ
      refine this.congr ?_
      filter_upwards with z
      simp [Complex.Gammaℝ_def]
    · exact Complex.Gammaℝ_ne_zero_of_re_pos ha
  rcases χ.even_or_odd with he | ho
  · have h := key 0 (by simpa using h0)
    refine ⟨?_, ?_⟩
    · refine h.1.congr ?_
      filter_upwards with z
      simp [he.gammaFactor_def]
    · simpa [he.gammaFactor_def] using h.2
  · have h := key 1 (by simp only [Complex.add_re, Complex.one_re]; linarith)
    refine ⟨?_, ?_⟩
    · refine h.1.congr ?_
      filter_upwards with z
      simp [ho.gammaFactor_def]
    · simpa [ho.gammaFactor_def] using h.2

/-- `Λ = γ·L` on the right half plane (`q > 1`), as an eventual equality near strip points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SeamL/Variant551defa258726037ae62ee5f73024170ed80fcbbc15f62e357885d96f879afe0.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc0a5b4c084aed86c77f00c6cc834e11e454a187` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
