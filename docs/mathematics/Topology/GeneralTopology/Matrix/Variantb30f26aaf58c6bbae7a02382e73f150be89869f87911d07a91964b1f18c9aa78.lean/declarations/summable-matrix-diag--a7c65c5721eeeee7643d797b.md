# Summable.matrix_diag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 340,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fd33d44f-3055-02cf-1557-89643f2c8017",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5315bae3-d1e5-e1c5-fd1f-f0bb7e3147bf",
  "kind": "theorem",
  "lexical_name": "Summable.matrix_diag",
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
  "slug": "summable-matrix-diag--a7c65c5721eeeee7643d797b",
  "source": {
    "blob": "8de9b83f32018187564f5a850e7bc2bfd10cb7dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 340,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7c65c5721eeeee7643d797b51412d650032154fc1cff0112b706b9bfbd4da9d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5315bae3-d1e5-e1c5-fd1f-f0bb7e3147bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Summable.matrix_diag {f : X → Matrix n n R} (hf : Summable f) :
    Summable fun x => diag (f x) :=
  hf.hasSum.matrix_diag.summable

section BlockMatrices

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variantb30f26aaf58c6bbae7a02382e73f150be89869f87911d07a91964b1f18c9aa78.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8de9b83f32018187564f5a850e7bc2bfd10cb7dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
