# absoluteCriticalWeightMass_exponential_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e37d6a4a-5762-10a9-8bb6-0f5eda3b5a5e",
  "kind": "theorem",
  "lexical_name": "absoluteCriticalWeightMass_exponential_lower",
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
  "slug": "absolutecriticalweightmass-exponential-lower--65adf719f81ff13a019a761e",
  "source": {
    "blob": "02be907e5d27b6df5795393f1f2f59a0601e9835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt03/Variant53568dea700bb7cff18ef9383c819319b15510c8cad892ab492005e286ae0abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65adf719f81ff13a019a761ed90713eec5c9bd98cd04d504b170cf929a0ad75b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt03/Variant53568dea700bb7cff18ef9383c819319b15510c8cad892ab492005e286ae0abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e37d6a4a-5762-10a9-8bb6-0f5eda3b5a5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absoluteCriticalWeightMass_exponential_lower {A : ℝ} (hA : 40 ≤ A) :
    (5 / 8 : ℝ) * (Real.exp (A / 80) - 1) ≤ absoluteCriticalWeightMass A := by
  have hA1 : 1 ≤ A := by linarith
  have hm : (∫ t in 0..A / 40, |baselineLogKernel A t|) ≤
      absoluteCriticalWeightMass A := by
    rw [intervalIntegral.integral_of_le (by linarith : (0 : ℝ) ≤ A / 40)]
    exact setIntegral_mono_set (absoluteCriticalWeightMass_integrable hA1)
      (Filter.Eventually.of_forall (fun _ => abs_nonneg _))
      (Filter.Eventually.of_forall (fun t ht => ht.1))
  exact (absoluteWeight_prefix_lower hA).trans hm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt03/Variant53568dea700bb7cff18ef9383c819319b15510c8cad892ab492005e286ae0abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalWeightMassObstructionAttempt03/Variant53568dea700bb7cff18ef9383c819319b15510c8cad892ab492005e286ae0abc.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02be907e5d27b6df5795393f1f2f59a0601e9835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
