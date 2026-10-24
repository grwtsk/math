# IsStableUnderBaseChange.of_pullback_fst_of_isAffine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3e64089-16b7-ca70-342a-06a99d884ce9",
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
  "slug": "isstableunderbasechange-of-pullback-fst-of-isaffine--fabeada31b8a0e3f88f29f4b",
  "source": {
    "blob": "effb8e29a9443f0507ce82a46a7ad8c4c8405206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 121,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fabeada31b8a0e3f88f29f4b59f8c88d279c63483729aa427dc463571579df8e",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3e64089-16b7-ca70-342a-06a99d884ce9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–141.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Descent/Variant27d3eecd13458e1ce31a0ef7c31f6e951cc4be448e05d2b66c9e24cd543e6788.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `effb8e29a9443f0507ce82a46a7ad8c4c8405206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
