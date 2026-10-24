# mapDifferentialObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1004d124560419594c60f7c14fe2cba08d5a8c979fbe318e83ba68748463ac59",
  "kind": "def",
  "lexical_name": "mapDifferentialObject",
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
  "slug": "mapdifferentialobject--66475ecc2d8303472e8f1fc3",
  "source": {
    "blob": "039b30affed4c4d677f59fc5607481702fda1085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 192,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:66475ecc2d8303472e8f1fc38774ae94aa4be7037c22b4c4715546fb11d414bb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1004d124560419594c60f7c14fe2cba08d5a8c979fbe318e83ba68748463ac59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapDifferentialObject (F : C ⥤ D)
    (η : (shiftFunctor C (1 : S)).comp F ⟶ F.comp (shiftFunctor D (1 : S)))
    (hF : ∀ c c', F.map (0 : c ⟶ c') = 0) : DifferentialObject S C ⥤ DifferentialObject S D where
  obj X :=
    { obj := F.obj X.obj
      d := F.map X.d ≫ η.app X.obj
      d_squared := by
        rw [Functor.map_comp, ← Functor.comp_map F (shiftFunctor D (1 : S))]
        slice_lhs 2 3 => rw [← η.naturality X.d]
        rw [Functor.comp_map]
        slice_lhs 1 2 => rw [← F.map_comp, X.d_squared, hF]
        rw [zero_comp, zero_comp] }
  map f :=
    { f := F.map f.f
      comm := by
        dsimp
        slice_lhs 2 3 => rw [← Functor.comp_map F (shiftFunctor D (1 : S)), ← η.naturality f.f]
        slice_lhs 1 2 => rw [Functor.comp_map, ← F.map_comp, f.comm, F.map_comp]
        rw [Category.assoc] }
  map_id := by intros; ext; simp
  map_comp := by intros; ext; simp
#align category_theory.functor.map_differential_object CategoryTheory.Functor.mapDifferentialObject

end Functor

end CategoryTheory

namespace CategoryTheory

namespace DifferentialObject

variable (S : Type*) [AddMonoidWithOne S] (C : Type u) [Category.{v} C]

variable [HasZeroObject C] [HasZeroMorphisms C] [HasShift C S]
variable [(shiftFunctor C (1 : S)).PreservesZeroMorphisms]

open scoped ZeroObject

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039b30affed4c4d677f59fc5607481702fda1085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
