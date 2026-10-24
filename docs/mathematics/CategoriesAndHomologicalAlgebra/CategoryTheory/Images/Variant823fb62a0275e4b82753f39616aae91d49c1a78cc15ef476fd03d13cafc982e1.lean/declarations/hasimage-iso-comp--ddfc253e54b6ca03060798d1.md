# hasImage_iso_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f9a4eb2e5eb00e0959fd31a48d69c2d7e02adae32cf56d9f996b951a78e11cf",
  "kind": "instance",
  "lexical_name": "hasImage_iso_comp",
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
  "slug": "hasimage-iso-comp--ddfc253e54b6ca03060798d1",
  "source": {
    "blob": "e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 623,
    "line": 612,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddfc253e54b6ca03060798d1e54f022e452502be7ad7d9127d2729613799d10f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f9a4eb2e5eb00e0959fd31a48d69c2d7e02adae32cf56d9f996b951a78e11cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 612–623.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasImage_iso_comp [IsIso f] [HasImage g] : HasImage (f ≫ g) :=
  HasImage.mk
    { F := (Image.monoFactorisation g).isoComp f
      isImage := { lift := fun F' => image.lift (F'.ofIsoComp f)
                   lift_fac := fun F' => by
                    dsimp
                    have : (MonoFactorisation.ofIsoComp f F').m = F'.m := rfl
                    rw [← this, image.lift_fac (MonoFactorisation.ofIsoComp f F')] } }

/-- `image.preComp f g` is an isomorphism when `f` is an isomorphism
(we need `C` to have equalizers to prove this).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant823fb62a0275e4b82753f39616aae91d49c1a78cc15ef476fd03d13cafc982e1.lean#L612).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9eb35a6ce94bd3c53eebd289e9b1cb48e42a036` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
