# TangentialExtensionBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e300b9c7941de73bf66cd31d3df14319b0a4224e4c53d88fc7fec1d9351172c9",
  "kind": "structure",
  "lexical_name": "TangentialExtensionBoundary",
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
  "slug": "tangentialextensionboundary--207b7ea229780d7f104a6dc4",
  "source": {
    "blob": "4c0cf203b0b4e4681fac58b362ce8628421da4de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 273,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:207b7ea229780d7f104a6dc48c9d78ad81265b491ed8d3a1c33269f23799795d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e300b9c7941de73bf66cd31d3df14319b0a4224e4c53d88fc7fec1d9351172c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TangentialExtensionBoundary
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    (certificate : FramedSurgeryCertificate T R embedding)
    (Obstruction : Type uO) [Zero Obstruction] where
  boundaryClass : Obstruction
  extendsAcrossTrace : Prop
  extends_iff_vanishes : extendsAcrossTrace ↔ boundaryClass = 0

namespace TangentialExtensionBoundary

variable
    {T : SmoothFramedSurgeryTheory}
    {R : Type uH} [CommRing R]
    {p q : Nat} {M : T.Manifold}
    {embedding : T.FramedEmbedding p q M}
    {certificate : FramedSurgeryCertificate T R embedding}
    {Obstruction : Type uO} [Zero Obstruction]

/-- A tangential structure extends over the handle exactly when its boundary class vanishes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Core/Variant5b7742087c9499952e10e4306be4cb4799bb2d531c7cd89458b28df243cb7fd6.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c0cf203b0b4e4681fac58b362ce8628421da4de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
