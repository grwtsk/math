# FP.singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 255,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:133345d3-4889-95f0-b436-3414112f8a05",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9badb5a1-a04b-b3c4-86f7-f2e5d9bf327a",
  "kind": "theorem",
  "lexical_name": "FP.singleton",
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
  "slug": "fp-singleton--322cbc41005c2835ffcb0d74",
  "source": {
    "blob": "f6bb1c6db54ca2124297ce7094ea64406de55ecf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 255,
    "path": "GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:322cbc41005c2835ffcb0d74aa13f0b6f585fdfb77ab24d2bd4f97ca778641e4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9badb5a1-a04b-b3c4-86f7-f2e5d9bf327a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FP.singleton {M} [Semigroup M] (a : Stream' M) (i : ℕ) : a.nth i ∈ FP a := by
  induction' i with i ih generalizing a
  · apply FP.head
  · apply FP.tail
    apply ih
set_option linter.uppercaseLean3 false in
#align hindman.FP.singleton Hindman.FP.singleton
set_option linter.uppercaseLean3 false in
#align hindman.FS.singleton Hindman.FS.singleton

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hindman/Variant20acaa73a2eb32c8831290515fc6cf8061a4bafc9824cd664aaa3f7f60e92024.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bb1c6db54ca2124297ce7094ea64406de55ecf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
