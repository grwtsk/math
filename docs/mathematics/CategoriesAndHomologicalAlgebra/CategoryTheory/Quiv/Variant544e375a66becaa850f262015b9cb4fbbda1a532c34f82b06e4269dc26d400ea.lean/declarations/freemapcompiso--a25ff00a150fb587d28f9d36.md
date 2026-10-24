# freeMapCompIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b61840fb591da8d910a226308dd8a147925307615df57a18cf34338be6c9520f",
  "kind": "def",
  "lexical_name": "freeMapCompIso",
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
  "slug": "freemapcompiso--a25ff00a150fb587d28f9d36",
  "source": {
    "blob": "9aa4a4a11a7bce0944bfe8e15fdfae178e6035d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant544e375a66becaa850f262015b9cb4fbbda1a532c34f82b06e4269dc26d400ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a25ff00a150fb587d28f9d36331022380af4bff637527c5ad7dfc3c4834b0b4d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant544e375a66becaa850f262015b9cb4fbbda1a532c34f82b06e4269dc26d400ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b61840fb591da8d910a226308dd8a147925307615df57a18cf34338be6c9520f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def freeMapCompIso {V₁ : Type u₁} {V₂ : Type u₂} {V₃ : Type u₃}
    [Quiver.{v₁} V₁] [Quiver.{v₂} V₂] [Quiver.{v₃} V₃] (F : V₁ ⥤q V₂) (G : V₂ ⥤q V₃) :
    freeMap (F ⋙q G) ≅ freeMap F ⋙ freeMap G :=
  NatIso.ofComponents (fun _ ↦ Iso.refl _) (fun f ↦ by
    dsimp
    simp only [Category.comp_id, Category.id_comp, Prefunctor.mapPath_comp_apply])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant544e375a66becaa850f262015b9cb4fbbda1a532c34f82b06e4269dc26d400ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quiv/Variant544e375a66becaa850f262015b9cb4fbbda1a532c34f82b06e4269dc26d400ea.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9aa4a4a11a7bce0944bfe8e15fdfae178e6035d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
