# RingHom.toModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3df32be9291001a8d5b4bf8e8f42f0cd58a57e6f75cb6f4a3a599e7f3b44f156",
  "kind": "abbrev",
  "lexical_name": "RingHom.toModule",
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
  "slug": "ringhom-tomodule--df6a221ac8d44b062d3d72c3",
  "source": {
    "blob": "c4b098423224ceac329912e1a409c6bdbe7c42b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df6a221ac8d44b062d3d72c3306f681d0bc35d983e55aa933d85e5aa8ded384f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3df32be9291001a8d5b4bf8e8f42f0cd58a57e6f75cb6f4a3a599e7f3b44f156`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev RingHom.toModule [Semiring R] [Semiring S] (f : R →+* S) : Module R S :=
  Module.compHom S f

/-- If the module action of `R` on `S` is compatible with multiplication on `S`, then
`fun x ↦ x • 1` is a ring homomorphism from `R` to `S`.

This is the `RingHom` version of `MonoidHom.smulOneHom`.

When `R` is commutative, usually `algebraMap` should be preferred. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RingHom/Variant6a5f585274189c71af1959700a67056298abf6dc3c87725390b07cdc0f36c7c8.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4b098423224ceac329912e1a409c6bdbe7c42b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
