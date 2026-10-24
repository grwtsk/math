# IsClosed.isGreatest_csSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f891c94-5768-5515-be81-8becf7a73a98",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3eb47e9-0e8e-110e-d18b-dc2f3cbbc5e7",
  "kind": "theorem",
  "lexical_name": "IsClosed.isGreatest_csSup",
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
  "slug": "isclosed-isgreatest-cssup--6cc9e0dbffb94210c8a5c6c5",
  "source": {
    "blob": "5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6cc9e0dbffb94210c8a5c6c532523a70ae1619132c6ad4000ecb9be152e7a10a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3eb47e9-0e8e-110e-d18b-dc2f3cbbc5e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsClosed.isGreatest_csSup {s : Set α} (hc : IsClosed s) (hs : s.Nonempty) (B : BddAbove s) :
    IsGreatest s (sSup s) :=
  IsClosed.isLeast_csInf (α := αᵒᵈ) hc hs B

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monotone/Variant7561451f8155569d69a0ab36a7abb49d8b6421fc1178dab51c04b2e5e2521cf0.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a5f621ebb6db68c60132d8a67ff1e1ef187f1c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
