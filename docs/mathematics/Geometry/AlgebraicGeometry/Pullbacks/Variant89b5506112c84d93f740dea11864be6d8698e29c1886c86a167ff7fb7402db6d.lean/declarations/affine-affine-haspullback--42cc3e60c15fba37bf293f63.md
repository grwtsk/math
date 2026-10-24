# affine_affine_hasPullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fed0f2b6152def8612c8694efa1ef83a71099cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e8806ce-1849-e518-1e67-b069f15f361a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed2f56be-08c0-7392-ffe0-94f68640ec8c",
  "kind": "theorem",
  "lexical_name": "affine_affine_hasPullback",
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
  "slug": "affine-affine-haspullback--42cc3e60c15fba37bf293f63",
  "source": {
    "blob": "fed0f2b6152def8612c8694efa1ef83a71099cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 466,
    "line": 462,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:42cc3e60c15fba37bf293f6347f2015b83e8a7462696c6340638e5e73f19ae1b",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed2f56be-08c0-7392-ffe0-94f68640ec8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–466.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affine_affine_hasPullback {B C : CommRingCat} {X : Scheme}
    (f : X ⟶ Spec C) (g : Spec B ⟶ Spec C) :
    HasPullback f g :=
  hasPullback_of_cover X.affineCover f g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pullbacks/Variant89b5506112c84d93f740dea11864be6d8698e29c1886c86a167ff7fb7402db6d.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed0f2b6152def8612c8694efa1ef83a71099cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
