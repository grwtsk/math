# center.smulCommClass_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c36260f109f87524c01dc149062b10d8d54fd7fdc35655088c77653b785cb35e",
  "kind": "instance",
  "lexical_name": "center.smulCommClass_left",
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
  "slug": "center-smulcommclass-left--332c54a64c8641bfeb40fdc9",
  "source": {
    "blob": "2a7e91e6a598bac845be6974d92a6d9ab37dda03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1498,
    "line": 1494,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:332c54a64c8641bfeb40fdc9b96c06bdb1cb54de815931c89276b6711e66dbad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c36260f109f87524c01dc149062b10d8d54fd7fdc35655088c77653b785cb35e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1494–1498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance center.smulCommClass_left : SMulCommClass (center R) R R :=
  Subsemiring.center.smulCommClass_left
#align subring.center.smul_comm_class_left Subring.center.smulCommClass_left

/-- The center of a semiring acts commutatively on that semiring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9d0ff9e23bf0d30e569458e94125cf42202c7dcd096521a1c376cc1b6c203d7.lean#L1494).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a7e91e6a598bac845be6974d92a6d9ab37dda03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
