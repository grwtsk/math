# elementwiseThms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5395913c3cd13d848a1667d1c09673275d78ce08e13e0c934f49223f0bfdd0f",
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
  "slug": "elementwisethms--e748bb78f97c59837bfff121",
  "source": {
    "blob": "f1d40992cfacb7fddfbee6f3683798167d9d4e1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 66,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e748bb78f97c59837bfff121a8a79c61ff215d56cf36da954ae1ea85ab3fbda5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5395913c3cd13d848a1667d1c09673275d78ce08e13e0c934f49223f0bfdd0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elementwiseThms : List Name :=
  [``CategoryTheory.coe_id, ``CategoryTheory.coe_comp, ``CategoryTheory.comp_apply,
    ``CategoryTheory.id_apply,
    -- further simplifications if the category is `Type`
    ``forget_hom_Type, ``forall_congr_forget_Type,
    -- simp can itself simplify trivial equalities into `true`. Adding this lemma makes it
    -- easier to detect when this has occurred.
    ``implies_true]

/--
Given an equation `f = g` between morphisms `X ⟶ Y` in a category `C`
(possibly after a `∀` binder), produce the equation `∀ (x : X), f x = g x` or
`∀ [ConcreteCategory C] (x : X), f x = g x` as needed (after the `∀` binder), but
with compositions fully right associated and identities removed.

Returns the proof of the new theorem along with (optionally) a new level metavariable
for the first universe parameter to `ConcreteCategory`.

The `simpSides` option controls whether to simplify both sides of the equality, for simpNF
purposes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Elementwise/Variantbd353afdb9f5ca7d3e5b3584fbebdab44ce6eb3722dac6a43ae1a7ba4fc75ad5.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d40992cfacb7fddfbee6f3683798167d9d4e1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
