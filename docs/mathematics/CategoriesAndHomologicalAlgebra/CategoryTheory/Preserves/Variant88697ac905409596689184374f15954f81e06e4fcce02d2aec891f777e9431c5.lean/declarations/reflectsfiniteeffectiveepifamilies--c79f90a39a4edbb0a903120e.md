# ReflectsFiniteEffectiveEpiFamilies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bdfba94cec0df41aece79a2557eba5ff7209fcb579f21a765d38d9791396474f",
  "kind": "class",
  "lexical_name": "ReflectsFiniteEffectiveEpiFamilies",
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
  "slug": "reflectsfiniteeffectiveepifamilies--c79f90a39a4edbb0a903120e",
  "source": {
    "blob": "fcda4396b59c7d6c95ca3e45aafc95f0ee721792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c79f90a39a4edbb0a903120ee647d71bd2cf2fe7cdd95ac611ef6e23fa4dfad3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bdfba94cec0df41aece79a2557eba5ff7209fcb579f21a765d38d9791396474f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class ReflectsFiniteEffectiveEpiFamilies (F : C ⥤ D) : Prop where
  /--
  A functor reflects finite effective epimorphic families if finite families that are
  mapped to effective epimorphic families are themselves effective epimorphic families.
  -/
  reflects : ∀ {α : Type} [Finite α] {B : C} (X : α → C) (π : (a : α) → (X a ⟶ B)),
    EffectiveEpiFamily (fun a ↦ F.obj (X a)) (fun a ↦ F.map (π a)) →
    EffectiveEpiFamily X π

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preserves/Variant88697ac905409596689184374f15954f81e06e4fcce02d2aec891f777e9431c5.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcda4396b59c7d6c95ca3e45aafc95f0ee721792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
