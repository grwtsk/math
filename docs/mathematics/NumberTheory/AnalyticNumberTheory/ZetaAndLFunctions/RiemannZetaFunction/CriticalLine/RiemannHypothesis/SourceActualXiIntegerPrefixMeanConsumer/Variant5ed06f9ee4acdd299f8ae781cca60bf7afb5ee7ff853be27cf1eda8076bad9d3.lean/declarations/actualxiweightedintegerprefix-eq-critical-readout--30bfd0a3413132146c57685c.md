# actualXiWeightedIntegerPrefix_eq_critical_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96e1724a-e068-31d2-7ef0-2ee7b25ad1ee",
  "kind": "theorem",
  "lexical_name": "actualXiWeightedIntegerPrefix_eq_critical_readout",
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
  "slug": "actualxiweightedintegerprefix-eq-critical-readout--30bfd0a3413132146c57685c",
  "source": {
    "blob": "f393b43bcc0ed31ea5382ddd47a41e9f69a70687",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant5ed06f9ee4acdd299f8ae781cca60bf7afb5ee7ff853be27cf1eda8076bad9d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30bfd0a3413132146c57685cda75838169e6aa4168b5f4c875f6f4ed2eb27f4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant5ed06f9ee4acdd299f8ae781cca60bf7afb5ee7ff853be27cf1eda8076bad9d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96e1724a-e068-31d2-7ef0-2ee7b25ad1ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiWeightedIntegerPrefix_eq_critical_readout (N : ℕ) :
    actualXiWeightedIntegerPrefix N =
      ∑ n ∈ Finset.Icc 7 (N - 1), |actualXiIntegerCriticalReadout n| *
        Real.log (((n + 1 : ℕ) : ℝ) / (n : ℝ)) := by
  unfold actualXiWeightedIntegerPrefix
  apply Finset.sum_congr rfl
  intro n hn
  rw [actualXiIntegerCriticalReadout_eq_primitive (Finset.mem_Icc.mp hn).1]

/-- Every real terminal time uses its true moving floor and pays the final fraction first. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant5ed06f9ee4acdd299f8ae781cca60bf7afb5ee7ff853be27cf1eda8076bad9d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiIntegerPrefixMeanConsumer/Variant5ed06f9ee4acdd299f8ae781cca60bf7afb5ee7ff853be27cf1eda8076bad9d3.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f393b43bcc0ed31ea5382ddd47a41e9f69a70687` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
