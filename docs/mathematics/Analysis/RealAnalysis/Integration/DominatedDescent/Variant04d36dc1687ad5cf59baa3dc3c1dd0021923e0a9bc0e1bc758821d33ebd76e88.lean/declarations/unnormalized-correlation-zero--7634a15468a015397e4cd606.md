# unnormalized_correlation_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 361,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13b7d4b5-0e70-6c37-9692-d0dea191086a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:461e1cf5-4ee0-080e-cc48-02301d726ec5",
  "kind": "theorem",
  "lexical_name": "unnormalized_correlation_zero",
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
  "slug": "unnormalized-correlation-zero--7634a15468a015397e4cd606",
  "source": {
    "blob": "24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 361,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7634a15468a015397e4cd606bfa12c6244349bcefc032c5e221b24c69bdbe19f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:461e1cf5-4ee0-080e-cc48-02301d726ec5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem unnormalized_correlation_zero
    (A t : ℝ) (hA : 1 ≤ A) (ht : 2 * A ≤ |t|) :
    (∫ x, actualTest A x * actualTest A (x - t)) = 0 := by
  rw [unnormalized_correlation_eq A t hA,
    CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
      A t (by linarith) ht,
    mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedDescent/Variant04d36dc1687ad5cf59baa3dc3c1dd0021923e0a9bc0e1bc758821d33ebd76e88.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24a9a6b1300992ad8ef8a7f2d3688963f8c38ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
