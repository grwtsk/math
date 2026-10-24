# op_normalizer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2f395ad1538930134f7360c7b21f6a136f1a9d0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf0dff7dc8f81eae5e10abb46f1f10ac8f84cbc5c6a7df256cc77157af00d0e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b5620c39-c051-81a5-523a-1e22b355b748",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea5fcd04-0434-7652-d717-53605bdd73d0",
  "kind": "theorem",
  "lexical_name": "op_normalizer",
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
  "slug": "op-normalizer--332492aa19fbc48ff6215f17",
  "source": {
    "blob": "c2f395ad1538930134f7360c7b21f6a136f1a9d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 117,
    "path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variantcf0dff7dc8f81eae5e10abb46f1f10ac8f84cbc5c6a7df256cc77157af00d0e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:332492aa19fbc48ff6215f17b3b376f7eeb430192d43647aeb86678f7ab1d7ef",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MulOpposite/Variantcf0dff7dc8f81eae5e10abb46f1f10ac8f84cbc5c6a7df256cc77157af00d0e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea5fcd04-0434-7652-d717-53605bdd73d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem op_normalizer (H : Subgroup G) : (normalizer H : Subgroup G).op = normalizer H.op := by
  ext x
  rw [mem_op, mem_normalizer_iff', mem_normalizer_iff']
  simp [iff_comm]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MulOpposite/Variantcf0dff7dc8f81eae5e10abb46f1f10ac8f84cbc5c6a7df256cc77157af00d0e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MulOpposite/Variantcf0dff7dc8f81eae5e10abb46f1f10ac8f84cbc5c6a7df256cc77157af00d0e6.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2f395ad1538930134f7360c7b21f6a136f1a9d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
