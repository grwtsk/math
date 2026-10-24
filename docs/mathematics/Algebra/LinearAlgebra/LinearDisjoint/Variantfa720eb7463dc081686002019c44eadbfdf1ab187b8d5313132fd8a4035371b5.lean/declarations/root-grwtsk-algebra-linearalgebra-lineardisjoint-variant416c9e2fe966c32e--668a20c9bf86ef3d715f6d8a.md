# _root_.GRWTSK.Algebra.LinearAlgebra.LinearDisjoint.Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.Algebra.TensorProduct.not_isField_of_transcendental

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b745d7d4-067d-d70b-84a6-84ab880d5b9a",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.LinearDisjoint.Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.Algebra.TensorProduct.not_isField_of_transcendental",
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
  "slug": "root-grwtsk-algebra-linearalgebra-lineardisjoint-variant416c9e2fe966c32e--668a20c9bf86ef3d715f6d8a",
  "source": {
    "blob": "85213be5bb216bae650938535c70ffc17d762a1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 535,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:668a20c9bf86ef3d715f6d8ae69013c988f82829debc8d13dfad677ab61b0a79",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b745d7d4-067d-d70b-84a6-84ab880d5b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.LinearAlgebra.LinearDisjoint.Variant416c9e2fe966c32ebde47cfbfc7a39d30ad4968c991d5157cca95cf0e4ae738a.Algebra.TensorProduct.not_isField_of_transcendental
    (A : Type v) [CommRing A] (B : Type w) [CommRing B] [Algebra R A] [Algebra R B]
    [Module.Flat R A] [Module.Flat R B] [Algebra.Transcendental R A] [Algebra.Transcendental R B] :
    ¬IsField (A ⊗[R] B) := fun H ↦ by
  letI := H.toField
  obtain ⟨a, hta⟩ := ‹Algebra.Transcendental R A›
  obtain ⟨b, htb⟩ := ‹Algebra.Transcendental R B›
  have ha : Function.Injective (algebraMap R A) := Algebra.injective_of_transcendental
  have hb : Function.Injective (algebraMap R B) := Algebra.injective_of_transcendental
  let fa : A →ₐ[R] A ⊗[R] B := Algebra.TensorProduct.includeLeft
  let fb : B →ₐ[R] A ⊗[R] B := Algebra.TensorProduct.includeRight
  have hfa : Function.Injective fa := Algebra.TensorProduct.includeLeft_injective hb
  have hfb : Function.Injective fb := Algebra.TensorProduct.includeRight_injective ha
  haveI := hfa.isDomain fa.toRingHom
  haveI := hfb.isDomain fb.toRingHom
  haveI := ha.isDomain _
  haveI : Module.Flat R (toSubmodule fa.range) :=
    .of_linearEquiv (AlgEquiv.ofInjective fa hfa).symm.toLinearEquiv
  have key1 : Module.rank R ↥(fa.range ⊓ fb.range) ≤ 1 :=
    (include_range R A B).rank_inf_le_one_of_flat_left
  let ga : R[X] →ₐ[R] A := aeval a
  let gb : R[X] →ₐ[R] B := aeval b
  let gab := fa.comp ga
  replace hta : Function.Injective ga := transcendental_iff_injective.1 hta
  replace htb : Function.Injective gb := transcendental_iff_injective.1 htb
  have htab : Function.Injective gab := hfa.comp hta
  algebraize_only [ga.toRingHom, gb.toRingHom]
  let f := Algebra.TensorProduct.mapOfCompatibleSMul R[X] R A B
  haveI := Algebra.TensorProduct.nontrivial_of_algebraMap_injective_of_isDomain R[X] A B hta htb
  have hf : Function.Injective f := RingHom.injective _
  have key2 : gab.range ≤ fa.range ⊓ fb.range := by
    simp_rw [gab, ga, ← aeval_algHom]
    rw [Algebra.TensorProduct.includeLeft_apply, ← Algebra.adjoin_singleton_eq_range_aeval]
    simp_rw [Algebra.adjoin_le_iff, Set.singleton_subset_iff, Algebra.coe_inf, Set.mem_inter_iff,
      AlgHom.coe_range, Set.mem_range]
    refine ⟨⟨a, by simp [fa]⟩, ⟨b, hf ?_⟩⟩
    simp_rw [fb, Algebra.TensorProduct.includeRight_apply, f,
      Algebra.TensorProduct.mapOfCompatibleSMul_tmul]
    convert ← (TensorProduct.smul_tmul (R := R[X]) (R' := R[X]) (M := A) (N := B) X 1 1).symm <;>
      (simp_rw [Algebra.smul_def, mul_one]; exact aeval_X _)
  have key3 := (Subalgebra.inclusion key2).comp (AlgEquiv.ofInjective gab htab).toAlgHom
    |>.toLinearMap.lift_rank_le_of_injective
      ((Subalgebra.inclusion_injective key2).comp (AlgEquiv.injective _))
  have := lift_uzero.{u} _ ▸ (basisMonomials R).mk_eq_rank.symm
  simp only [this, mk_eq_aleph0, lift_aleph0, aleph0_le_lift] at key3
  exact (key3.trans key1).not_lt one_lt_aleph0

variable (R) in
/-- If `A` and `B` are flat `R`-algebras, such that `A ⊗[R] B` is a field, then one of `A` and `B`
is algebraic over `R`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearDisjoint/Variantfa720eb7463dc081686002019c44eadbfdf1ab187b8d5313132fd8a4035371b5.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85213be5bb216bae650938535c70ffc17d762a1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
