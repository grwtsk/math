# mapCechNerve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89afb8373be86efe8f588957001561d125793429586958bc134b80010e3fe7ee",
  "kind": "def",
  "lexical_name": "mapCechNerve",
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
  "slug": "mapcechnerve--60873b42a9a4f7df602bfce1",
  "source": {
    "blob": "8545d54209844596b9d8252ef425254a2660476b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60873b42a9a4f7df602bfce1a4c043bb1b133eb86e3972967c0af9b3c1a458e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89afb8373be86efe8f588957001561d125793429586958bc134b80010e3fe7ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapCechNerve {f g : Arrow C}
    [∀ n : ℕ, HasWidePullback f.right (fun _ : Fin (n + 1) => f.left) fun _ => f.hom]
    [∀ n : ℕ, HasWidePullback g.right (fun _ : Fin (n + 1) => g.left) fun _ => g.hom] (F : f ⟶ g) :
    f.cechNerve ⟶ g.cechNerve where
  app n :=
    WidePullback.lift (WidePullback.base _ ≫ F.right) (fun i => WidePullback.π _ i ≫ F.left)
      fun j => by simp
#align category_theory.arrow.map_cech_nerve CategoryTheory.Arrow.mapCechNerve

/-- The augmented Čech nerve associated to an arrow. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CechNerve/Variantf3b02169429edd869503daec7972d5b7c29ca5323f912bd22fb7846d0d8a92da.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8545d54209844596b9d8252ef425254a2660476b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
