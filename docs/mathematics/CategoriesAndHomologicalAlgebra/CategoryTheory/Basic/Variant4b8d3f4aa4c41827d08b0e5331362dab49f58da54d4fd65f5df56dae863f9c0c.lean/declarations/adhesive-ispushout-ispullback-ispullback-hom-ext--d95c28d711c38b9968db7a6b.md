# Adhesive.isPushout_isPullback_isPullback_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d68ae6f555ac0acad03e0154631454d4fa45b1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e279c0ae-82c6-cc29-aa12-0b915c429391",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d9c25f5a-fa2d-2117-61c9-5868668e972a",
  "kind": "lemma",
  "lexical_name": "Adhesive.isPushout_isPullback_isPullback_hom_ext",
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
  "slug": "adhesive-ispushout-ispullback-ispullback-hom-ext--d95c28d711c38b9968db7a6b",
  "source": {
    "blob": "7d68ae6f555ac0acad03e0154631454d4fa45b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 330,
    "line": 317,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d95c28d711c38b9968db7a6b3e3de54e3e7d43082e8830442fb1732c21ec2fab",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9c25f5a-fa2d-2117-61c9-5868668e972a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–330.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Adhesive.isPushout_isPullback_isPullback_hom_ext [Adhesive C] [Mono f] (H : IsPushout f g h i)
    {X' Y' Z' : C} {h' : X' ⟶ Z'} {i' : Y' ⟶ Z'}
    {αX : X' ⟶ X} {αY : Y' ⟶ Y} {αZ : Z' ⟶ Z}
    {W : C} {f₁ f₂ : Z' ⟶ W}
    (hh : IsPullback h' αX αZ h) (hi : IsPullback i' αY αZ i)
    (h'_w : h' ≫ f₁ = h' ≫ f₂) (i'_w : i' ≫ f₁ = i' ≫ f₂) : f₁ = f₂ :=
  IsPushout.isVanKampen_isPullback_isPullback_hom_ext (Adhesive.van_kampen H) hh hi h'_w i'_w

attribute [local instance] Limits.hasPullback_symmetry in
open IsPullback IsPushout pullback pushout in
/-- If `a : A ⟶ Z` and `b : B ⟶ Z` are monomorphisms in an adhesive category, then the map
`pushout (pullback.fst a b) (pullback.snd a b) ⟶ Z` induced by their pullback is a monomorphism.
See Theorem 5.1 in [Lack and Sobociński's *Adhesive Categories*][adhesive2004]. See
also `CategoryTheory.IsPushout.desc_mono_of_isPullback`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d68ae6f555ac0acad03e0154631454d4fa45b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
