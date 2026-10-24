# mono_of_base_injective_of_stalk_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c28d1722e1de420a0ddb2d31e82038bc40dea62d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b4/b4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f49e22c7-19b0-524c-9da9-20748eed2d58",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e02d72b8-bd08-3894-8ea2-cd1e875bd3c1",
  "kind": "lemma",
  "lexical_name": "mono_of_base_injective_of_stalk_epi",
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
  "slug": "mono-of-base-injective-of-stalk-epi--13e7fd3db670d583118aaa48",
  "source": {
    "blob": "c28d1722e1de420a0ddb2d31e82038bc40dea62d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 258,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13e7fd3db670d583118aaa481edd1c2330333b178af3c68055c11638a165083a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e02d72b8-bd08-3894-8ea2-cd1e875bd3c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mono_of_base_injective_of_stalk_epi {X Y : SheafedSpace C} (f : X ⟶ Y)
    (h₁ : Function.Injective f.hom.base)
    (h₂ : ∀ x, Epi (f.hom.stalkMap x)) : Mono f := by
  constructor
  intro Z ⟨g, gc⟩ ⟨h, hc⟩ e
  obtain rfl : g = h := ConcreteCategory.hom_ext _ _ fun x ↦ h₁ congr(($e).hom.base x)
  refine SheafedSpace.hom_stalk_ext ⟨g, gc⟩ ⟨g, hc⟩ rfl fun x ↦ ?_
  rw [← cancel_epi (f.hom.stalkMap (g x)), stalkCongr_hom, stalkSpecializes_refl, Category.id_comp,
    ← PresheafedSpace.stalkMap.comp ⟨g, gc⟩ f.hom, ← PresheafedSpace.stalkMap.comp ⟨g, hc⟩ f.hom]
  replace e := congr_arg InducedCategory.Hom.hom e
  congr 1

attribute [local ext] DFunLike.ext in
include instCC in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafedSpace/Variantb4b5dff4f14b04110e8a082a7665df4ba7c197aa1d061d5002cea6efdd5e42f9.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c28d1722e1de420a0ddb2d31e82038bc40dea62d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
