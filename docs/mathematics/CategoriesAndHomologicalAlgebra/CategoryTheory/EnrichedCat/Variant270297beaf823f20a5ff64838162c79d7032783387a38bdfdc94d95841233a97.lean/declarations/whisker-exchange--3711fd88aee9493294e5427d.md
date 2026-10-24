# whisker_exchange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2e311504068010a5e285f73959037298c20c249",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/27/270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2821451a-2ea9-e9a4-54fe-8fcd3de75e17",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f1ff867-934f-9261-5f52-141c42642cb2",
  "kind": "lemma",
  "lexical_name": "whisker_exchange",
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
  "slug": "whisker-exchange--3711fd88aee9493294e5427d",
  "source": {
    "blob": "b2e311504068010a5e285f73959037298c20c249",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnrichedCat/Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3711fd88aee9493294e5427d817598c2d52af4e9473268c2dad7bab7b00ac806",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnrichedCat/Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f1ff867-934f-9261-5f52-141c42642cb2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whisker_exchange {F G : EnrichedFunctor V C D} {H I : EnrichedFunctor V D E}
    (α : F ⟶ G) (β : H ⟶ I) :
    whiskerLeft F β ≫ whiskerRight α I = whiskerRight α H ≫ whiskerLeft G β := by
  ext X
  simp only [EnrichedFunctor.forget_obj, EnrichedFunctor.comp_obj,
    EnrichedFunctor.category_comp_out, NatTrans.comp_app, whiskerLeft_out_app,
    whiskerRight_out_app]
  exact (β.out.naturality (α.out.app (ForgetEnrichment.of V X))).symm

set_option backward.isDefEq.respectTransparency.types false in
/-- The bicategory structure on `EnrichedCat V` for a monoidal category `V`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EnrichedCat/Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EnrichedCat/Variant270297beaf823f20a5ff64838162c79d7032783387a38bdfdc94d95841233a97.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e311504068010a5e285f73959037298c20c249` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
