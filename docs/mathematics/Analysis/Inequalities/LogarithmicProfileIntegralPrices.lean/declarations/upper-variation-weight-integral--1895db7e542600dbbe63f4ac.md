# upper_variation_weight_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9bce1c5-66b9-4a6b-94fc-cb56bbf5335c",
  "kind": "theorem",
  "lexical_name": "upper_variation_weight_integral",
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
  "slug": "upper-variation-weight-integral--1895db7e542600dbbe63f4ac",
  "source": {
    "blob": "962017c6a7b76278922085084985d6444a906af2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 25,
    "path": "GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1895db7e542600dbbe63f4ac488109a364406004188e475a03df8204f12b99b2",
  "verification": {
    "reference": "docs/verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9bce1c5-66b9-4a6b-94fc-cb56bbf5335c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_variation_weight_integral (B D : ℝ) :
    IntegrableOn (fun x : ℝ ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) (Ioi 1) ∧
    (∫ x in Ioi (1 : ℝ), (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) = 4 * B + 4 * D := by
  obtain ⟨reciprocalL1, reciprocalValue⟩ := LogarithmicProfileWeights.reciprocal_sqrt_upper_weight
  obtain ⟨logarithmicL1, logarithmicValue⟩ :=
    LogarithmicProfileWeights.logarithmic_sqrt_upper_weight
  have split : (fun x : ℝ ↦ (1 + Real.log x / 2) * B / (x * Real.sqrt x) +
      Real.log x * D / (x * Real.sqrt x)) =
      fun x : ℝ ↦ B * (1 / (x * Real.sqrt x)) +
        (B / 2 + D) * (Real.log x / (x * Real.sqrt x)) := by
    funext x
    simp only [div_eq_mul_inv]
    ring
  rw [split]
  refine ⟨(reciprocalL1.const_mul B).add (logarithmicL1.const_mul (B / 2 + D)), ?_⟩
  rw [integral_add (reciprocalL1.const_mul B) (logarithmicL1.const_mul (B / 2 + D)),
    integral_const_mul, integral_const_mul, reciprocalValue, logarithmicValue]
  ring

/-- Every full upper finite interval has the complete derivative variation price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inequalities/LogarithmicProfileIntegralPrices.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `962017c6a7b76278922085084985d6444a906af2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
