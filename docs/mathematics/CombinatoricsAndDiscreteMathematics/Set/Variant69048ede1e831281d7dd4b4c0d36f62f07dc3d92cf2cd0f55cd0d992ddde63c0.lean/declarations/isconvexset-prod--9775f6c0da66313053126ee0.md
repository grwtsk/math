# IsConvexSet.prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd7446bdee129cc1faeb97429d1b4af55a52e8b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa9424a-fda0-0dcd-f4a2-ecc05ba13542",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d65ac6e-7399-f203-fc94-23dd8d24bfb8",
  "kind": "lemma",
  "lexical_name": "IsConvexSet.prod",
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
  "slug": "isconvexset-prod--9775f6c0da66313053126ee0",
  "source": {
    "blob": "dd7446bdee129cc1faeb97429d1b4af55a52e8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 165,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9775f6c0da66313053126ee0c7fbf222138bd3df95feb559310fcde258d3c4c9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d65ac6e-7399-f203-fc94-23dd8d24bfb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma IsConvexSet.prod {Y : Type*} [ConvexSpace R Y] {t : Set Y}
    (hs : IsConvexSet R s) (ht : IsConvexSet R t) : IsConvexSet R (s ×ˢ t) := by
  classical
  rintro w hw
  refine ⟨hs ?_, ht ?_⟩
  · grw [StdSimplex.weights_map, mapDomain_support, Finset.coe_image, hw, fst_image_prod_subset]
  · grw [StdSimplex.weights_map, mapDomain_support, Finset.coe_image, hw, snd_image_prod_subset]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Set/Variant69048ede1e831281d7dd4b4c0d36f62f07dc3d92cf2cd0f55cd0d992ddde63c0.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd7446bdee129cc1faeb97429d1b4af55a52e8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
