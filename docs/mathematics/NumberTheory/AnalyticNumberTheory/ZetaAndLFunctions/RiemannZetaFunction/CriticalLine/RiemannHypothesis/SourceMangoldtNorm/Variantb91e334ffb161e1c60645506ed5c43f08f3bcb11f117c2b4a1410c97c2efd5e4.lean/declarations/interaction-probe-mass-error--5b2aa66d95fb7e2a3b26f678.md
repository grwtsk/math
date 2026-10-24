# interaction_probe_mass_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1076cbfd3b732161545528bc2691f8339d9b9d39",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b91e334ffb161e1c60645506ed5c43f08f3bcb11f117c2b4a1410c97c2efd5e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:927bfab0-40bf-dee1-5f5b-2d3a3f548afb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1e189fba-3e1f-0503-b832-e8f722cc0dce",
  "kind": "theorem",
  "lexical_name": "interaction_probe_mass_error",
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
  "slug": "interaction-probe-mass-error--5b2aa66d95fb7e2a3b26f678",
  "source": {
    "blob": "1076cbfd3b732161545528bc2691f8339d9b9d39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variantb91e334ffb161e1c60645506ed5c43f08f3bcb11f117c2b4a1410c97c2efd5e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b2aa66d95fb7e2a3b26f67809b6a9efcf85cb3aae34dd6380e3ba14e98e00c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variantb91e334ffb161e1c60645506ed5c43f08f3bcb11f117c2b4a1410c97c2efd5e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e189fba-3e1f-0503-b832-e8f722cc0dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interaction_probe_mass_error (A : ℝ) {R : ℝ} (hR : 1 ≤ R) :
    |(⟪originalSourceState R, mangoldtInteraction A (originalSourceState R)⟫_ℂ).re -
      mangoldtBaseline A| ≤ 5 * interactionShiftMass A / R := by
  rw [interaction_probe_eq_sum A (by linarith), mangoldtBaseline,
    finiteMangoldtBaseline, ← Finset.sum_sub_distrib]
  calc
    _ ≤ ∑ n ∈ primePowerInventory (2 * A),
        |mangoldtCoefficient n * sourceCorrelation explicitSecondDerivative R (Real.log n) -
          mangoldtCoefficient n| := Finset.abs_sum_le_sum_abs _ _
    _ = ∑ n ∈ primePowerInventory (2 * A), mangoldtCoefficient n *
        |sourceCorrelation explicitSecondDerivative R (Real.log n) - 1| := by
      apply Finset.sum_congr rfl
      intro n _
      rw [show mangoldtCoefficient n *
        sourceCorrelation explicitSecondDerivative R (Real.log n) - mangoldtCoefficient n =
        mangoldtCoefficient n *
          (sourceCorrelation explicitSecondDerivative R (Real.log n) - 1) by ring]
      rw [abs_mul, abs_of_nonneg (mangoldtCoefficient_nonneg n)]
    _ ≤ ∑ n ∈ primePowerInventory (2 * A),
        mangoldtCoefficient n * (5 * |Real.log n| / R) := by
      exact Finset.sum_le_sum fun n _ => mul_le_mul_of_nonneg_left
        (sourceCorrelation_sub_one_abs_le hR _) (mangoldtCoefficient_nonneg n)
    _ = _ := by
      unfold interactionShiftMass
      rw [Finset.mul_sum, Finset.sum_div]
      apply Finset.sum_congr rfl
      intro n _
      ring

/-- A finite triangle estimate uses the actual coefficient mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variantb91e334ffb161e1c60645506ed5c43f08f3bcb11f117c2b4a1410c97c2efd5e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMangoldtNorm/Variantb91e334ffb161e1c60645506ed5c43f08f3bcb11f117c2b4a1410c97c2efd5e4.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1076cbfd3b732161545528bc2691f8339d9b9d39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
