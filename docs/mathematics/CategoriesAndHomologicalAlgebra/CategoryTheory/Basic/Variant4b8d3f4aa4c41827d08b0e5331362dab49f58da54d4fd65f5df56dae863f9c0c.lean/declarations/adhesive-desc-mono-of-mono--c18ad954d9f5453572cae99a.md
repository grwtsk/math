# Adhesive.desc_mono_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6fb6bf94ba65b61b4cb77f6f8d7c05f1573378b3f6812fa5fc93594e2c4602c",
  "kind": "instance",
  "lexical_name": "Adhesive.desc_mono_of_mono",
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
  "slug": "adhesive-desc-mono-of-mono--c18ad954d9f5453572cae99a",
  "source": {
    "blob": "7d68ae6f555ac0acad03e0154631454d4fa45b1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 429,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c18ad954d9f5453572cae99a53ca23e83c157fcef16ee8c801f31a2f60385f10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6fb6bf94ba65b61b4cb77f6f8d7c05f1573378b3f6812fa5fc93594e2c4602c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–429.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Adhesive.desc_mono_of_mono [Adhesive C] {Z A B : C}
    {a : A ⟶ Z} {b : B ⟶ Z} [Mono a] [Mono b] :
    Mono (pushout.desc a b pullback.condition) where
  right_cancellation {K} f g w := by
    /- First, take the pullback of `a` and `b` and then form the pushout of the projection maps:
     `pullback a b` -> `B`
          |             |
          |            `v`
          |             |
          v             v
         `A` ---`u`---> C -/
    let u := pushout.inl (pullback.fst a b) (pullback.snd a b)
    let v := pushout.inr (pullback.fst a b) (pullback.snd a b)
    let : Mono u :=
      mono_of_isPushout_of_mono_right (of_hasPushout (pullback.fst a b) (pullback.snd a b))
    let : Mono v :=
      mono_of_isPushout_of_mono_left (of_hasPushout (pullback.fst a b) (pullback.snd a b))
    /- Then form the following pullbacks:
     L₁ --`l₁`-> K <--`l₂`-- L₂
     |           |           |
    `f₁`        `f`         `f₂`
     |           |           |
     v           v           v
    `A` --`u`--> C <--`v`-- `B`

     M₁ --`m₁`-> K <--`m₂`-- M₂
     |           |           |
    `g₁`        `g`         `g₂`
     |           |           |
     v           v           v
    `A` --`u`--> C <--`v`-- `B` -/
    let sq_f_u := of_hasPullback f u
    let sq_f_v := of_hasPullback f v
    let sq_g_u := of_hasPullback g u
    let sq_g_v := of_hasPullback g v
    /- Finally, form the following pullbacks:
     N₁₁ --m₁₁-> M₁ <--m₁₂-- N₁₂
     |           |           |
    l₁₁        `m₁`         l₁₂
     |           |           |
     v           v           v
    L₁ --`l₁`--> K <--`l₂`-- L₂
     ^           ^           ^
     |           |           |
    l₂₁        `m₂`         l₂₂
     |           |           |
    N₂₁ --m₂₁--> M₂ <--m₂₂-- N₂₂
    -/
    let l₁ := pullback.fst f u
    let f₁ := pullback.snd f u
    let l₂ := pullback.fst f v
    let f₂ := pullback.snd f v
    let m₁ := pullback.fst g u
    let g₁ := pullback.snd g u
    let m₂ := pullback.fst g v
    let g₂ := pullback.snd g v
    obtain ⟨_, f', _, _, p₁, _, h₁⟩ :=
      (van_kampen (of_hasPushout _ _)).exists_cube_filling sq_f_u sq_f_v
    let : Mono f' := by
      rw [← p₁.isoPullback_hom_fst]
      infer_instance
    /- apply `isPushout_isPullback_isPullback_hom_ext` to reduce `f = g` to `m₁ ≫ f = m₁ ≫ g`
      and `m₂ ≫ f = m₂ ≫ g`. -/
    apply isPushout_isPullback_isPullback_hom_ext (of_hasPushout _ _) sq_g_u sq_g_v
    · let sq₁₁ := of_hasPullback m₁ l₁
      let sq₁₂ := of_hasPullback m₁ l₂
      /- apply `isPushout_isPullback_isPullback_hom_ext` to reduce `m₁ ≫ f = m₁ ≫ g` to
        `m₁₁ ≫ m₁ ≫ f = m₁₁ ≫ m₁ ≫ g` and `m₁₂ ≫ m₁ ≫ f = m₁₂ ≫ m₁ ≫ g`. -/
      apply isPushout_isPullback_isPullback_hom_ext h₁ sq₁₁ sq₁₂
      · rw [pullback.condition_assoc, sq_f_u.w, sq_g_u.w, ← Category.assoc, ← Category.assoc]
        refine ?_ =≫ u
        let : Mono (u ≫ pushout.desc a b pullback.condition) := by rwa [pushout.inl_desc]
        rw [← cancel_mono (u ≫ pushout.desc a b pullback.condition), Category.assoc,
          ← sq_f_u.w_assoc, w, ← pullback.condition_assoc, Category.assoc, ← sq_g_u.w_assoc]
      · have : (pullback.fst m₁ l₂ ≫ g₁) ≫ a = (pullback.snd m₁ l₂ ≫ f₂) ≫ b := by
          rw [← _ ≫= pushout.inl_desc a b pullback.condition, Category.assoc, ← sq_g_u.w_assoc,
            sq₁₂.w_assoc, ← w, Category.assoc, pullback.condition_assoc, pushout.inr_desc]
        rw [sq₁₂.w_assoc, sq_f_v.w, ← Category.assoc, ← pullback.lift_snd_assoc _ _ this,
          ← pushout.condition, pullback.lift_fst_assoc _ _ this, Category.assoc, sq_g_u.w]
    · let sq₂₁ := of_hasPullback m₂ l₁
      let sq₂₂ := of_hasPullback m₂ l₂
      /- apply `isPushout_isPullback_isPullback_hom_ext` to reduce `m₂ ≫ f = m₂ ≫ g` to
        `m₂₁ ≫ m₂ ≫ f = m₂₁ ≫ m₂ ≫ g` and `m₂₂ ≫ m₂ ≫ f = m₂₂ ≫ m₂ ≫ g`. -/
      apply isPushout_isPullback_isPullback_hom_ext h₁ sq₂₁ sq₂₂
      · have : (pullback.snd m₂ l₁ ≫ f₁) ≫ a = (pullback.fst m₂ l₁ ≫ g₂) ≫ b := by
          rw [← _ ≫= pushout.inl_desc a b pullback.condition, Category.assoc, ← sq_f_u.w_assoc,
            w, ← sq₂₁.w_assoc, Category.assoc, sq_g_v.w_assoc, pushout.inr_desc]
        rw [sq₂₁.w_assoc, sq_f_u.w, ← Category.assoc, ← pullback.lift_fst_assoc _ _ this,
          pushout.condition, pullback.lift_snd_assoc _ _ this, sq_g_v.w, Category.assoc]
      · rw [sq₂₂.w_assoc, sq_f_v.w, sq_g_v.w, ← Category.assoc, ← Category.assoc]
        refine ?_ =≫ v
        let : Mono (v ≫ pushout.desc a b pullback.condition) := by rwa [pushout.inr_desc]
        rw [← cancel_mono (v ≫ pushout.desc a b pullback.condition), Category.assoc,
          ← sq_f_v.w_assoc, w, ← pullback.condition_assoc, Category.assoc,
          ← sq_g_v.w_assoc]

/-- In an adhesive category, if `a : A ⟶ Z` and `b : B ⟶ Z` are monomorphisms, and we have
`IsPullback p₁ p₂ a b` and `IsPushout p₁ p₂ q₁ q₂`, then the induced map from the pushout into `Z`
is a monomorphism. See also `CategoryTheory.Adhesive.desc_mono_of_mono`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4b8d3f4aa4c41827d08b0e5331362dab49f58da54d4fd65f5df56dae863f9c0c.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d68ae6f555ac0acad03e0154631454d4fa45b1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
