# counitIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e5693c4285796accb3a7c196b9b43a93d338ba2559a36a5127f0241cec56e84",
  "kind": "def",
  "lexical_name": "counitIso",
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
  "slug": "counitiso--650d1d5f3608f07fe4bc5412",
  "source": {
    "blob": "2618748d4f27989b91ad5f1276fa55bb51248e3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:650d1d5f3608f07fe4bc5412c20923d7d44f3d0d3006ad4cb934eca705918ae1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e5693c4285796accb3a7c196b9b43a93d338ba2559a36a5127f0241cec56e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def counitIso : inverse C ⋙ functor C ≅ 𝟭 _ :=
  NatIso.ofComponents (fun T => by
    refine Triangle.isoMk _ _ (Iso.refl _) (Iso.refl _) (Iso.refl _) ?_ ?_ ?_
    · simp
    · simp
    · dsimp
      rw [Functor.map_id, comp_id, id_comp, Functor.map_comp,
        ← opShiftFunctorEquivalence_counitIso_inv_naturality_assoc,
        opShiftFunctorEquivalence_counitIso_inv_app_shift, ← Functor.map_comp,
        Iso.hom_inv_id_app, Functor.map_id]
      simp only [Functor.id_obj, comp_id])
    (by aesop_cat)

end TriangleOpEquivalence

/-- An anti-equivalence between the categories of triangles in `C` and in `Cᵒᵖ`.
A triangle in `Cᵒᵖ` shall be distinguished iff it correspond to a distinguished
triangle in `C` via this equivalence. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangle/Variantb1b91462f4159a61d8d07341d90592d8db3f83f9a96ae605693f7db03118dfda.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2618748d4f27989b91ad5f1276fa55bb51248e3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
