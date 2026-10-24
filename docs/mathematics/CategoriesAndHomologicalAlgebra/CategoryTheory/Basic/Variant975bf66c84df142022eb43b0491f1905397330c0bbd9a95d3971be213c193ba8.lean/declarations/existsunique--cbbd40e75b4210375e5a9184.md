# existsUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1907c9f5-eb0f-7da6-40e3-adb3cab91e02",
  "kind": "theorem",
  "lexical_name": "existsUnique",
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
  "slug": "existsunique--cbbd40e75b4210375e5a9184",
  "source": {
    "blob": "5208a59c866c9f65c650962f528308c79c997d81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 742,
    "line": 724,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbbd40e75b4210375e5a91846e0cfabcbc58995498305a5bf69a8f4efd9906a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1907c9f5-eb0f-7da6-40e3-adb3cab91e02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 724–742.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique (h : IsUniversal f) (g : CostructuredArrow S T) :
    ∃! η : g.left ⟶ f.left, S.map η ≫ f.hom = g.hom :=
  ⟨h.lift g, h.fac g, fun f w ↦ h.hom_ext <| by simp [w]⟩

end IsUniversal

end CostructuredArrow

namespace Functor

variable {E : Type u₃} [Category.{v₃} E]

/-- Given `X : D` and `F : C ⥤ D`, to upgrade a functor `G : E ⥤ C` to a functor
    `E ⥤ StructuredArrow X F`, it suffices to provide maps `X ⟶ F.obj (G.obj Y)` for all `Y` making
    the obvious triangles involving all `F.map (G.map g)` commute.

    This is of course the same as providing a cone over `F ⋙ G` with cone point `X`, see
    `Functor.toStructuredArrowIsoToStructuredArrow`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant975bf66c84df142022eb43b0491f1905397330c0bbd9a95d3971be213c193ba8.lean#L724).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5208a59c866c9f65c650962f528308c79c997d81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
