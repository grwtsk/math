# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOrEmpty.Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.CategoryTheory.Functor.ranges_directed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72249518-2e75-fbe0-31aa-239f40fab7ab",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOrEmpty.Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.CategoryTheory.Functor.ranges_directed",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-isfilteredore--e1875a7f7a411fe12dc42ce6",
  "source": {
    "blob": "2d130e88eae454a3b1310ab9d0ce6ebf7f58630b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 658,
    "line": 639,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1875a7f7a411fe12dc42ce68a7454a4c8fdfa4954de527332172878a8319784",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72249518-2e75-fbe0-31aa-239f40fab7ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 639–658.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.IsFilteredOrEmpty.Variantf218b6006675e638243d23a2d886c83aebba60c243a24ef5e3fa6091362c811d.CategoryTheory.Functor.ranges_directed (F : C ⥤ Type*) (j : C) :
    Directed (· ⊇ ·) fun f : Σ'i, i ⟶ j => Set.range (F.map f.2) := fun ⟨i, ij⟩ ⟨k, kj⟩ => by
  let ⟨l, li, lk, e⟩ := cospan ij kj
  refine' ⟨⟨l, lk ≫ kj⟩, e ▸ _, _⟩ <;> simp_rw [F.map_comp] <;> apply Set.range_comp_subset_range
#align category_theory.functor.ranges_directed CategoryTheory.Functor.ranges_directed

end AllowEmpty

end IsCofiltered

namespace IsCofilteredOrEmpty
open IsCofiltered

variable {C}
variable [IsCofilteredOrEmpty C]
variable {D : Type u₁} [Category.{v₁} D]

/-- If `C` is cofiltered or empty, and we have a functor `L : C ⥤ D` with a right adjoint,
then `D` is cofiltered or empty.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Filtered/Variantd946fda134ab6fdbf29ea4c5401fa50046efb928b6202df2ece503b464fb2201.lean#L639).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d130e88eae454a3b1310ab9d0ce6ebf7f58630b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
