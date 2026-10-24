# IsStableUnderBaseChange.of_pullback_fst_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:163bfe01-f4ea-7a4c-4894-a860aba03c4b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9283cb67-361c-c992-6812-3c208159685a",
  "kind": "lemma",
  "lexical_name": "IsStableUnderBaseChange.of_pullback_fst_of_isAffine",
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
  "slug": "isstableunderbasechange-of-pullback-fst-of-isaffine--5020971e5ca58da8650d342b",
  "source": {
    "blob": "8418f042f1c23bda88cc337cc16da80f73f35c33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 113,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5020971e5ca58da8650d342b9c013d08c432866588cf052a6499667124250429",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9283cb67-361c-c992-6812-3c208159685a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsStableUnderBaseChange.of_pullback_fst_of_isAffine [P'.RespectsIso]
    [P'.IsStableUnderComposition] [P.IsStableUnderBaseChange]
    (H : ∀ {R : CommRingCat.{u}} {S X : Scheme.{u}} (f : Spec R ⟶ S) (g : X ⟶ S),
      P' f → P (pullback.fst f g) → P g) {X Y Z T : Scheme.{u}} [IsAffine T] (p : T ⟶ X)
    (hp : P' p) (f : X ⟶ Z) (g : Y ⟶ Z) (h : P' f) (hf : P (pullback.fst f g)) : P g := by
  apply H ((T.isoSpec.inv ≫ p) ≫ f)
  · rw [Category.assoc, P'.cancel_left_of_respectsIso]
    exact P'.comp_mem _ _ hp h
  · rw [← pullbackRightPullbackFstIso_inv_fst f g (T.isoSpec.inv ≫ p),
        P.cancel_left_of_respectsIso]
    exact P.pullback_fst _ _ hf

open Opposite

variable [P'.IsStableUnderBaseChange] [P'.IsStableUnderComposition] [P.IsStableUnderBaseChange]
variable
  (H₁ : (@IsLocalIso ⊓ @Surjective : MorphismProperty Scheme) ≤ P')
  (H₂ : ∀ {R S : CommRingCat.{u}} {f : R ⟶ S}, P' (Spec.map f) → Q' f.hom)

set_option backward.isDefEq.respectTransparency.types false in
include H₁ in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant5889bb805461725c5ceb9ef16547f1fd04b1db8eecd10ea483aaf1e585b17595.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8418f042f1c23bda88cc337cc16da80f73f35c33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
