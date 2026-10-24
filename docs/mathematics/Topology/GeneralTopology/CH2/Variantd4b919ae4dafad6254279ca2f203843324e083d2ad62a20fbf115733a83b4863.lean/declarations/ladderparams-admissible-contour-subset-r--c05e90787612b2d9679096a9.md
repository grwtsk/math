# LadderParams.admissible_contour_subset_R

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "abb4d988df589a463537396a6ba3fbd5ac54f13b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09759835-476a-d517-c25e-52092a0a95ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13574c52-c890-c5b4-c9eb-24e221a30f73",
  "kind": "lemma",
  "lexical_name": "LadderParams.admissible_contour_subset_R",
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
  "slug": "ladderparams-admissible-contour-subset-r--c05e90787612b2d9679096a9",
  "source": {
    "blob": "abb4d988df589a463537396a6ba3fbd5ac54f13b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05e90787612b2d9679096a98036e9346df4c59bec0c720af5d7f73c3fac7b1a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13574c52-c890-c5b4-c9eb-24e221a30f73`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma LadderParams.admissible_contour_subset_R (l : LadderParams) :
    l.admissible_contour ⊆ l.R :=
  fun _ hz ↦ l.R4_subset_R (l.admissible_contour_subset_R4 hz)

/-- The boundary of the rectangle is part of the ladder (the right edge is the `σ 0 = 1` rung). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CH2/Variantd4b919ae4dafad6254279ca2f203843324e083d2ad62a20fbf115733a83b4863.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abb4d988df589a463537396a6ba3fbd5ac54f13b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
