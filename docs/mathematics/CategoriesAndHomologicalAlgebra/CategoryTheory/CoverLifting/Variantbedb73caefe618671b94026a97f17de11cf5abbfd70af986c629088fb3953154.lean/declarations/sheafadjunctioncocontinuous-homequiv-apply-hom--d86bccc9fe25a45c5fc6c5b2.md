# sheafAdjunctionCocontinuous_homEquiv_apply_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a57226c0-1dd6-b2cb-4a32-555af3dbcb40",
  "kind": "lemma",
  "lexical_name": "sheafAdjunctionCocontinuous_homEquiv_apply_hom",
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
  "slug": "sheafadjunctioncocontinuous-homequiv-apply-hom--d86bccc9fe25a45c5fc6c5b2",
  "source": {
    "blob": "6aa3db1f7bbcd01c46d6a27136857f8519498b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 369,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d86bccc9fe25a45c5fc6c5b25d6e3a0cd56cbd8f9b744155845a6996df352e9b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a57226c0-1dd6-b2cb-4a32-555af3dbcb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafAdjunctionCocontinuous_homEquiv_apply_hom {F : Sheaf K A} {H : Sheaf J A}
    (f : (G.sheafPushforwardContinuous A J K).obj F ⟶ H) :
    ((G.sheafAdjunctionCocontinuous A J K).homEquiv F H f).hom =
      (G.op.ranAdjunction A).homEquiv F.obj H.obj f.hom :=
  ((sheafToPresheaf K A).congr_map
    (((G.op.ranAdjunction A).restrictFullyFaithful_homEquiv_apply
      (fullyFaithfulSheafToPresheaf K A) (fullyFaithfulSheafToPresheaf J A)
      (G.sheafPushforwardContinuousCompSheafToPresheafIso A J K).symm
      (G.sheafPushforwardCocontinuousCompSheafToPresheafIso A J K).symm f))).trans (by
        dsimp
        erw [Functor.map_id, Category.comp_id, Category.id_comp,
          Adjunction.homEquiv_unit])

@[deprecated (since := "2026-03-05")]
alias sheafAdjunctionCocontinuous_homEquiv_apply_val :=
  sheafAdjunctionCocontinuous_homEquiv_apply_hom

variable [HasWeakSheafify J A] [HasWeakSheafify K A]

/-- The natural isomorphism exhibiting compatibility between pushforward and sheafification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variantbedb73caefe618671b94026a97f17de11cf5abbfd70af986c629088fb3953154.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa3db1f7bbcd01c46d6a27136857f8519498b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
