# isColimitOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5e0e172ef47b82a1f90b1a56e190a42cbdc3bde3c37f8cda8b5eda02305089b",
  "kind": "def",
  "lexical_name": "isColimitOf",
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
  "slug": "iscolimitof--89b3226cdb458256c24fd73a",
  "source": {
    "blob": "37248b76310a0f1bb7c1acdf2ea6c043acd84ffa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 534,
    "line": 501,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:89b3226cdb458256c24fd73a856f4577a51d081d781670d868a50d95de45b1cd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5e0e172ef47b82a1f90b1a56e190a42cbdc3bde3c37f8cda8b5eda02305089b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 501–534.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isColimitOf (t : Cocone F) (hsurj : ∀ x : t.pt, ∃ i xi, x = t.ι.app i xi)
    (hinj :
      ∀ i j xi xj,
        t.ι.app i xi = t.ι.app j xj → ∃ (k : _) (f : i ⟶ k) (g : j ⟶ k), F.map f xi = F.map g xj) :
    IsColimit t := by
  -- Strategy: Prove that the map from "the" colimit of F (defined above) to t.X
  -- is a bijection.
  apply IsColimit.ofIsoColimit (colimit.isColimit F)
  refine' Cocones.ext (Equiv.toIso (Equiv.ofBijective _ _)) _
  · exact colimit.desc F t
  · constructor
    · show Function.Injective _
      intro a b h
      rcases jointly_surjective.{v, u} F (colimit.isColimit F) a with ⟨i, xi, rfl⟩
      rcases jointly_surjective.{v, u} F (colimit.isColimit F) b with ⟨j, xj, rfl⟩
      replace h : (colimit.ι F i ≫ colimit.desc F t) xi = (colimit.ι F j ≫ colimit.desc F t) xj
        := h
      rw [colimit.ι_desc, colimit.ι_desc] at h
      rcases hinj i j xi xj h with ⟨k, f, g, h'⟩
      change colimit.ι F i xi = colimit.ι F j xj
      rw [← colimit.w F f, ← colimit.w F g]
      change colimit.ι F k (F.map f xi) = colimit.ι F k (F.map g xj)
      rw [h']
    · show Function.Surjective _
      intro x
      rcases hsurj x with ⟨i, xi, rfl⟩
      use colimit.ι F i xi
      apply Colimit.ι_desc_apply.{v, u}
  · intro j
    apply colimit.ι_desc
#align category_theory.limits.types.filtered_colimit.is_colimit_of CategoryTheory.Limits.Types.FilteredColimit.isColimitOf

variable [IsFilteredOrEmpty J]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variantb1f487e686b2c3c1c99d20fd805843fbe0ca183f07b2cf6e45ec8904b5a72331.lean#L501).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37248b76310a0f1bb7c1acdf2ea6c043acd84ffa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
