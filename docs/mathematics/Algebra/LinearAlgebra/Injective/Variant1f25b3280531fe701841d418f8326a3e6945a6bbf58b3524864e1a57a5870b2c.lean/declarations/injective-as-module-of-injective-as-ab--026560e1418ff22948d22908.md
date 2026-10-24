# injective_as_module_of_injective_as_Ab

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6905268c0fc3f38ee044e167d369ca0b4c2f6e66",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0b28aa24-1e78-ad51-5da6-12dec2965934",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3a16ec2-8681-f7e5-d82f-0d46890110ab",
  "kind": "theorem",
  "lexical_name": "injective_as_module_of_injective_as_Ab",
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
  "slug": "injective-as-module-of-injective-as-ab--026560e1418ff22948d22908",
  "source": {
    "blob": "6905268c0fc3f38ee044e167d369ca0b4c2f6e66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:026560e1418ff22948d22908abf993e26618efa2934540d22681e9b7ce09c51e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a16ec2-8681-f7e5-d82f-0d46890110ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem injective_as_module_of_injective_as_Ab [Injective (⟨A,inferInstance⟩ : AddCommGroupCat)] :
    Injective (⟨A⟩ : ModuleCat ℤ) :=
  { factors := fun {X} {Y} g f m => by
      let G : (⟨X,inferInstance⟩ : AddCommGroupCat) ⟶ ⟨A,inferInstance⟩ :=
        @LinearMap.toAddMonoidHom _ _ _ _ _ _ _ _ (_) _ _ g
      let F : (⟨X,inferInstance⟩ : AddCommGroupCat) ⟶ ⟨Y,inferInstance⟩ :=
        @LinearMap.toAddMonoidHom _ _ _ _ _ _ _ _ (_) (_) _ f
      have : Mono F := by
        rw [mono_iff_injective]
        intro _ _ h
        exact ((ModuleCat.mono_iff_injective f).mp m) h
      refine ⟨ @LinearMap.mk _ _ _ _ _ _ _ _ _ (_) _ (Injective.factorThru G F).toAddHom ?_ , ?_⟩
      change ∀ r, ∀ x, (Injective.factorThru G F).toFun _ = _ • (Injective.factorThru G F).toFun _
      · intro m x
        rw [AddMonoidHom.toFun_eq_coe, RingHom.id_apply]
        induction' m using Int.induction_on with n hn n hn
        · rw [zero_smul]
          convert map_zero (M := Y) (N := A) (F := Y →+ A) _
          -- Porting note: hell of non-defeq instances; somehow this worked
          refine @zero_smul ℤ Y (MonoidWithZero.toZero) (AddMonoid.toZero) ?_ x
          -- Porting note: was simp only [add_smul, map_add, hn, one_smul]
        · conv_rhs => rw [add_smul]
          rw [← hn, one_smul, ←map_add]
          congr
          convert @add_smul ℤ Y _ _ ?_ n 1 x
          refine @one_smul ℤ Y _ ?_ x|>.symm
          -- Porting note: was simp only [add_smul, map_add, hn, one_smul]
        · conv_rhs => rw [sub_smul]
          rw [← hn, one_smul, ←map_sub]
          congr
          convert @sub_smul ℤ Y _ _ ?_ (-n) 1 x
          refine @one_smul ℤ Y _ ?_ x|>.symm
      ext x
      have := congrFun (congrArg (fun H => H.toFun) (Injective.comp_factorThru G F)) x
      simp only [ModuleCat.coe_comp, Function.comp_apply] at this
      apply this }
#align AddCommGroup.injective_as_module_of_injective_as_Ab AddCommGroupCat.injective_as_module_of_injective_as_Ab

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Injective/Variant1f25b3280531fe701841d418f8326a3e6945a6bbf58b3524864e1a57a5870b2c.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6905268c0fc3f38ee044e167d369ca0b4c2f6e66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
