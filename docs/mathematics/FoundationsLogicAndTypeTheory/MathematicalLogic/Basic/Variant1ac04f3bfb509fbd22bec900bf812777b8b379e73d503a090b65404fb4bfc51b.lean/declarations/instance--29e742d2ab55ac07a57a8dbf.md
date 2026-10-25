# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b71a59b06d6c24bc40c487ac99fe475185ccf3137b4d78e6a743b944444b3389",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--29e742d2ab55ac07a57a8dbf",
  "source": {
    "blob": "b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 430,
    "line": 405,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:29e742d2ab55ac07a57a8dbf7c471a8f3dc6cb7fdb97a9a35d14442e880cf577",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b71a59b06d6c24bc40c487ac99fe475185ccf3137b4d78e6a743b944444b3389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 405–430.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (P : Generators R S) : Module.Free S P.toExtension.CotangentSpace :=
  .of_basis P.cotangentSpaceBasis

universe w' u' v'

variable {R' : Type u'} {S' : Type v'} [CommRing R'] [CommRing S'] [Algebra R' S']
variable (P' : Generators.{w'} R' S')
variable [Algebra R R'] [Algebra S S'] [Algebra R S'] [IsScalarTower R R' S'] [IsScalarTower R S S']

attribute [local instance] SMulCommClass.of_commMonoid

variable {P P'}

universe w'' u'' v''

variable {R'' : Type u''} {S'' : Type v''} [CommRing R''] [CommRing S''] [Algebra R'' S'']
variable {P'' : Generators.{w''} R'' S''}
variable [Algebra R R''] [Algebra S S''] [Algebra R S'']
  [IsScalarTower R R'' S''] [IsScalarTower R S S'']
variable [Algebra R' R''] [Algebra S' S''] [Algebra R' S'']
  [IsScalarTower R' R'' S''] [IsScalarTower R' S' S'']
variable [IsScalarTower S S' S'']

open Extension

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant1ac04f3bfb509fbd22bec900bf812777b8b379e73d503a090b65404fb4bfc51b.lean#L405).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3b2e610fba789dd6a09d665dc8fb2346fd8a9ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
