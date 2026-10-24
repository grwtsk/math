# preservesColimitsOfShape_yoneda_of_ofArrows_inj_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0f804a86dd8449d0cfb69472cbfd436d97805d34",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78449d94-e0fa-fdbd-e699-976681c72108",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6f6bee1-617b-8f82-501d-d119150fff08",
  "kind": "lemma",
  "lexical_name": "preservesColimitsOfShape_yoneda_of_ofArrows_inj_mem",
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
  "slug": "preservescolimitsofshape-yoneda-of-ofarrows-inj-mem--e767034d8a7fd251c27975c6",
  "source": {
    "blob": "0f804a86dd8449d0cfb69472cbfd436d97805d34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 303,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e767034d8a7fd251c27975c6be3f8dc6a924b4d8c30a0ee97898ae63fbdb0e41",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6f6bee1-617b-8f82-501d-d119150fff08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesColimitsOfShape_yoneda_of_ofArrows_inj_mem {ι : Type*}
    [CoproductsOfShapeDisjoint C ι] [HasPullbacks C] [HasStrictInitialObjects C]
    (hcov : ∀ {X : ι → C} {c : Cofan X} (_ : IsColimit c), Sieve.ofArrows X c.inj ∈ J c.pt)
    (htriv : ∀ (Y : C), IsInitial Y → ⊥ ∈ J Y) :
    PreservesColimitsOfShape (Discrete ι) J.yoneda := by
  apply (config := { allowSynthFailures := true }) preservesColimitsOfShape_of_discrete
  refine fun X ↦ ⟨fun {c : Cofan X} hc ↦ ⟨(Limits.Cofan.isColimitMapCoconeEquiv _ _ _).symm ?_⟩⟩
  have (i : ι) : Mono (c.inj i) := .of_coproductDisjoint hc _
  refine isColimitCofanMkYoneda _ _ (hcov hc) htriv fun hij Y a b hab ↦ ⟨?_⟩
  exact .ofCoproductDisjointOfCommSq hij hc _ _ hab

variable {D : Type*} [Category.{v'} D] (F : C ⥤ D) (J : GrothendieckTopology C)
  (K : GrothendieckTopology D)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcanonical/Variantb14a7733a354759d95d94b1d90d0292a2ae85514205cd327cc9a868d43e92e6a.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f804a86dd8449d0cfb69472cbfd436d97805d34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
