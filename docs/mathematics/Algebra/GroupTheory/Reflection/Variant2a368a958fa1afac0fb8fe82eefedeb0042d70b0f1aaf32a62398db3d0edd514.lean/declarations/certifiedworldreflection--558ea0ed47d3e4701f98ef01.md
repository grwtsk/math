# CertifiedWorldReflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:399339c64ee9b235458ec5db0457110898c823e88e7b31885f40be7b09dd6920",
  "kind": "structure",
  "lexical_name": "CertifiedWorldReflection",
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
  "slug": "certifiedworldreflection--558ea0ed47d3e4701f98ef01",
  "source": {
    "blob": "bc3a897c91d37c769c6e13ceeaac219ba4d83dc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:558ea0ed47d3e4701f98ef0162f4710c792319260ecec2bb8ee369ee78f38fd8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:399339c64ee9b235458ec5db0457110898c823e88e7b31885f40be7b09dd6920`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedWorldReflection (State : Type*) where
  identity : ArtifactIdentity
  reflect : State → State
  involutive : Function.Involutive reflect
  interpretation : ReflectionInterpretation
  checkerOwner : Project
  checkerIndependent : Prop

namespace CertifiedWorldReflection

variable {State : Type*}

/-- The certified reflection satisfies `J² = I`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Reflection/Variant2a368a958fa1afac0fb8fe82eefedeb0042d70b0f1aaf32a62398db3d0edd514.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc3a897c91d37c769c6e13ceeaac219ba4d83dc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
