# rel_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ded831d2-411d-5038-375d-69809ed11e83",
  "kind": "theorem",
  "lexical_name": "rel_equiv",
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
  "slug": "rel-equiv--f81d80f4f05de9863a82f0cb",
  "source": {
    "blob": "37248b76310a0f1bb7c1acdf2ea6c043acd84ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 551,
    "line": 535,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f81d80f4f05de9863a82f0cb5f7b602a7b4006cc2e56adeec74e4ee6bfa73330",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded831d2-411d-5038-375d-69809ed11e83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–551.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem rel_equiv : _root_.Equivalence (FilteredColimit.Rel.{v, u} F) where
  refl x := ⟨x.1, 𝟙 x.1, 𝟙 x.1, rfl⟩
  symm := fun ⟨k, f, g, h⟩ => ⟨k, g, f, h.symm⟩
  trans {x y z} := fun ⟨k, f, g, h⟩ ⟨k', f', g', h'⟩ =>
    let ⟨l, fl, gl, _⟩ := IsFilteredOrEmpty.cocone_objs k k'
    let ⟨m, n, hn⟩ := IsFilteredOrEmpty.cocone_maps (g ≫ fl) (f' ≫ gl)
    ⟨m, f ≫ fl ≫ n, g' ≫ gl ≫ n,
      calc
        F.map (f ≫ fl ≫ n) x.2 = F.map (fl ≫ n) (F.map f x.2) := by simp
        _ = F.map (fl ≫ n) (F.map g y.2) := by rw [h]
        _ = F.map ((g ≫ fl) ≫ n) y.2 := by simp
        _ = F.map ((f' ≫ gl) ≫ n) y.2 := by rw [hn]
        _ = F.map (gl ≫ n) (F.map f' y.2) := by simp
        _ = F.map (gl ≫ n) (F.map g' z.2) := by rw [h']
        _ = F.map (g' ≫ gl ≫ n) z.2 := by simp⟩
#align category_theory.limits.types.filtered_colimit.rel_equiv CategoryTheory.Limits.Types.FilteredColimit.rel_equiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37248b76310a0f1bb7c1acdf2ea6c043acd84ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
