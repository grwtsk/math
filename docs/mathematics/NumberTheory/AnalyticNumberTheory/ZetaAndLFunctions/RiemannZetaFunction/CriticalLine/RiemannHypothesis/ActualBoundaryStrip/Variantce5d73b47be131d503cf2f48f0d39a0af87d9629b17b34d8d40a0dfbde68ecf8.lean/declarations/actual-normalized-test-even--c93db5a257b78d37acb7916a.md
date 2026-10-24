# actual_normalized_test_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9d576c0146c0a10b15590ad414b0d10180ece98",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:008cc04d-5be9-d920-c957-fc12bb7f884e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28bd8c67-934b-5f30-b101-19b347041d74",
  "kind": "theorem",
  "lexical_name": "actual_normalized_test_even",
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
  "slug": "actual-normalized-test-even--c93db5a257b78d37acb7916a",
  "source": {
    "blob": "a9d576c0146c0a10b15590ad414b0d10180ece98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c93db5a257b78d37acb7916a154adac048b1d5b7a313d4f25795f9603ac3614c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28bd8c67-934b-5f30-b101-19b347041d74`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_normalized_test_even (A : ℝ) (hA : 0 < A) (x : ℝ) :
    normalizedTest explicitSecondDerivative A (-x) =
      normalizedTest explicitSecondDerivative A x := by
  rw [normalizedTest_eq_indicator A hA]
  have hi : normalizedInterior A (-x) = normalizedInterior A x := by
    unfold normalizedInterior secondInterior bumpInterior
    ring
  by_cases hx : x ∈ Set.Icc (-A) A
  · have hnx : -x ∈ Set.Icc (-A) A := by constructor <;> linarith [hx.1, hx.2]
    rw [Set.indicator_of_mem hx, Set.indicator_of_mem hnx, hi]
  · have hnx : -x ∉ Set.Icc (-A) A := by
      intro h
      apply hx
      constructor <;> linarith [h.1, h.2]
    rw [Set.indicator_of_notMem hx, Set.indicator_of_notMem hnx]

/-- A concrete positive lower bound retains the true edge vanishing order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualBoundaryStrip/Variantce5d73b47be131d503cf2f48f0d39a0af87d9629b17b34d8d40a0dfbde68ecf8.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9d576c0146c0a10b15590ad414b0d10180ece98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
