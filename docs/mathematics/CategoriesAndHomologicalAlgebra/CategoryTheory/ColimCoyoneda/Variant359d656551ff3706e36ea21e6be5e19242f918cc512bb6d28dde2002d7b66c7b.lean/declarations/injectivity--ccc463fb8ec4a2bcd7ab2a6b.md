# injectivity₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f0288a2-1b20-56f4-2d76-1e0d6f760896",
  "kind": "lemma",
  "lexical_name": "injectivity₀",
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
  "slug": "injectivity--ccc463fb8ec4a2bcd7ab2a6b",
  "source": {
    "blob": "e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc463fb8ec4a2bcd7ab2a6b43f54e02a60db49c1794e50601fed201eeea9c3e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f0288a2-1b20-56f4-2d76-1e0d6f760896`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injectivity₀ {j₀ : J} (y : X ⟶ Y.obj j₀) (hy : y ≫ c.ι.app j₀ = 0) :
    ∃ (j : J) (φ : j₀ ⟶ j), y ≫ Y.map φ = 0 := by
  have := isFiltered_of_isCardinalDirected J κ
  obtain ⟨j, h⟩ := exists_isIso_of_functor_from_monoOver (F y) hXκ _
      (colimit.isColimit (kernel (g y))) (f y) (fun j ↦ by simpa using hf y j)
      (epi_f hc hy)
  dsimp at h
  refine ⟨j.right, j.hom, ?_⟩
  simpa only [← cancel_epi ((kernel.ι (g y)).app j), comp_zero]
    using NatTrans.congr_app (kernel.condition (g y)) j

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ColimCoyoneda/Variant359d656551ff3706e36ea21e6be5e19242f918cc512bb6d28dde2002d7b66c7b.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e84bc98b0fcf6f5fe3c4bc80a4fd960d199568f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
