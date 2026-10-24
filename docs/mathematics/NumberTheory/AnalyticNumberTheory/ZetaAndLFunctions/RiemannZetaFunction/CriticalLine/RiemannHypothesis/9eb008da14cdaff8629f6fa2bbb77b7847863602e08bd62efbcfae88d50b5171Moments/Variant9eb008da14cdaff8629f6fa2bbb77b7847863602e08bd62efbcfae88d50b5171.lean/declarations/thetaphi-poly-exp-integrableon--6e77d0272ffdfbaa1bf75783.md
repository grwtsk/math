# thetaPhi_poly_exp_integrableOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dcddeda2e95edf0612a7ebb976e81ecf5223235a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 53,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9e/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb0daff0-8187-303a-c355-4bbc261ab79d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:30edd09f-3d6d-71b5-5f11-fedd32b6913f",
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
  "slug": "thetaphi-poly-exp-integrableon--6e77d0272ffdfbaa1bf75783",
  "source": {
    "blob": "dcddeda2e95edf0612a7ebb976e81ecf5223235a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 53,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variant9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e77d0272ffdfbaa1bf757839807a0cf8aa2f05a63f26d1e749066a35f3ef336",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variant9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30edd09f-3d6d-71b5-5f11-fedd32b6913f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–78.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variant9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171Moments/Variant9eb008da14cdaff8629f6fa2bbb77b7847863602e08bd62efbcfae88d50b5171.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dcddeda2e95edf0612a7ebb976e81ecf5223235a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
