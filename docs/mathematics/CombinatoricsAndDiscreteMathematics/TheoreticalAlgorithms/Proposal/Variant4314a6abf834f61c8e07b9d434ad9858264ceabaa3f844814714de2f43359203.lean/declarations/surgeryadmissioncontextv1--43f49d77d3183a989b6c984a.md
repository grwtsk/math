# SurgeryAdmissionContextV1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07a47493e9feae8195cb98ef365de0934cb08ac01b4da02047524dab02a66729",
  "kind": "structure",
  "lexical_name": "SurgeryAdmissionContextV1",
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
  "slug": "surgeryadmissioncontextv1--43f49d77d3183a989b6c984a",
  "source": {
    "blob": "24fd70f41a5abeaba37167017bb67212fbe7a6b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 136,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43f49d77d3183a989b6c984af24505556d7404e835a9d20c0cb959b78b596550",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07a47493e9feae8195cb98ef365de0934cb08ac01b4da02047524dab02a66729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgeryAdmissionContextV1 where
  schemaVersion : Nat
  algorithmVersion : Nat
  transportContractHash : Hash256
  sourceSnapshotHash : Hash256
  repositoryRevision : Nat
  parserFingerprint : ParserFingerprint
  currentProposalRevision? : Option Nat
  currentProposalHash? : Option Hash256
deriving DecidableEq, Repr

/--
The complete version-one proposal key plus its resolved finite evidence.
`SurgeryBundle` supplies exact edit ordering, global non-overlap, and inverse
round-trip witnesses; it performs no I/O.
-/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Proposal/Variant4314a6abf834f61c8e07b9d434ad9858264ceabaa3f844814714de2f43359203.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `24fd70f41a5abeaba37167017bb67212fbe7a6b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
