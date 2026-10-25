# FlatRotationSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9f9f703c2c8ea1ec82c5e88eaf47d568139675beee585d5efb7e7c5b9fd35e2f",
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
  "slug": "flatrotationsquare--57c823968a20bea3f6daaed1",
  "source": {
    "blob": "515f39b1862dfff8dd828ed7b8be3b00690a9fac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57c823968a20bea3f6daaed16818c2758e588979ed97c169ee23408aa10e9b16",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9f9f703c2c8ea1ec82c5e88eaf47d568139675beee585d5efb7e7c5b9fd35e2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–61.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TwistedRotationCohomology/Variant93815ced3c486786c5b03270af36a7989c3f7b3d77071ee29fe392bd33aa5f2a.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `515f39b1862dfff8dd828ed7b8be3b00690a9fac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
