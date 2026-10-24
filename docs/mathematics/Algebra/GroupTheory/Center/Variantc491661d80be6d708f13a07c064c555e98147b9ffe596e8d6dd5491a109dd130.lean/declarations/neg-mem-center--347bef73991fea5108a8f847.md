# neg_mem_center

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "efaa0302a65ed9b4db4ac8ff491078f7db7b6f83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b9ee36c-6ac1-fc60-9b05-2182bff65e97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dc94615-1ff6-eda8-0336-51e932294507",
  "kind": "theorem",
  "lexical_name": "neg_mem_center",
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
  "slug": "neg-mem-center--347bef73991fea5108a8f847",
  "source": {
    "blob": "efaa0302a65ed9b4db4ac8ff491078f7db7b6f83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 78,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:347bef73991fea5108a8f847c57130d455dd66de9214996407d4a7c024524763",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dc94615-1ff6-eda8-0336-51e932294507`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_mem_center [NonUnitalNonAssocRing M] {a : M} (ha : a ∈ Set.center M) :
    -a ∈ Set.center M where
  comm _ := by rw [← neg_mul_comm, ← ha.comm, neg_mul_comm]
  left_assoc _ _ := by rw [neg_mul, ha.left_assoc, neg_mul, neg_mul]
  mid_assoc _ _ := by rw [← neg_mul_comm, ha.mid_assoc, neg_mul_comm, neg_mul]
  right_assoc _ _ := by rw [mul_neg, ha.right_assoc, mul_neg, mul_neg]

end Set
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variantc491661d80be6d708f13a07c064c555e98147b9ffe596e8d6dd5491a109dd130.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efaa0302a65ed9b4db4ac8ff491078f7db7b6f83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
