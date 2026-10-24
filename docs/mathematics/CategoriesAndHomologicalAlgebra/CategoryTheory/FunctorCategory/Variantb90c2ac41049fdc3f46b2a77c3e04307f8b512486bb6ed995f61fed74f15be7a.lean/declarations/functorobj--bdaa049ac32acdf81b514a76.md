# functorObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e657b6a0cda89eac7f0dae0be34e7ec777aa8e7840dc1ff1bfd3885d15c366",
  "kind": "def",
  "lexical_name": "functorObj",
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
  "slug": "functorobj--bdaa049ac32acdf81b514a76",
  "source": {
    "blob": "6678552572fca03e8057ca01463f259dd9155617",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 129,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdaa049ac32acdf81b514a76457b095e07e74977f4d3711fadd1e2315de72457",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e657b6a0cda89eac7f0dae0be34e7ec777aa8e7840dc1ff1bfd3885d15c366`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorObj (A : Comon_ (C ⥤ D)) : C ⥤ Comon_ D where
  obj X :=
  { X := A.X.obj X
    counit := A.counit.app X
    comul := A.comul.app X
    counit_comul := congr_app A.counit_comul X
    comul_counit := congr_app A.comul_counit X
    comul_assoc := congr_app A.comul_assoc X }
  map f :=
  { hom := A.X.map f
    hom_counit := by dsimp; rw [A.counit.naturality, tensorUnit_map]; dsimp; rw [Category.comp_id]
    hom_comul := by dsimp; rw [A.comul.naturality, tensorObj_map] }
  map_id X := by ext; dsimp; rw [CategoryTheory.Functor.map_id]
  map_comp f g := by ext; dsimp; rw [Functor.map_comp]

/-- Functor translating a comonoid object in a functor category
to a functor into the category of comonoid objects.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantb90c2ac41049fdc3f46b2a77c3e04307f8b512486bb6ed995f61fed74f15be7a.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6678552572fca03e8057ca01463f259dd9155617` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
