# validPacketFiberDecidableEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c36ff70e99fb1a4e0b74354d2969be476ae4116213f2b00c9141b38b30a14bb7",
  "kind": "instance",
  "lexical_name": "validPacketFiberDecidableEq",
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
  "slug": "validpacketfiberdecidableeq--e0f1b71227e1a051b21b716a",
  "source": {
    "blob": "45e1aee3d7be0ca8c18941be9b7672c057adeccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 199,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0f1b71227e1a051b21b716acd8da6fd8cb09ce50f1c4a90402a6c066be1c4ed",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c36ff70e99fb1a4e0b74354d2969be476ae4116213f2b00c9141b38b30a14bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance validPacketFiberDecidableEq
    (C : FilesystemMatrixCodec Snapshot r)
    (k : Nat) :
    DecidableEq (C.ValidPacketFiber k) :=
  Classical.decEq _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Grading/Variant403ea28e1f91105855f82f6b5df9816f7fe8d0d487431a42ba49fe7cd195b060.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45e1aee3d7be0ca8c18941be9b7672c057adeccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
