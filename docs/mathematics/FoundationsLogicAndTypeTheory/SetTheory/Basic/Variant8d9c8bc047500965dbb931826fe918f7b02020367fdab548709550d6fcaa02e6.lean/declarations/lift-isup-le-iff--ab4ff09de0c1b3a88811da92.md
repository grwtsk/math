# lift_iSup_le_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "402175fd9fd0a65032953aea29302d1f2f0b083c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2f68fcc7-ef57-ffac-cb2f-9ca4154834c2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2d43bf7-6269-8799-a954-63eb11c444c0",
  "kind": "theorem",
  "lexical_name": "lift_iSup_le_iff",
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
  "slug": "lift-isup-le-iff--ab4ff09de0c1b3a88811da92",
  "source": {
    "blob": "402175fd9fd0a65032953aea29302d1f2f0b083c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1218,
    "line": 1207,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab4ff09de0c1b3a88811da92e4ffda7de807f3f88b085eccf9eca768918f3075",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2d43bf7-6269-8799-a954-63eb11c444c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1207–1218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_iSup_le_iff {ι : Type v} {f : ι → Cardinal.{w}} (hf : BddAbove (range f))
    {t : Cardinal} : lift.{u} (iSup f) ≤ t ↔ ∀ i, lift.{u} (f i) ≤ t := by
  rw [lift_iSup hf]
  exact ciSup_le_iff' (bddAbove_range_comp.{_,_,u} hf _)
#align cardinal.lift_supr_le_iff Cardinal.lift_iSup_le_iff

universe v' w'

/-- To prove an inequality between the lifts to a common universe of two different supremums,
it suffices to show that the lift of each cardinal from the smaller supremum
if bounded by the lift of some cardinal from the larger supremum.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant8d9c8bc047500965dbb931826fe918f7b02020367fdab548709550d6fcaa02e6.lean#L1207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402175fd9fd0a65032953aea29302d1f2f0b083c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
