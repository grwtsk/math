# sheafAdjunctionCocontinuous_homEquiv_apply_val

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 289,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e4599ee-9e7b-5529-1f7d-07c049990f0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef353528-4bb6-49c9-8512-4689de6c8f5e",
  "kind": "lemma",
  "lexical_name": "sheafAdjunctionCocontinuous_homEquiv_apply_val",
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
  "slug": "sheafadjunctioncocontinuous-homequiv-apply-val--b92b1f7ebddf21c3814cc922",
  "source": {
    "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 304,
    "line": 289,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b92b1f7ebddf21c3814cc92270434b0a33d5d832f4d2ce8681fb9f3bda7cf25c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef353528-4bb6-49c9-8512-4689de6c8f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 289–304.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafAdjunctionCocontinuous_homEquiv_apply_val {F : Sheaf K A} {H : Sheaf J A}
    (f : (G.sheafPushforwardContinuous A J K).obj F ⟶ H) :
    ((G.sheafAdjunctionCocontinuous A J K).homEquiv F H f).val =
      (G.op.ranAdjunction A).homEquiv F.val H.val f.val :=
  ((sheafToPresheaf K A).congr_map
    (((G.op.ranAdjunction A).restrictFullyFaithful_homEquiv_apply
      (fullyFaithfulSheafToPresheaf K A) (fullyFaithfulSheafToPresheaf J A)
      (G.sheafPushforwardContinuousCompSheafToPresheafIso A J K).symm
      (G.sheafPushforwardCocontinuousCompSheafToPresheafIso A J K).symm f))).trans (by
        dsimp
        erw [Functor.map_id, Category.comp_id, Category.id_comp,
          Adjunction.homEquiv_unit])

variable [HasWeakSheafify J A] [HasWeakSheafify K A]

/-- The natural isomorphism exhibiting compatibility between pushforward and sheafification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean#L289).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc57447363293835136c76bb93449f1a5d0c4908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
