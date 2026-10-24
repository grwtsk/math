# Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b59d3f73-d698-64e9-4500-7a2be15a3d76",
  "kind": "lemma",
  "lexical_name": "Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq'",
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
  "slug": "algebra-exists-etale-completeorthogonalidempotents-forall-liesover-eq--5aaafaff1bfba1271e2d5433",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 617,
    "line": 526,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5aaafaff1bfba1271e2d5433061622b109f09a85b5573a35603863a0b509e50d",
  "verification": {
    "reference": "docs/verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b59d3f73-d698-64e9-4500-7a2be15a3d76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 526–617.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq'
    {R : Type u} {S : Type max u v} [CommRing R] [CommRing S] [Algebra R S] [Module.Finite R S]
    (p : Ideal R) [p.IsPrime] :
    ∃ (R' : Type u) (_ : CommRing R') (_ : Algebra R R') (_ : Algebra.Etale R R') (P : Ideal R')
      (_ : P.IsPrime) (_ : P.LiesOver p) (n : ℕ) (e : Fin (n + 1) → R' ⊗[R] S)
      (_ : CompleteOrthogonalIdempotents e) (P' : Fin n → Ideal (R' ⊗[R] S))
      (_ : ∀ i, (P' i).IsPrime) (_ : ∀ i, (P' i).LiesOver P),
      Function.Bijective (Ideal.ResidueField.mapₐ p P (Algebra.ofId _ _) (P.over_def p)) ∧
      (∀ i, e i.castSucc ∉ P' i) ∧
      ∀ (P'' : Ideal (R' ⊗[R] S)), P''.IsPrime → P''.LiesOver P →
        e (.last n) ∈ P'' ∧ ∀ i, e i.castSucc ∉ P'' → P'' = P' i := by
  induction h : (p.primesOver S).ncard using Nat.strong_induction_on generalizing R S with
  | h n IH =>
    have : IsArtinianRing (p.ResidueField ⊗[R] S) := IsArtinianRing.of_finite p.ResidueField _
    have hpSfin : (p.primesOver S).Finite :=
      (PrimeSpectrum.primesOverOrderIsoFiber R S p).finite_iff.mpr inferInstance
    cases n with
    | zero =>
      have := (Set.ncard_eq_zero hpSfin).mp h
      refine ⟨R, inferInstance, inferInstance, inferInstance, p, inferInstance, ⟨rfl⟩, 0, 1,
        ⟨⟨by simp [IsIdempotentElem],
          by simp only [Nat.reduceAdd, Pi.one_apply, mul_one, Subsingleton.pairwise]⟩,
          by simp⟩, nofun, nofun, nofun, ?_, nofun, ?_⟩
      · rw! [ofId_self, Ideal.ResidueField.mapₐ_id]; exact Function.bijective_id
      · exact fun P h₁ h₂ ↦ (this.le
          ⟨show (P.comap Algebra.TensorProduct.includeRight.toRingHom).IsPrime from inferInstance,
          ⟨by simp [P.over_def p, Ideal.under, Ideal.comap_comap]⟩⟩).elim
    | succ n =>
    obtain ⟨q, hq, hq'⟩ := Set.nonempty_of_ncard_ne_zero (h.trans_ne (by simp))
    obtain ⟨R', _, _, _, P, _, _, e, he, P', _, _, hP'q, heP', hpP, _, H⟩ :=
      Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq p q
    have : (P.primesOver (R' ⊗[R] S ⧸ Ideal.span {e})).ncard < n + 1 := by
      let F := Ideal.fiberIsoOfBijectiveResidueField hpP (S := S)
      refine (Ideal.ncard_primesOver_quotient_singleton_lt_of_notMem _ _
        P' heP' (F.finite_iff.mpr hpSfin)).trans_le ?_
      rw [← h, ← Nat.card_coe_set_eq, ← Nat.card_coe_set_eq, Nat.card_congr F.toEquiv]
    obtain ⟨R'', _, _, _, Q, _, _, n, e' : _ → R'' ⊗[R'] (R' ⊗[R] S ⧸ Ideal.span {e}),
      he', Q' : _ → Ideal (R'' ⊗[R'] (R' ⊗[R] S ⧸ Ideal.span {e})), _, _, hPQ, hQ', H'⟩ :=
      IH _ this (R := R') (S := R' ⊗[R] S ⧸ Ideal.span {e}) P rfl
    let : Algebra R R'' := .compHom _ (algebraMap R R')
    have : IsScalarTower R R' R'' := .of_algebraMap_eq' rfl
    let φ := Algebra.TensorProduct.map (Algebra.ofId R' R'') (AlgHom.id R S)
    let e₁ : R'' ⊗[R'] (R' ⊗[R] S ⧸ Ideal.span {e}) ≃ₐ[R''] (R'' ⊗[R] S ⧸ Ideal.span {φ e}) :=
      tensorQuotientTensorEquiv (R'' := R'') e
    obtain ⟨e'', he'', he''e'⟩ := CompleteOrthogonalIdempotents.exists_eq_comp_of_ker_eq_span
      (Ideal.Quotient.mk (Ideal.span {φ e})) (I := Fin (n + 1)) (φ e) (he.map φ) (by simp)
      (e₁ ∘ e') (he'.map e₁.toRingHom) (fun _ ↦ Ideal.Quotient.mk_surjective _)
    have he''e'' (i : _) : e₁ (e' i) = e'' i := congr_fun he''e' i
    have hψe'' (i : _) : (e' i) = e₁.symm (e'' i) := e₁.eq_symm_apply.mpr (he''e'' i)
    refine exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq_aux p q R' P e P'
      hP'q heP' hpP (fun P'' h₁ h₂ heP'' ↦ H P'' h₁ h₂ heP'') R'' Q n _
      ((CompleteOrthogonalIdempotents.equiv (finSuccEquiv _)).mpr he'') rfl
      (Q' · |>.comap (e₁.symm.toAlgHom.comp (Ideal.Quotient.mkₐ _ _))) hPQ
      (fun i ↦ by rw [Function.comp_def]; simpa [← hψe''] using hQ' i) ?_
    simp only [Function.comp_apply, finSuccEquiv_zero, finSuccEquiv_last, Fin.castSucc_succ,
      finSuccEquiv_succ]
    intro P'' heP'' _ _
    have : (P''.map (Ideal.Quotient.mk (.span {φ e}))).IsPrime :=
      Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective (by simpa [Ideal.span_le])
    have : (P''.map (Ideal.Quotient.mk (.span {φ e}))).LiesOver Q := ⟨by
      have : P'' ⊔ Ideal.span {φ e} = P'' := by simpa [Ideal.span_le]
      rw [← Ideal.under_under (B := R'' ⊗[R] S)]
      simpa [Ideal.under, Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective,
        ← RingHom.ker_eq_comap_bot, this] using P''.over_def Q⟩
    have := H' ((P''.map (Ideal.Quotient.mk (.span {φ e}))).comap e₁) inferInstance
      (inferInstanceAs <| ((P''.map (Ideal.Quotient.mk (.span {φ e}))).comap
        e₁.toAlgHom).LiesOver Q)
    have hP'' : (1 - φ e) ∉ P'' :=
      fun h ↦ ‹P''.IsPrime›.one_notMem (by convert add_mem heP'' h; ring)
    simp only [Ideal.mem_comap, he''e'',
      Ideal.mem_map_span_singleton_iff_of_isIdempotentElem (he.map φ),
      Ideal.IsPrime.mul_mem_left_iff hP''] at this
    refine ⟨this.1, fun i hi ↦ (this.2 i hi).symm ▸ ?_⟩
    -- TODO: clean-up when `Ideal.comap` is refactored to take a `RingHom`
    change _ = Ideal.comap (Ideal.Quotient.mk _) (Ideal.comap (e₁.symm.trans e₁).toRingHom _)
    simp only [AlgEquiv.symm_trans_self, RingEquiv.toRingHom_eq_coe,
      AlgEquiv.toRingEquiv_toRingHom, AlgEquiv.refl_toRingHom, Ideal.comap_id]
    rw [Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective]
    simpa [left_eq_sup, ← RingHom.ker_eq_comap_bot, Ideal.span_le] using heP''

/--
If `S` is finite over `R`, and `p` is a prime of `R`, then there exists an étale neighborhood
`(R', P)` of `p` with `κ(p) = κ(P)` such that `R' ⊗[R] S ≃ₐ[R'] R₁ × ... × Rₙ × A`,
each `Rᵢ` has a unique prime `Pᵢ` lying over `P`, and no other prime in `R' ⊗[R] S` lies over `P`.

This is merely an iterated application of `exists_etale_isIdempotentElem_forall_liesOver_eq`.
This is weaker than the corresponding statement of stacks project (in particular we asked for
`Module.Finite` instead of quasi finite when localized at `p`, so that we don't need to keep
track of this when passing to quotients and tensor products), and the only reason is that
the corresponding stronger statement is even harder to state and even more annoying to prove.
-/
@[stacks 00UL]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L526).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
