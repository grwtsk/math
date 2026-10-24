# cokernel_funext

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
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/68/68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84a1b11b-9b1d-b11d-55ce-738e3f8ea778",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e7f0733-886b-c337-e0a1-2f996ab71bf0",
  "kind": "theorem",
  "lexical_name": "cokernel_funext",
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
  "slug": "cokernel-funext--44314870556fa9bad87cceab",
  "source": {
    "blob": "63f63b2e969de512b05a48d68e834484137172e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 159,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44314870556fa9bad87cceaba4628d8ac6eb24b0a8679ae1189243758b4fa93d",
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

Occurrence: `result:2e7f0733-886b-c337-e0a1-2f996ab71bf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cokernel_funext {C : Type*} [Category C] [HasZeroMorphisms C] [ConcreteCategory C]
    {M N K : C} {f : M ⟶ N} [HasCokernel f] {g h : cokernel f ⟶ K}
    (w : ∀ n : N, g (cokernel.π f n) = h (cokernel.π f n)) : g = h := by
  ext x
  simpa using w x
#align category_theory.limits.cokernel_funext CategoryTheory.Limits.cokernel_funext

variable {C : Type u} [Category.{v} C] [ConcreteCategory.{v} C] {J : Type v} [SmallCategory J]
  (F : J ⥤ C) [PreservesColimit F (forget C)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConcreteCategory/Variant68802ee476e49f6160dac12098cda2e914b158e9d2bfea6051cbd1727be3f739.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f63b2e969de512b05a48d68e834484137172e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
