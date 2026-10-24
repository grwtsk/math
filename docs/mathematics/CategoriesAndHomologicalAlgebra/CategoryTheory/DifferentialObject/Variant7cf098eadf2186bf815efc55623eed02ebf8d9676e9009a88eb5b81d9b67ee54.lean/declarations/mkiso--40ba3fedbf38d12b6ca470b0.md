# mkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2dae63b65df3395e030849473037577293c0439a35b6f513004660a51e2f2d4",
  "kind": "def",
  "lexical_name": "mkIso",
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
  "slug": "mkiso--40ba3fedbf38d12b6ca470b0",
  "source": {
    "blob": "039b30affed4c4d677f59fc5607481702fda1085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 169,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40ba3fedbf38d12b6ca470b0994a55d7ce26cdb1ef09da2a31538a2f2a2c36c4",
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

Occurrence: `declaration:c2dae63b65df3395e030849473037577293c0439a35b6f513004660a51e2f2d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIso {X Y : DifferentialObject S C} (f : X.obj ≅ Y.obj) (hf : X.d ≫ f.hom⟦1⟧' = f.hom ≫ Y.d) :
    X ≅ Y where
  hom := ⟨f.hom, hf⟩
  inv := ⟨f.inv, by
    rw [← Functor.mapIso_inv, Iso.comp_inv_eq, Category.assoc, Iso.eq_inv_comp, Functor.mapIso_hom,
      hf]⟩
  hom_inv_id := by ext1; dsimp; exact f.hom_inv_id
  inv_hom_id := by ext1; dsimp; exact f.inv_hom_id
#align category_theory.differential_object.mk_iso CategoryTheory.DifferentialObject.mkIso

end DifferentialObject

namespace Functor

universe v' u'

variable (D : Type u') [Category.{v'} D]

variable [HasZeroMorphisms D] [HasShift D S]

/-- A functor `F : C ⥤ D` which commutes with shift functors on `C` and `D` and preserves zero
morphisms can be lifted to a functor `DifferentialObject S C ⥤ DifferentialObject S D`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant7cf098eadf2186bf815efc55623eed02ebf8d9676e9009a88eb5b81d9b67ee54.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039b30affed4c4d677f59fc5607481702fda1085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
