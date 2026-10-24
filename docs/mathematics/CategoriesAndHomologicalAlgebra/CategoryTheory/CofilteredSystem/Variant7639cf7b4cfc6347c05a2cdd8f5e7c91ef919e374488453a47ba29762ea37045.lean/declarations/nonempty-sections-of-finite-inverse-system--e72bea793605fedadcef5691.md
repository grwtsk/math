# nonempty_sections_of_finite_inverse_system

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41e3b7bd-56c9-573d-681a-3e55a38dfe46",
  "kind": "theorem",
  "lexical_name": "nonempty_sections_of_finite_inverse_system",
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
  "slug": "nonempty-sections-of-finite-inverse-system--e72bea793605fedadcef5691",
  "source": {
    "blob": "281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e72bea793605fedadcef569176f1289a1f6df166ffba8636c26473fb6d0a2cb0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41e3b7bd-56c9-573d-681a-3e55a38dfe46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_sections_of_finite_inverse_system {J : Type u} [Preorder J] [IsDirected J (· ≤ ·)]
    (F : Jᵒᵖ ⥤ Type v) [∀ j : Jᵒᵖ, Finite (F.obj j)] [∀ j : Jᵒᵖ, Nonempty (F.obj j)] :
    F.sections.Nonempty := by
  cases isEmpty_or_nonempty J
  · haveI : IsEmpty Jᵒᵖ := ⟨fun j => isEmptyElim j.unop⟩ -- TODO: this should be a global instance
    exact ⟨isEmptyElim, by apply isEmptyElim⟩
  · exact nonempty_sections_of_finite_cofiltered_system _
#align nonempty_sections_of_finite_inverse_system nonempty_sections_of_finite_inverse_system

end FiniteKonig

namespace CategoryTheory

namespace Functor

variable {J : Type u} [Category J] (F : J ⥤ Type v) {i j k : J} (s : Set (F.obj i))

/-- The eventual range of the functor `F : J ⥤ Type v` at index `j : J` is the intersection
of the ranges of all maps `F.map f` with `i : J` and `f : i ⟶ j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant7639cf7b4cfc6347c05a2cdd8f5e7c91ef919e374488453a47ba29762ea37045.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `281e98a448da2854a30d7c5bf3cd1ff1ae1e99a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
