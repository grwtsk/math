# actualXiTerminalFraction_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24f6f097-e987-24ca-be9e-e4b963f8db4a",
  "kind": "theorem",
  "lexical_name": "actualXiTerminalFraction_tendsto_zero",
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
  "slug": "actualxiterminalfraction-tendsto-zero--3db5f5a9c2beae40cf6da062",
  "source": {
    "blob": "8bc5172b6c7cb8f48581c294e8d8d0f19b27e5ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudget/Varianta77ac17f031a0620d615d74c7d90cf0c6a27b7e928b39d02069bdc6243f4c564.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3db5f5a9c2beae40cf6da06242955300dc34b3392b981bd8abcd9740a61b35d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudget/Varianta77ac17f031a0620d615d74c7d90cf0c6a27b7e928b39d02069bdc6243f4c564.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24f6f097-e987-24ca-be9e-e4b963f8db4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiTerminalFraction_tendsto_zero :
    Tendsto actualXiTerminalFraction atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun T : ℝ => Real.exp (-T / 2)) atTop (𝓝 (0 : ℝ)) := by
    have hd : Tendsto (fun T : ℝ => T / 2) atTop atTop := by
      simpa only [id_eq] using
        (tendsto_id.atTop_div_const (by norm_num : (0 : ℝ) < 2))
    have hh := Real.tendsto_exp_neg_atTop_nhds_zero.comp hd
    change Tendsto (fun T : ℝ => Real.exp (-(T / 2))) atTop (𝓝 (0 : ℝ)) at hh
    simpa only [neg_div] using hh
  have hb := he.const_mul (2 * Real.sqrt 2 * actualXiExponentialEnvelopeConstant)
  simp only [mul_zero] at hb
  apply squeeze_zero' _ _ hb
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_nonneg hT
  · filter_upwards [eventually_ge_atTop (Real.log (7 : ℝ))] with T hT
    exact actualXiTerminalFraction_le_exponential hT

/-- Complete integer cells recover the actual mean with only proved analytic finite errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudget/Varianta77ac17f031a0620d615d74c7d90cf0c6a27b7e928b39d02069bdc6243f4c564.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualXiTerminalFractionBudget/Varianta77ac17f031a0620d615d74c7d90cf0c6a27b7e928b39d02069bdc6243f4c564.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8bc5172b6c7cb8f48581c294e8d8d0f19b27e5ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
