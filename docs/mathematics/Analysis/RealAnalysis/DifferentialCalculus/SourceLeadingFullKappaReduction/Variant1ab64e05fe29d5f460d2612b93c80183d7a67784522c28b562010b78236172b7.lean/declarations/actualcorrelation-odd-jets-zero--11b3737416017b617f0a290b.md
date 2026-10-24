# actualCorrelation_odd_jets_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:124a11c2-40a4-db82-eb7c-90b90151f4a7",
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
  "slug": "actualcorrelation-odd-jets-zero--11b3737416017b617f0a290b",
  "source": {
    "blob": "168fcab3b0924838156615427fe01d44899d0ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 56,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11b3737416017b617f0a290b0b5c09673277ca5bc64423963d07f67d7b09ba48",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:124a11c2-40a4-db82-eb7c-90b90151f4a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–77.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant1ab64e05fe29d5f460d2612b93c80183d7a67784522c28b562010b78236172b7.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `168fcab3b0924838156615427fe01d44899d0ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
