# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bad52844334ffcb0dc707b1913526e6182719e5f381d1e4a3b17ee06b180d2fb",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--6af45abe0130b452f4a9ebd3",
  "source": {
    "blob": "9f2e0db8592b16b31b2d4b09843ea2f18729a283",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 102,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6af45abe0130b452f4a9ebd3e23c31b1ee8ba9b16d88ae7f2e711df523c6aa8f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bad52844334ffcb0dc707b1913526e6182719e5f381d1e4a3b17ee06b180d2fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (A : C) : IsCardinalAccessible ((Functor.const C).obj A) κ where
  preservesColimitOfShape J _ _ :=
    { preservesColimit {F} :=
        { preserves {c} hc := ⟨by
            have h := isFiltered_of_isCardinalFiltered J κ
            have (j : J) : IsIso ((((const C).obj A).mapCocone c).ι.app j) := by
              dsimp
              infer_instance
            exact Functor.IsEventuallyConstantFrom.isColimitOfIsIso
              (i₀ := h.nonempty.some) (fun _ _ ↦ by dsimp; infer_instance) _⟩ } }

end

section

/-- A functor is accessible relative to a universe `w` if
it is `κ`-accessible for some regular `κ : Cardinal.{w}`. -/
@[pp_with_univ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant325dbfb4f0ba0158ba22b704fdbbccce07c48aefdf948349b764e12b30783d59.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f2e0db8592b16b31b2d4b09843ea2f18729a283` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
