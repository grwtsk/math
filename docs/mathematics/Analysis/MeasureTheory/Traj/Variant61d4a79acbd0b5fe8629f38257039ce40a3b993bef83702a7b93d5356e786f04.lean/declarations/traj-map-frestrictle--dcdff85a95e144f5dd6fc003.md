# traj_map_frestrictLe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:901b9bc3-e374-11df-2147-6a9390086b31",
  "kind": "lemma",
  "lexical_name": "traj_map_frestrictLe",
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
  "slug": "traj-map-frestrictle--dcdff85a95e144f5dd6fc003",
  "source": {
    "blob": "aecab82187dd1a96d6b92c32351b800965fcd31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 528,
    "path": "GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dcdff85a95e144f5dd6fc003002052972307c61efad105fef924f197668cb7ed",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:901b9bc3-e374-11df-2147-6a9390086b31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma traj_map_frestrictLe (a b : ℕ) : (traj κ a).map (frestrictLe b) = partialTraj κ a b := by
  ext x
  rw [map_apply, traj_apply, frestrictLe, isProjectiveLimit_trajFun, inducedFamily_Iic]
  fun_prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Traj/Variant61d4a79acbd0b5fe8629f38257039ce40a3b993bef83702a7b93d5356e786f04.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aecab82187dd1a96d6b92c32351b800965fcd31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
