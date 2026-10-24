# liftHom₂WhiskerRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ea6b954425b73314255babcf9753b464258a9a9477d651f0965e8c2ca3be517",
  "kind": "instance",
  "lexical_name": "liftHom₂WhiskerRight",
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
  "slug": "lifthom-whiskerright--35f9c4b5ea254d36f396abef",
  "source": {
    "blob": "e7b4520bcf5ed6a832dc49759ae51a442cf65128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35f9c4b5ea254d36f396abef39dfc1e152471a4cfa0a1d5c620c23759beb1383",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ea6b954425b73314255babcf9753b464258a9a9477d651f0965e8c2ca3be517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance liftHom₂WhiskerRight {f g : a ⟶ b} (η : f ⟶ g) [LiftHom f] [LiftHom g] [LiftHom₂ η]
    {h : b ⟶ c} [LiftHom h] : LiftHom₂ (η ▷ h) where
  lift := LiftHom₂.lift η ▷ LiftHom.lift h

open Lean Elab Tactic Meta

/-- Helper function for throwing exceptions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BicategoryCoherence/Varianta95aefdfe064f0a929fc806da7d3d35d5fbb5c3483b097aa24b87f2129cae0b2.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7b4520bcf5ed6a832dc49759ae51a442cf65128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
