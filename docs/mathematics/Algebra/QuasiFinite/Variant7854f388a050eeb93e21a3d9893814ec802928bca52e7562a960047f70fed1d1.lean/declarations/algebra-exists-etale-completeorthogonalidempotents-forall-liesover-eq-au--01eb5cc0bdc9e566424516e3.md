# Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b7c8641-8500-a673-aa95-a55742a4b229",
  "kind": "theorem",
  "lexical_name": "Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq_aux",
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
  "slug": "algebra-exists-etale-completeorthogonalidempotents-forall-liesover-eq-au--01eb5cc0bdc9e566424516e3",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 455,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01eb5cc0bdc9e566424516e31d20c9c395661704e2d1c80fe7e02bb033200699",
  "verification": {
    "reference": "docs/verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b7c8641-8500-a673-aa95-a55742a4b229`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 455–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem Algebra.exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq_aux
    {R : Type u} {S : Type (max u v)} [CommRing R] [CommRing S] [Algebra R S]
    (p : Ideal R) [p.IsPrime] (q : Ideal S)
    (R' : Type u) [CommRing R'] [Algebra R R'] [Algebra.Etale R R'] (P : Ideal R')
    [P.IsPrime] [P.LiesOver p] (e : R' ⊗[R] S) (P' : Ideal (R' ⊗[R] S))
    [P'.IsPrime] [P'.LiesOver P]
    (hP'q : Ideal.comap Algebra.TensorProduct.includeRight.toRingHom P' = q)
    (heP' : e ∉ P') (hpP : Function.Bijective
      (Ideal.ResidueField.mapₐ p P (Algebra.ofId _ _) (P.over_def p)))
    (H : ∀ (P'' : Ideal (R' ⊗[R] S)), P''.IsPrime → P''.LiesOver P → e ∉ P'' → P'' = P')
    (R'' : Type u) [CommRing R''] [Algebra R' R''] [Algebra R R''] [IsScalarTower R R' R'']
    [Algebra.Etale R' R''] (Q : Ideal R'')
    [Q.IsPrime] [Q.LiesOver P] (n : ℕ)
    (e' : Fin ((n + 1) + 1) → R'' ⊗[R] S)
    (he' : CompleteOrthogonalIdempotents e')
    (he'0 : e' 0 = Algebra.TensorProduct.map (Algebra.ofId R' R'') (AlgHom.id R S) e)
    (Q' : Fin n → Ideal (R'' ⊗[R] S)) [∀ i, (Q' i).IsPrime] [∀ i, (Q' i).LiesOver Q]
    (hPQ : Function.Bijective (Ideal.ResidueField.mapₐ P Q (Algebra.ofId _ _) (Q.over_def P)))
    (hQ' : ∀ (i : Fin n), e' i.succ.castSucc ∉ Q' i)
    (H' : ∀ (P'' : Ideal (R'' ⊗[R] S)), e' 0 ∈ P'' → P''.IsPrime → P''.LiesOver Q →
      e' (.last _) ∈ P'' ∧ ∀ (i : Fin n), e' i.succ.castSucc ∉ P'' → P'' = Q' i) :
    ∃ (R' : Type u) (_ : CommRing R') (_ : Algebra R R') (_ : Algebra.Etale R R') (P : Ideal R')
      (_ : P.IsPrime) (_ : P.LiesOver p) (n : ℕ) (e : Fin (n + 1) → R' ⊗[R] S)
      (_ : CompleteOrthogonalIdempotents e) (P' : Fin n → Ideal (R' ⊗[R] S))
      (_ : ∀ i, (P' i).IsPrime) (_ : ∀ i, (P' i).LiesOver P),
      Function.Bijective (Ideal.ResidueField.mapₐ p P (Algebra.ofId _ _) (P.over_def p)) ∧
      (∀ i, e i.castSucc ∉ P' i) ∧
      ∀ (P'' : Ideal (R' ⊗[R] S)), P''.IsPrime → P''.LiesOver P →
        e (.last n) ∈ P'' ∧ ∀ i, e i.castSucc ∉ P'' → P'' = P' i := by
  let φ := Algebra.TensorProduct.map (Algebra.ofId R' R'') (AlgHom.id R S)
  have : Q.LiesOver p := .trans _ P _
  have hpQ :
    Function.Bijective (Ideal.ResidueField.mapₐ p Q (Algebra.ofId _ _) (Q.over_def p)) := by
    convert hPQ.comp hpP
    rw [← @AlgHom.coe_restrictScalars' R R', ← AlgHom.coe_comp]; congr 1; ext
  let P'φ := (Ideal.fiberIsoOfBijectiveResidueField hpQ).symm
    (Ideal.fiberIsoOfBijectiveResidueField hpP ⟨P', ‹_›, ‹_›⟩)
  have : P'φ.1.LiesOver P := .trans _ Q _
  have : (P'φ.1.comap φ.toRingHom).LiesOver P := inferInstanceAs ((P'φ.1.comap φ).LiesOver P)
  have hP'φ : P'φ.1.comap φ.toRingHom = P' := by
    apply Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap hpP
    rw [Ideal.comap_comap]
    convert Ideal.comap_fiberIsoOfBijectiveResidueField_symm hpQ _
    · ext; simp [φ]
    · simp; rfl
  refine ⟨R'', inferInstance, _, .comp R R' R'', Q, ‹_›, .trans _ P _, _, _, he', Fin.cons P'φ
    Q', Fin.cases P'φ.2.1 ?_, Fin.cases P'φ.2.2 ?_, hpQ, Fin.cases ?_ ?_, ?_⟩
  · intro P'' _ _
    by_cases heP'' : e ∈ P''.comap φ
    · obtain ⟨h₁, h₂⟩ := H' P'' (by simpa [he'0]) inferInstance inferInstance
      exact ⟨h₁, Fin.cases (fun h ↦ (h (by simpa [he'0])).elim) (by simpa)⟩
    · have : P''.LiesOver P := .trans _ Q _
      obtain rfl := H _ inferInstance inferInstance heP''
      have : ∀ i ≠ 0, e' i ∈ P'' := by
        intro j hj
        rw [← Ideal.IsPrime.mul_mem_left_iff (I := P'') heP'']
        simp [φ, ← he'0, he'.ortho hj.symm]
      refine ⟨by simp [this], Fin.cases (fun _ ↦ ?_) (by simp [this])⟩
      simp only [Fin.cons_zero]
      apply Ideal.eq_of_comap_eq_comap_of_bijective_residueFieldMap hpQ
      have : (φ.restrictScalars _).comp Algebra.TensorProduct.includeRight =
          Algebra.TensorProduct.includeRight := by ext; simp [φ]
      rw [← this]
      exact congr(($hP'φ).comap Algebra.TensorProduct.includeRight).symm
  · simp only [Fin.cons_succ]; infer_instance
  · simp only [Fin.cons_succ]; infer_instance
  · rw [← hP'φ] at heP'; simpa [he'0]
  · simpa

/-- A less universe polymorphic version of
`exists_etale_completeOrthogonalIdempotents_forall_liesOver_eq`. Use that instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
