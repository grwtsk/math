# FractionalIdeal.isPrincipal.of_finite_maximals_of_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:90e9c396-db26-05e8-0049-9c7b8ae57a4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d1bccc8f-7f3f-e03a-6e8d-d5f12a8b82c1",
  "kind": "theorem",
  "lexical_name": "FractionalIdeal.isPrincipal.of_finite_maximals_of_inv",
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
  "slug": "fractionalideal-isprincipal-of-finite-maximals-of-inv--7901938a6f83b1ebd33b529f",
  "source": {
    "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 108,
    "path": "GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7901938a6f83b1ebd33b529f7f9e15f0404b2a8425e7f8b517353069b770cc5a",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1bccc8f-7f3f-e03a-6e8d-d5f12a8b82c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FractionalIdeal.isPrincipal.of_finite_maximals_of_inv {A : Type*} [CommRing A]
    [Algebra R A] {S : Submonoid R} [IsLocalization S A] (hS : S ≤ R⁰)
    (hf : {I : Ideal R | I.IsMaximal}.Finite) (I I' : FractionalIdeal S A) (hinv : I * I' = 1) :
    Submodule.IsPrincipal (I : Submodule R A) := by
  have hinv' := hinv
  rw [Subtype.ext_iff, val_eq_coe, coe_mul] at hinv
  let s := hf.toFinset
  haveI := Classical.decEq (Ideal R)
  have coprime : ∀ M ∈ s, ∀ M' ∈ s.erase M, M ⊔ M' = ⊤ := by
    simp_rw [s, Finset.mem_erase, hf.mem_toFinset]
    rintro M hM M' ⟨hne, hM'⟩
    exact Ideal.IsMaximal.coprime_of_ne hM hM' hne.symm
  have nle : ∀ M ∈ s, ¬⨅ M' ∈ s.erase M, M' ≤ M := fun M hM =>
    left_lt_sup.1
      ((hf.mem_toFinset.1 hM).ne_top.lt_top.trans_eq (Ideal.sup_iInf_eq_top <| coprime M hM).symm)
  have : ∀ M ∈ s, ∃ a ∈ I, ∃ b ∈ I', a * b ∉ IsLocalization.coeSubmodule A M := by
    intro M hM; by_contra! h
    obtain ⟨x, hx, hxM⟩ :=
      SetLike.exists_of_lt
        ((IsLocalization.coeSubmodule_strictMono hS (hf.mem_toFinset.1 hM).ne_top.lt_top).trans_eq
          hinv.symm)
    exact hxM (Submodule.mul_le.2 h hx)
  choose! a ha b hb hm using this
  choose! u hu hum using fun M hM => SetLike.not_le_iff_exists.1 (nle M hM)
  let v := ∑ M ∈ s, u M • b M
  have hv : v ∈ I' := Submodule.sum_mem _ fun M hM => Submodule.smul_mem _ _ <| hb M hM
  refine
    FractionalIdeal.isPrincipal_of_unit_of_comap_mul_span_singleton_eq_top
      (Units.mkOfMulEqOne I I' hinv') hv (of_not_not fun h => ?_)
  obtain ⟨M, hM, hJM⟩ := Ideal.exists_le_maximal _ h
  replace hM := hf.mem_toFinset.2 hM
  have : ∀ a ∈ I, ∀ b ∈ I', ∃ c, algebraMap R _ c = a * b := by
    intro a ha b hb; have hi := hinv.le
    obtain ⟨c, -, hc⟩ := hi (Submodule.mul_mem_mul ha hb)
    exact ⟨c, hc⟩
  have hmem : a M * v ∈ IsLocalization.coeSubmodule A M := by
    obtain ⟨c, hc⟩ := this _ (ha M hM) v hv
    refine IsLocalization.coeSubmodule_mono _ hJM ⟨c, ?_, hc⟩
    have := Submodule.mul_mem_mul (ha M hM) (Submodule.mem_span_singleton_self v)
    rwa [← hc] at this
  simp_rw [v, Finset.mul_sum, mul_smul_comm] at hmem
  rw [← s.add_sum_erase _ hM, Submodule.add_mem_iff_left] at hmem
  · refine hm M hM ?_
    obtain ⟨c, hc : algebraMap R A c = a M * b M⟩ := this _ (ha M hM) _ (hb M hM)
    rw [← hc] at hmem ⊢
    rw [Algebra.smul_def, ← map_mul] at hmem
    obtain ⟨d, hdM, he⟩ := hmem
    rw [IsLocalization.injective _ hS he] at hdM
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specify the value of `f`
    exact Submodule.mem_map_of_mem (f := Algebra.linearMap _ _)
        (((hf.mem_toFinset.1 hM).isPrime.mem_or_mem hdM).resolve_left <| hum M hM)
  · refine Submodule.sum_mem _ fun M' hM' => ?_
    rw [Finset.mem_erase] at hM'
    obtain ⟨c, hc⟩ := this _ (ha M hM) _ (hb M' hM'.2)
    rw [← hc, Algebra.smul_def, ← map_mul]
    specialize hu M' hM'.2
    simp_rw [Ideal.mem_iInf, Finset.mem_erase] at hu
    -- Note: https://github.com/leanprover-community/mathlib4/pull/8386 had to specify the value of `f`
    exact Submodule.mem_map_of_mem (f := Algebra.linearMap _ _)
      (M.mul_mem_right _ <| hu M ⟨hM'.1.symm, hM⟩)

/-- An invertible ideal in a commutative ring with finitely many maximal ideals is principal.

https://math.stackexchange.com/a/95857 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f700c6a30abaa3f68b461753f86cd8a17cda18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
