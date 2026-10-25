# instCardinalInterFilter_cocardinal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:004361ad1e41ac61a21498dcf53be1cdf91d5568ecc94b4f786a309793639f0b",
  "kind": "instance",
  "lexical_name": "instCardinalInterFilter_cocardinal",
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
  "slug": "instcardinalinterfilter-cocardinal--af2f656c67ed55bd7f3d3bf6",
  "source": {
    "blob": "799e8a80fe7f5a7e30f9a56c20900c18559a779e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:af2f656c67ed55bd7f3d3bf6f0c46b393d440079ec6b6c05574eff85a678cb48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:004361ad1e41ac61a21498dcf53be1cdf91d5568ecc94b4f786a309793639f0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCardinalInterFilter_cocardinal : CardinalInterFilter (cocardinal (α := α) hreg) c where
  cardinal_sInter_mem S hS hSs := by
    rw [mem_cocardinal, Set.compl_sInter]
    apply lt_of_le_of_lt (mk_sUnion_le _)
    apply mul_lt_of_lt hreg.aleph0_le (lt_of_le_of_lt mk_image_le hS)
    apply iSup_lt_of_isRegular hreg <| lt_of_le_of_lt mk_image_le hS
    aesop

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cocardinal/Variant2128caa7bd469863d688311894dbc3fdd9ed66a52f216f8f3aaae30579537cc0.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `799e8a80fe7f5a7e30f9a56c20900c18559a779e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
