# partialTraj_map_frestrictLe₂_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f24d4c905deecfb1b3a50c3d52d112a75e5492d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba373ad5-e194-7e38-4fbb-7db83e6ae462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac07d966-c2e3-8da9-24ab-9dfe1aa654b6",
  "kind": "lemma",
  "lexical_name": "partialTraj_map_frestrictLe₂_apply",
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
  "slug": "partialtraj-map-frestrictle-apply--2f890357da38af200a0d0cdd",
  "source": {
    "blob": "2f24d4c905deecfb1b3a50c3d52d112a75e5492d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 279,
    "path": "GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f890357da38af200a0d0cdd6bb0acd3e360f83da8c404b40666b96561ddbb00",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac07d966-c2e3-8da9-24ab-9dfe1aa654b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma partialTraj_map_frestrictLe₂_apply (x₀ : Π i : Iic a, X i) (hbc : b ≤ c) :
    (partialTraj κ a c x₀).map (frestrictLe₂ hbc) = partialTraj κ a b x₀ := by
  rw [← map_apply _ (by fun_prop), partialTraj_map_frestrictLe₂]

/-- Same as `partialTraj_comp_partialTraj` but only assuming `a ≤ b`. It requires Markov kernels. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PartialTraj/Variant4beb13c603d928ade7db05b8c7ae7aac8eb9c5410bb46b8a8d4273614b5af44a.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f24d4c905deecfb1b3a50c3d52d112a75e5492d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
