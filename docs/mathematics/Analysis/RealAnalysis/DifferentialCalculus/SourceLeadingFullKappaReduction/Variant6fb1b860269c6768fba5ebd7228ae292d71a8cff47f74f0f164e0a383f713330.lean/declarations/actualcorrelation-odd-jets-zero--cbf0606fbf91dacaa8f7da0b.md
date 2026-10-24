# actualCorrelation_odd_jets_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ea95dac-d05d-90c5-9a8e-de1033757e50",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_odd_jets_zero",
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
  "slug": "actualcorrelation-odd-jets-zero--cbf0606fbf91dacaa8f7da0b",
  "source": {
    "blob": "f7da9ff38c347e360f5c7f0b933314e984a9600f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 48,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbf0606fbf91dacaa8f7da0b02cfd2ad89d8753bc7c17a8a6728c0bb7a425101",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ea95dac-d05d-90c5-9a8e-de1033757e50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_odd_jets_zero {A : ℝ} (hA : 0 < A) :
    deriv (sourceCorrelation explicitSecondDerivative A) 0 = 0 ∧
    deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) 0 = 0 := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hc := actual_correlation_contDiff_four A hA
  have hd0 : Differentiable ℝ C := hc.differentiable (by norm_num)
  have hd1 : Differentiable ℝ (deriv C) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 1 (by norm_num)
  have hd2 : Differentiable ℝ (deriv (deriv C)) := by
    simpa only [iteratedDeriv_succ, iteratedDeriv_zero] using
      hc.differentiable_iteratedDeriv 2 (by norm_num)
  have he0 : ∀ t, C (-t) = C t := sourceCorrelation_even A
  have he1 := deriv_odd_of_even hd0 he0
  have he2 := deriv_even_of_odd hd1 he1
  have he3 := deriv_odd_of_even hd2 he2
  have hz1 := he1 0
  have hz3 := he3 0
  simp only [neg_zero] at hz1 hz3
  constructor <;> linarith

/-- Finite actual coefficient comparison improves the energy on the relevant scale range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7da9ff38c347e360f5c7f0b933314e984a9600f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
