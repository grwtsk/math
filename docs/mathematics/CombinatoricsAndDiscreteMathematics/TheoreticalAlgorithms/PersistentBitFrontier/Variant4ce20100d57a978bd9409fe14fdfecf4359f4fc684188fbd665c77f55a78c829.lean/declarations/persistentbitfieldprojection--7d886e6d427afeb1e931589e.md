# PersistentBitfieldProjection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:746812034429bcd1b451db2b15659d1bd7ae6263c9fcaf12c9f9a32ff2afa5f4",
  "kind": "structure",
  "lexical_name": "PersistentBitfieldProjection",
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
  "slug": "persistentbitfieldprojection--7d886e6d427afeb1e931589e",
  "source": {
    "blob": "d3bb5c822da22f8e9b92c8684bcbbf9a5b9e60bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 10,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentBitFrontier/Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7d886e6d427afeb1e931589e326adbb6b37233ead41255d4c5491a4fdcc606a6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentBitFrontier/Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:746812034429bcd1b451db2b15659d1bd7ae6263c9fcaf12c9f9a32ff2afa5f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PersistentBitfieldProjection
    (ParentBitfield ChildBitfield : Type u) where
  project : ChildBitfield → ParentBitfield
  parentBitfield : ParentBitfield
  childBitfield : ChildBitfield
  projectionWitness :
    project childBitfield = parentBitfield
  dischargeWitnessRefs : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentBitFrontier/Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentBitFrontier/Variant4ce20100d57a978bd9409fe14fdfecf4359f4fc684188fbd665c77f55a78c829.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3bb5c822da22f8e9b92c8684bcbbf9a5b9e60bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
