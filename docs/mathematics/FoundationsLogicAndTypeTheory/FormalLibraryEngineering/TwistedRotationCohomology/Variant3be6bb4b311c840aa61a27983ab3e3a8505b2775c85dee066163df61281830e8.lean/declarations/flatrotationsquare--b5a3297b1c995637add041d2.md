# FlatRotationSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b04307c950b79631147c8699236d36e41ccabd4d70f822ada832db3bb6b5aebd",
  "kind": "structure",
  "lexical_name": "FlatRotationSquare",
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
  "slug": "flatrotationsquare--b5a3297b1c995637add041d2",
  "source": {
    "blob": "783066fd68a0309bc44c36e102315b288ca7644c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b5a3297b1c995637add041d29d0f139c9573ba51b4bf5e85022ddfbc29fcaee7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b04307c950b79631147c8699236d36e41ccabd4d70f822ada832db3bb6b5aebd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FlatRotationSquare (n : Nat) (A : Type*)
    [NeZero n] [AddCommGroup A] where
  rotationAction : CyclicRotationAction n A
  e0 : RotationLabelledNamingEdge n A
  e1 : RotationLabelledNamingEdge n A
  e2 : RotationLabelledNamingEdge n A
  e3 : RotationLabelledNamingEdge n A
  e1Source : e1.source = e0.target
  e3Source : e3.source = e2.target
  commonSource : e2.source = e0.source
  commonTarget : e3.target = e1.target
  flatTurn : e0.turn + e1.turn = e2.turn + e3.turn
  e0Transport : e0.transport = rotationAction.transport e0.turn
  e1Transport : e1.transport = rotationAction.transport e1.turn
  e2Transport : e2.transport = rotationAction.transport e2.turn
  e3Transport : e3.transport = rotationAction.transport e3.turn

/-- Flat turn holonomy in one representation forces flat transport holonomy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant3be6bb4b311c840aa61a27983ab3e3a8505b2775c85dee066163df61281830e8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `783066fd68a0309bc44c36e102315b288ca7644c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
