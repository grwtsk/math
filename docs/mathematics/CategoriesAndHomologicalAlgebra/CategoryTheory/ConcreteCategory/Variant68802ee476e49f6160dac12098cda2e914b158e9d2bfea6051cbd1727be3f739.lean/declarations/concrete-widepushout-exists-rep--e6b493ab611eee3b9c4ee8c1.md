# Concrete.widePushout_exists_rep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "63f63b2e969de512b05a48d68e834484137172e9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:33a0e38c-0d01-854b-b1a3-2ba38a896bb1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cac5d980-4937-83ac-9a4e-86133a95b3bd",
  "kind": "theorem",
  "lexical_name": "Concrete.widePushout_exists_rep",
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
  "slug": "concrete-widepushout-exists-rep--e6b493ab611eee3b9c4ee8c1",
  "source": {
    "blob": "63f63b2e969de512b05a48d68e834484137172e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 302,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b493ab611eee3b9c4ee8c170fbaa4b2d0a7134f0c5328e3f04e3d17e9115da",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cac5d980-4937-83ac-9a4e-86133a95b3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Concrete.widePushout_exists_rep {B : C} {α : Type _} {X : α → C} (f : ∀ j : α, B ⟶ X j)
    [HasWidePushout.{v} B X f] [PreservesColimit (wideSpan B X f) (forget C)]
    (x : ↑(widePushout B X f)) : (∃ y : B, head f y = x) ∨ ∃ (i : α) (y : X i), ι f i y = x := by
  obtain ⟨_ | j, y, rfl⟩ := Concrete.colimit_exists_rep _ x
  · left
    use y
    rfl
  · right
    use j, y
    rfl
#align category_theory.limits.concrete.wide_pushout_exists_rep CategoryTheory.Limits.Concrete.widePushout_exists_rep

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f63b2e969de512b05a48d68e834484137172e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
