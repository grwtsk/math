# FractionalIdeal.isPrincipal.of_finite_maximals_of_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63722f20-3865-b7d2-b007-f8e5089ef15d",
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
  "slug": "fractionalideal-isprincipal-of-finite-maximals-of-inv--81e40cccadf24cc5196623b8",
  "source": {
    "blob": "08f39445e525f0bdb24ee17909794b769e3784b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 97,
    "path": "GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81e40cccadf24cc5196623b8d2a0aad21a714b0360873d27ed74a72e8887aea6",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63722f20-3865-b7d2-b007-f8e5089ef15d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FractionalIdeal.isPrincipal.of_finite_maximals_of_inv {A : Type*} [CommRing A]
    [Algebra R A] {S : Submonoid R} [IsLocalization S A] (hS : S ≤ R⁰)
    (hf : {I : Ideal R | I.IsMaximal}.Finite) (I I' : FractionalIdeal S A) (hinv : I * I' = 1) :
    Submodule.IsPrincipal (I : Submodule R A) := by
  have hinv' := hinv
  rw [coe_ext_iff, coe_mul] at hinv
  let s := hf.toFinset
  have := Classical.decEq (Ideal R)
  have coprime : ∀ M ∈ s, ∀ M' ∈ s.erase M, M ⊔ M' = ⊤ := by
    simp_rw [s, Finset.mem_erase, hf.mem_toFinset]
    rintro M hM M' ⟨hne, hM'⟩
    exact Ideal.IsMaximal.coprime_of_ne hM hM' hne.symm
  have nle : ∀ M ∈ s, ¬⨅ M' ∈ s.erase M, M' ≤ M := fun M hM =>
    left_lt_sup.1
      ((hf.mem_toFinset.1 hM).lt_top.trans_eq (Ideal.sup_iInf_eq_top <| coprime M hM).symm)
  have : ∀ M ∈ s, ∃ a ∈ I, ∃ b ∈ I', a * b ∉ IsLocalization.coeSubmodule A M := by
    intro M hM; by_contra! h
    obtain ⟨x, hx, hxM⟩ :=
      SetLike.exists_of_lt
        ((IsLocalization.coeSubmodule_strictMono hS (hf.mem_toFinset.1 hM).lt_top).trans_eq
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
    exact Submodule.mem_map_of_mem <|
        ((hf.mem_toFinset.1 hM).isPrime.mem_or_mem hdM).resolve_left <| hum M hM
  · refine Submodule.sum_mem _ fun M' hM' => ?_
    rw [Finset.mem_erase] at hM'
    obtain ⟨c, hc⟩ := this _ (ha M hM) _ (hb M' hM'.2)
    rw [← hc, Algebra.smul_def, ← map_mul]
    specialize hu M' hM'.2
    simp_rw [Ideal.mem_iInf, Finset.mem_erase] at hu
    exact Submodule.mem_map_of_mem <| M.mul_mem_right _ <| hu M ⟨hM'.1.symm, hM⟩

/-- An invertible ideal in a commutative ring with finitely many maximal ideals is principal.

https://math.stackexchange.com/a/95857 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant5cb2caf96257ebce1f42dfb8e1625a3749b71be8a79a4512758cd4e521c45d5e.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08f39445e525f0bdb24ee17909794b769e3784b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
