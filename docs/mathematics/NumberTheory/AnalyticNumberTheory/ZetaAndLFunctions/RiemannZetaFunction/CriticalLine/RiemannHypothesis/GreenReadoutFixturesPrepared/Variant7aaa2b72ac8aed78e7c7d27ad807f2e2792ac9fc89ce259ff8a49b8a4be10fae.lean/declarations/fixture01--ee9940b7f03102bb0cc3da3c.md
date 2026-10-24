# fixture01

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "486a7a0146872e35563d5ab68b1dcc63a5ec58d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7aaa2b72ac8aed78e7c7d27ad807f2e2792ac9fc89ce259ff8a49b8a4be10fae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bedc6018-f1c2-7929-9dd3-6c52cd26fa20",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b36fa2ac-c5ed-f433-9bf5-f9d95c990ea5",
  "kind": "theorem",
  "lexical_name": "fixture01",
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
  "slug": "fixture01--ee9940b7f03102bb0cc3da3c",
  "source": {
    "blob": "486a7a0146872e35563d5ab68b1dcc63a5ec58d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 13,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Variant7aaa2b72ac8aed78e7c7d27ad807f2e2792ac9fc89ce259ff8a49b8a4be10fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9940b7f03102bb0cc3da3c8d12df5fdbdde771f01dbb07548ced2c55959863",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Variant7aaa2b72ac8aed78e7c7d27ad807f2e2792ac9fc89ce259ff8a49b8a4be10fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b36fa2ac-c5ed-f433-9bf5-f9d95c990ea5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture01 {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A,
      criticalDirichletTent (2 * A) u 0 * deriv (deriv (pairedTailTest A)) u) = 0 := by
  have hi := pairedTailTest_integrated_green_readout hA
    (show (0 : ℝ) ∈ Icc 0 (2 * A) from ⟨le_rfl, by linarith⟩)
  simpa only [pairedTailTest_at_zero hA, neg_zero] using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Variant7aaa2b72ac8aed78e7c7d27ad807f2e2792ac9fc89ce259ff8a49b8a4be10fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GreenReadoutFixturesPrepared/Variant7aaa2b72ac8aed78e7c7d27ad807f2e2792ac9fc89ce259ff8a49b8a4be10fae.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `486a7a0146872e35563d5ab68b1dcc63a5ec58d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
