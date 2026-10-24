# precoverage_le_qcPrecoverage_of_isOpenMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91435d8ad3e3f80a548e5df18fbb81c266400e42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:206b3ddb-47b9-3706-3222-d460b4fff60a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d0ff28f-f475-fbe4-28ac-129d3b0d12a6",
  "kind": "lemma",
  "lexical_name": "precoverage_le_qcPrecoverage_of_isOpenMap",
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
  "slug": "precoverage-le-qcprecoverage-of-isopenmap--5936044c08878f3e7fc30ca3",
  "source": {
    "blob": "91435d8ad3e3f80a548e5df18fbb81c266400e42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 87,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5936044c08878f3e7fc30ca3fdcf316001adeeee8dd7e3d8e045eb2e48b0730a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d0ff28f-f475-fbe4-28ac-129d3b0d12a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma precoverage_le_qcPrecoverage_of_isOpenMap {P : MorphismProperty Scheme.{u}}
    (hP : P ≤ fun _ _ f ↦ IsOpenMap f.base) :
    precoverage P ≤ qcPrecoverage := by
  refine Precoverage.le_of_zeroHypercover fun X E ↦ ?_
  rw [presieve₀_mem_qcPrecoverage_iff]
  exact .of_isOpenMap fun i ↦ hP _ (Scheme.Cover.map_prop E i)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variant0491edc10fa44909507bc51ded27dfcd063ffa7940acdac6bdae294170d8ca07.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91435d8ad3e3f80a548e5df18fbb81c266400e42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
