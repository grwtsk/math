# isLeftDerivedFunctor_of_isIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8e5d27d6-f97b-2e18-fe70-9d7db56db26d",
  "kind": "lemma",
  "lexical_name": "isLeftDerivedFunctor_of_isIso",
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
  "slug": "isleftderivedfunctor-of-isiso--c88a3beb362089b1a4938930",
  "source": {
    "blob": "4c8f015a93724ee934baf8e1a561a121493e8d56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 135,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c88a3beb362089b1a49389304921866b158ce983216d9242beb2778f6204a425",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e5d27d6-f97b-2e18-fe70-9d7db56db26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLeftDerivedFunctor_of_isIso (hα : ∀ (X₁ : C₁), IsIso (α.app (Φ.functor.obj X₁))) :
    LF.IsLeftDerivedFunctor α W₂ := by
  have := h.hasPointwiseLeftDerivedFunctor
  have := h.isIso' (F.totalLeftDerivedCounit L₂ W₂)
  have := Φ.essSurj_of_hasLeftResolutions L₂
  let φ := (F.totalLeftDerived L₂ W₂).leftDerivedLift (F.totalLeftDerivedCounit L₂ W₂) W₂ LF α
  have hφ : Functor.whiskerLeft L₂ φ ≫ F.totalLeftDerivedCounit L₂ W₂ = α :=
    (F.totalLeftDerived L₂ W₂).leftDerived_fac (F.totalLeftDerivedCounit L₂ W₂) W₂ LF α
  have : IsIso φ := by
    rw [NatTrans.isIso_iff_isIso_app]
    intro Y₂
    rw [NatTrans.isIso_app_iff_of_iso φ ((Φ.functor ⋙ L₂).objObjPreimageIso Y₂).symm]
    dsimp
    simp only [← hφ, NatTrans.comp_app, Functor.whiskerLeft_app, isIso_comp_right_iff] at hα
    infer_instance
  rw [← Functor.isLeftDerivedFunctor_iff_of_iso (F.totalLeftDerivedCounit L₂ W₂) α W₂
    (asIso φ).symm (by cat_disch)]
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Derives/Variant28f9b7f4055e2a40ce1b51f73edfb8dba6baba2fc23d18e30ac5150cec305836.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c8f015a93724ee934baf8e1a561a121493e8d56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
