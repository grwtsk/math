# thetaPhi_poly_exp_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:155535f5-adee-2861-0baa-78e4515942c0",
  "kind": "theorem",
  "lexical_name": "thetaPhi_poly_exp_integrableOn",
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
  "slug": "thetaphi-poly-exp-integrableon--aa67987d9b01c621128869dd",
  "source": {
    "blob": "067964b4b4abda69908c1ec422969e653d03c39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variantc449bb03962533fd509846b86333b749f69063eca20ed5fa3483f684badce6c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aa67987d9b01c621128869dd81511229f4e8ea1f7ad5db025c755e47ad4c3807",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variantc449bb03962533fd509846b86333b749f69063eca20ed5fa3483f684badce6c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:155535f5-adee-2861-0baa-78e4515942c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_poly_exp_integrableOn (m : ℕ) (R : ℝ) :
    IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi (0 : ℝ)) := by
  let T : ℝ := 11 + |R|
  have hTpos : 0 < T := by dsimp [T]; positivity
  have hcont : Continuous (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) := by
    exact (continuous_thetaPhi.mul (continuous_id.pow m)).mul (by fun_prop)
  have hinitial :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioc (0 : ℝ) T) := by
    rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le hTpos.le]
    exact hcont.intervalIntegrable _ _
  have hmajor : IntegrableOn (fun t : ℝ =>
      (thetaPhiDecayConstant * (m.factorial : ℝ)) * Real.exp (-t)) (Ioi T) :=
    (integrableOn_exp_neg_Ioi T).const_mul _
  have htail :
      IntegrableOn (fun t => thetaPhi t * t ^ m * Real.exp (R * t)) (Ioi T) := by
    refine Integrable.mono' hmajor hcont.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    exact thetaPhi_poly_exp_norm_le_tail m R (le_of_lt ht)
  apply (hinitial.union htail).mono_set
  intro t ht
  by_cases htT : t ≤ T
  · exact Or.inl ⟨ht, htT⟩
  · exact Or.inr (lt_of_not_ge htT)

/-- The pre-existing even-basis moment integrability in the open-half-line
convention used by the actual xi transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variantc449bb03962533fd509846b86333b749f69063eca20ed5fa3483f684badce6c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variantc449bb03962533fd509846b86333b749f69063eca20ed5fa3483f684badce6c9.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067964b4b4abda69908c1ec422969e653d03c39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
