# _root_.Subalgebra.topologicalClosure_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d48dcdf88ffc745339905992a361fb963571c79f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07e38c43-855a-f35a-39e0-204f8cde30fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2020c60-b16a-2e2d-410f-0c9bb56d98fa",
  "kind": "theorem",
  "lexical_name": "_root_.Subalgebra.topologicalClosure_coe",
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
  "slug": "root-subalgebra-topologicalclosure-coe--0b260ca14167d384dd890882",
  "source": {
    "blob": "d48dcdf88ffc745339905992a361fb963571c79f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 242,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b260ca14167d384dd890882cb83c44506848648b96ee4d787b1bf031ffc920c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2020c60-b16a-2e2d-410f-0c9bb56d98fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Subalgebra.topologicalClosure_coe
    (s : Subalgebra R A) :
  (s.topologicalClosure : Set A) = closure ↑s := rfl

/-- Under a dense continuous algebra map, a subalgebra
whose `TopologicalClosure` is `⊤` is sent to another such submodule.
That is, the image of a dense subalgebra under a map with dense range is dense.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variant6485e757e2254beded1fa65927f051a2c61ac5f2f70960a0d09f357e4b66f8f4.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d48dcdf88ffc745339905992a361fb963571c79f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
