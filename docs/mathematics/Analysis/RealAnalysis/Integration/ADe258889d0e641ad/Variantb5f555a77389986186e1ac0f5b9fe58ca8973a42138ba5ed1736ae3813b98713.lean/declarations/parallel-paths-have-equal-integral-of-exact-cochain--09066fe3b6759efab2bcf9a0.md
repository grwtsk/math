# parallel_paths_have_equal_integral_of_exact_cochain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70c9463fba1221c303bba692877fbd2465ae8230",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 14,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5f555a77389986186e1ac0f5b9fe58ca8973a42138ba5ed1736ae3813b98713.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0cf999ba-5e35-f7d8-b40d-265a3fe77d22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6722b854-b5d6-f995-3f28-f925aa14e7c3",
  "kind": "theorem",
  "lexical_name": "parallel_paths_have_equal_integral_of_exact_cochain",
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
  "slug": "parallel-paths-have-equal-integral-of-exact-cochain--09066fe3b6759efab2bcf9a0",
  "source": {
    "blob": "70c9463fba1221c303bba692877fbd2465ae8230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 14,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ADe258889d0e641ad/Variantb5f555a77389986186e1ac0f5b9fe58ca8973a42138ba5ed1736ae3813b98713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09066fe3b6759efab2bcf9a050c208bd5fee8e3b39abe89b0750a11c961f6153",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ADe258889d0e641ad/Variantb5f555a77389986186e1ac0f5b9fe58ca8973a42138ba5ed1736ae3813b98713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6722b854-b5d6-f995-3f28-f925aa14e7c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parallel_paths_have_equal_integral_of_exact_cochain
    (potential : C0) (left right : EventPath)
    (leftCertificate : ExactPathCertificate potential left)
    (rightCertificate : ExactPathCertificate potential right)
    (sameSource : left.source = right.source)
    (sameTarget : left.target = right.target) : left.integral = right.integral := by
  rw [leftCertificate.exactIntegral, rightCertificate.exactIntegral,
    sameSource, sameTarget]

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ADe258889d0e641ad/Variantb5f555a77389986186e1ac0f5b9fe58ca8973a42138ba5ed1736ae3813b98713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ADe258889d0e641ad/Variantb5f555a77389986186e1ac0f5b9fe58ca8973a42138ba5ed1736ae3813b98713.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c9463fba1221c303bba692877fbd2465ae8230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
