# reducedOffAxisAllowance_le_at_radius

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9da97f5-2e0a-02b9-dfda-0ee79b6b1b1a",
  "kind": "theorem",
  "lexical_name": "reducedOffAxisAllowance_le_at_radius",
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
  "slug": "reducedoffaxisallowance-le-at-radius--cee6f5ef71f4664fee888ecf",
  "source": {
    "blob": "d55b23c3a509d467b5d8200d86b33960c5d27db2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee6f5ef71f4664fee888ecf9a19a7bc604d9dfcc619060bf47964651877102d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9da97f5-2e0a-02b9-dfda-0ee79b6b1b1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reducedOffAxisAllowance_le_at_radius {A0 S A : ℝ}
    (hA0 : 1 ≤ A0) (hS : 200 ≤ S) (hA : S ≤ A) :
    reducedOffAxisAllowance A0 A ≤ reducedOffAxisAllowance A0 S := by
  have hSp : 0 < S := by linarith
  have hAp : 0 < A := by linarith
  have hc : 0 ≤ actualZeroTailWeightConstant := by
    unfold actualZeroTailWeightConstant
    positivity
  unfold reducedOffAxisAllowance actualReducedZeroEnvelope
  gcongr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceReducedOffAxisEstimateConsumer/Variantc28f933a06bb60db84164441d04d17d6d91f7068134cf548952567f356c3e420.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55b23c3a509d467b5d8200d86b33960c5d27db2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
