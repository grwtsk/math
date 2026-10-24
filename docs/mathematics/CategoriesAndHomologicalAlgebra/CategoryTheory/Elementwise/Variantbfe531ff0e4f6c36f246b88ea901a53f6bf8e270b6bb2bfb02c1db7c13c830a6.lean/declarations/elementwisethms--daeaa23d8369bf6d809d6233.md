# elementwiseThms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b025fc081513921772a6ed43f78da7f04c9a244886f5d7bc77ff78044fac7070",
  "kind": "def",
  "lexical_name": "elementwiseThms",
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
  "slug": "elementwisethms--daeaa23d8369bf6d809d6233",
  "source": {
    "blob": "ef5ed6605f8b384082f28f396a1b3be034ad4131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:daeaa23d8369bf6d809d6233f45eeb12f22ba239deff335c3de512f18bed0d3a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b025fc081513921772a6ed43f78da7f04c9a244886f5d7bc77ff78044fac7070`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elementwiseThms : List Name :=
  [ -- HasForget lemmas
    ``CategoryTheory.coe_id, ``CategoryTheory.coe_comp, ``CategoryTheory.comp_apply,
    ``CategoryTheory.id_apply,
    -- ConcreteCategory lemmas
    ``CategoryTheory.hom_id, ``CategoryTheory.hom_comp, ``id_eq, ``Function.comp_apply,
    -- further simplifications if the category is `Type`
    ``forget_hom_Type, ``forall_congr_forget_Type, ``types_comp_apply, ``types_id_apply,
    -- further simplifications to turn `HasForget` definitions into `ConcreteCategory` ones
    -- (if available)
    ``forget_obj, ``ConcreteCategory.forget_map_eq_coe, ``coe_toHasForget_instFunLike,
    -- simp can itself simplify trivial equalities into `true`. Adding this lemma makes it
    -- easier to detect when this has occurred.
    ``implies_true]

/--
Given an equation `f = g` between morphisms `X ⟶ Y` in a category `C`
(possibly after a `∀` binder), produce the equation `∀ (x : X), f x = g x` or
`∀ [HasForget C] (x : X), f x = g x` as needed (after the `∀` binder), but
with compositions fully right associated and identities removed.

Returns the proof of the new theorem along with (optionally) a new level metavariable
for the first universe parameter to `HasForget`.

The `simpSides` option controls whether to simplify both sides of the equality, for simpNF
purposes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbfe531ff0e4f6c36f246b88ea901a53f6bf8e270b6bb2bfb02c1db7c13c830a6.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef5ed6605f8b384082f28f396a1b3be034ad4131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
