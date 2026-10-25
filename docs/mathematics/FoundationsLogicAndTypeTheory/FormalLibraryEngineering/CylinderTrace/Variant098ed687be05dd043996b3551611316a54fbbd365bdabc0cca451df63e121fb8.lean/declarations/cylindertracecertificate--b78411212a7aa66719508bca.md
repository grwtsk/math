# CylinderTraceCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c9bb8df44b3f50a4dc5c768a6a4d215cee0f2372da91ea0cba42850c77b6d075",
  "kind": "structure",
  "lexical_name": "CylinderTraceCertificate",
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
  "slug": "cylindertracecertificate--b78411212a7aa66719508bca",
  "source": {
    "blob": "899c8c6f1521e9e373eda28ffbe5afff3b59c89f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b78411212a7aa66719508bca4f496a9d2fdf00d5ec7526847b5d5c5a54b3cc41",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c9bb8df44b3f50a4dc5c768a6a4d215cee0f2372da91ea0cba42850c77b6d075`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CylinderTraceCertificate
    (Observable : Type u) where
  algebra : CylinderAlgebraPresentation Observable
  stageTrace : Nat → Observable → Int
  positiveCone : CylinderObservable Observable → Prop
  multiply :
    CylinderObservable Observable →
      CylinderObservable Observable →
      CylinderObservable Observable
  wellDefined :
    ∀ {left right},
      algebra.sameObservable left right →
        stageTrace left.stage left.observable =
          stageTrace right.stage right.observable
  positive :
    ∀ observable,
      positiveCone observable →
        0 ≤ stageTrace observable.stage observable.observable
  tracial :
    ∀ left right,
      stageTrace
          (multiply left right).stage
          (multiply left right).observable =
        stageTrace
          (multiply right left).stage
          (multiply right left).observable

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CylinderTrace/Variant098ed687be05dd043996b3551611316a54fbbd365bdabc0cca451df63e121fb8.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `899c8c6f1521e9e373eda28ffbe5afff3b59c89f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
