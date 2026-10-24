# sheafHomSectionsEquiv_symm_apply_coe_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1b798e48eb161ce8f65e7b288d0c96ec864566fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daa09514-4cc5-0c7b-c6fb-4fe41b423883",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:979cea6b-4c0e-7f97-4e43-8d9a28818727",
  "kind": "lemma",
  "lexical_name": "sheafHomSectionsEquiv_symm_apply_coe_apply",
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
  "slug": "sheafhomsectionsequiv-symm-apply-coe-apply--0ac2c4fe8b40254183494ef6",
  "source": {
    "blob": "1b798e48eb161ce8f65e7b288d0c96ec864566fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 245,
    "line": 242,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ac2c4fe8b40254183494ef6a8ca122c87759eccc5abb496c447da326817e951",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:979cea6b-4c0e-7f97-4e43-8d9a28818727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafHomSectionsEquiv_symm_apply_coe_apply {F G : Sheaf J A} (φ : F ⟶ G) (X : Cᵒᵖ) :
    ((sheafHomSectionsEquiv F G).symm φ).1 X = (J.overPullback A X.unop).map φ := rfl

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafHom/Variant81e4700925fcb569eabebcc624730133f88924ef882773578dba3ab24686e79c.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b798e48eb161ce8f65e7b288d0c96ec864566fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
