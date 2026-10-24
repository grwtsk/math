# locallySmall_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5d5120c-ffc2-1015-a0f2-a629591fc79a",
  "kind": "theorem",
  "lexical_name": "locallySmall_congr",
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
  "slug": "locallysmall-congr--88f77e53f20d5a468e5307ac",
  "source": {
    "blob": "ccaec4ea54579e720c192a491d7db2d4d32d80ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88f77e53f20d5a468e5307ac3ae8ee57516597958f162047f4066bd9f3f65b91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5d5120c-ffc2-1015-a0f2-a629591fc79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallySmall_congr {C : Type u} [Category.{v} C] {D : Type u'} [Category.{v'} D]
    (e : C ≌ D) : LocallySmall.{w} C ↔ LocallySmall.{w} D := by
  fconstructor
  · rintro ⟨L⟩
    fconstructor
    intro X Y
    specialize L (e.inverse.obj X) (e.inverse.obj Y)
    refine' (small_congr _).mpr L
    exact equivOfFullyFaithful e.inverse
  · rintro ⟨L⟩
    fconstructor
    intro X Y
    specialize L (e.functor.obj X) (e.functor.obj Y)
    refine' (small_congr _).mpr L
    exact equivOfFullyFaithful e.functor
#align category_theory.locally_small_congr CategoryTheory.locallySmall_congr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant6f31430ff65a760267eda43f3ab6a3d71f5a2e86ca1cd9b0644d8ec25af2354e.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccaec4ea54579e720c192a491d7db2d4d32d80ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
