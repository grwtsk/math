# Dense.exists_le'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 528,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:40ef1b26-2666-75d4-6124-ae8e99490e8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a363b85-6424-1660-36a1-58a7578a0bfe",
  "kind": "theorem",
  "lexical_name": "Dense.exists_le'",
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
  "slug": "dense-exists-le--ee9a08aaa3ceaa84dea596cf",
  "source": {
    "blob": "04fbe5b1fddf1f2206d288243edfadae02fc7931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 528,
    "path": "GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee9a08aaa3ceaa84dea596cf1b26c6b16af46033779c08a20495a109bb9ace64",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a363b85-6424-1660-36a1-58a7578a0bfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Dense.exists_le' {s : Set α} (hs : Dense s) (hbot : ∀ x, IsBot x → x ∈ s) (x : α) :
    ∃ y ∈ s, y ≤ x :=
  hs.orderDual.exists_ge' hbot x

/-!
### Right neighborhoods on a `ClosedIciTopology`

Limits to the right of real functions are defined in terms of neighborhoods to the right,
either open or closed, i.e., members of `𝓝[>] a` and `𝓝[≥] a`.
Here we prove that all right-neighborhoods of a point are equal,
and we prove other useful characterizations which require the stronger hypothesis `OrderTopology α`
in another file.
-/

/-!
#### Point excluded
-/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OrderClosed/Varianta74075dd4e008d908ca5e8dac6bd6749bee9504eb7054358bbb99f2d509b9f7c.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04fbe5b1fddf1f2206d288243edfadae02fc7931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
