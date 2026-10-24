# initial_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06b50e944379c962a46d23b764c97c0911836d2e731cbc8feecac12d89b023df",
  "kind": "instance",
  "lexical_name": "initial_eval",
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
  "slug": "initial-eval--e385e9db6096c660ef0859c1",
  "source": {
    "blob": "73bf54c45f474ea31848b3213ba175e79bb25407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 468,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e385e9db6096c660ef0859c197229ea2b18bbe077a4656e0c7f538acfd879517",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06b50e944379c962a46d23b764c97c0911836d2e731cbc8feecac12d89b023df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–468.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance initial_eval [∀ s, IsCofiltered (I s)] (s : α) : (Pi.eval I s).Initial := by
  classical
  apply Functor.initial_of_exists_of_isCofiltered
  · exact fun i => ⟨Function.update (fun t => nonempty.some) s i, ⟨by simpa using 𝟙 _⟩⟩
  · intro d c f g
    let c't : (∀ s, (c' : I s) × (c' ⟶ c s)) := Function.update (fun t => ⟨c t, 𝟙 (c t)⟩)
      s ⟨eq f g, eqHom f g⟩
    refine ⟨fun t => (c't t).1, fun t => (c't t).2, ?_⟩
    dsimp only [Pi.eval_obj, Pi.eval_map, c't]
    rw [Function.update_self]
    simpa using eq_condition _ _

end Pi

section Prod

namespace IsFiltered

attribute [local instance] IsFiltered.isConnected IsCofiltered.isConnected

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bf54c45f474ea31848b3213ba175e79bb25407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
