# Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9d2f535-c431-332f-78bb-0c243813009f",
  "kind": "lemma",
  "lexical_name": "Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux₂",
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
  "slug": "algebra-exists-etale-isidempotentelem-forall-liesover-eq-aux--3be96b002e4966b244556242",
  "source": {
    "blob": "9880cf7adeb55b07f7e181ed922db4e8c66ee794",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 384,
    "line": 305,
    "path": "GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3be96b002e4966b24455624252fc805e8c1ee622e4e82a80a632e817471bb538",
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

Occurrence: `result:c9d2f535-c431-332f-78bb-0c243813009f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–384.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Algebra.exists_etale_isIdempotentElem_forall_liesOver_eq_aux₂
    {R S R' R'' : Type*} [CommRing R] [CommRing S] [Algebra R S] [Algebra.FiniteType R S]
    [CommRing R'] [Algebra R R'] [CommRing R''] [Algebra R R''] [Algebra R'' S]
    [Algebra.IsIntegral R R''] [IsScalarTower R R'' S] (q : Ideal S) (P : Ideal R') [P.IsPrime]
    (e : R' ⊗[R] S) (e₀ : R' ⊗[R] R'') (he₀ : IsIdempotentElem e₀)
    (he₀e : Algebra.TensorProduct.map (.id R' R') (IsScalarTower.toAlgHom R R'' S) e₀ = e)
    (P' : Ideal (R' ⊗[R] S))
    (hP'q : P'.comap Algebra.TensorProduct.includeRight.toRingHom = q)
    (H : ∀ P'' : Ideal (R' ⊗[R] R''), P''.IsPrime → P''.LiesOver P → e₀ ∉ P'' → P'' =
      P'.comap (Algebra.TensorProduct.map (.id R' R') (IsScalarTower.toAlgHom R R'' S)).toRingHom)
    (g : R'') (hgq : algebraMap R'' S g ∉ q)
    (hg : Function.Surjective (Localization.awayMap (algebraMap R'' S) g)) :
    ∃ f ∉ P, Module.Finite (Localization.Away f) (Localization.Away
      ((Algebra.TensorProduct.map (Algebra.ofId R' (Localization.Away f)) (AlgHom.id R S)) e)) := by
  have : Algebra.IsIntegral R' (Localization.Away e₀) :=
    .of_surjective (IsScalarTower.toAlgHom R' (R' ⊗[R] (R'')) _)
      (IsLocalization.Away.algebraMap_surjective_of_isIdempotentElem e₀ he₀)
  obtain ⟨f, hfP, hf⟩ := Localization.exists_finite_awayMapₐ_of_surjective_awayMapₐ
    (Localization.awayMapₐ (Algebra.TensorProduct.map (.id R' R')
      (IsScalarTower.toAlgHom R R'' S)) e₀) (algebraMap (R' ⊗[R] R'') _ (1 ⊗ₜ g)) (by
    apply Localization.awayMap_awayMap_surjective
    refine Localization.awayMap_surjective_iff.mpr fun a ↦ ?_
    induction a with
    | tmul a b =>
      obtain ⟨b', m, e : _ = _⟩ := Localization.awayMap_surjective_iff.mp hg b
      refine ⟨e₀ ^ m * a ⊗ₜ b', m, ?_⟩
      simp [e, mul_pow, mul_assoc]
    | add a b ha hb =>
      obtain ⟨xa, ma, ea⟩ := ha
      obtain ⟨xb, mb, eb⟩ := hb
      refine ⟨(e₀ * 1 ⊗ₜ[R] g) ^ mb * xa + (e₀ * 1 ⊗ₜ[R] g) ^ ma * xb, ma + mb, ?_⟩
      dsimp at ea eb ⊢
      simp only [map_add, map_mul, map_pow, Algebra.TensorProduct.map_tmul, AlgHom.coe_id, id_eq,
        ea, eb, pow_add]
      ring) P (by
    contrapose hgq
    obtain ⟨m, _, hm⟩ := Ideal.exists_le_maximal _ (Ideal.span_singleton_eq_top.not.mpr hgq)
    have := H (m.comap (Algebra.TensorProduct.includeRight.toRingHom.comp (algebraMap _ _)))
      inferInstance (m.comap_liesOver P (Algebra.TensorProduct.includeRight.comp
        (IsScalarTower.toAlgHom _ _ _)))
        (Ideal.notMem_of_isUnit (m.comap Algebra.TensorProduct.includeRight)
        (IsLocalization.Away.algebraMap_isUnit _))
    rw [← hP'q]
    exact this.le ((Ideal.span_singleton_le_iff_mem _).mp hm :))
  rw [he₀e] at hf
  refine ⟨f, hfP, ?_⟩
  let φ : R' ⊗[R] S →ₐ[R'] Localization.Away f ⊗[R] S :=
    Algebra.TensorProduct.map (Algebra.ofId _ _) (.id _ _)
  algebraize [φ.toRingHom]
  have : IsLocalization.Away (f ⊗ₜ 1 : R' ⊗[R] S) (Localization.Away f ⊗[R] S) := by
    have : .powers (f ⊗ₜ[R] 1) = Algebra.algebraMapSubmonoid (R' ⊗[R] S) (.powers f) := by simp
    rw [IsLocalization.Away, this]
    refine IsLocalization.tensorProduct_tensorProduct _ _ _ _ ?_
    ext; simp [RingHom.algebraMap_toAlgebra, φ]
  have : IsLocalization.Away (e * (f ⊗ₜ 1)) (Localization.Away (φ e)) :=
    .mul (Localization.Away f ⊗[R] S) (Localization.Away (algebraMap _ _ e)) _ _
  have : IsLocalization.Away (e * (f ⊗ₜ 1)) (Localization.Away (Algebra.ofId R'
      (Localization.Away e) f)) :=
    .mul' (Localization.Away e)
      (Localization.Away (algebraMap (R' ⊗[R] S) (Localization.Away e) (f ⊗ₜ[R] 1))) _ _
  let equiv := IsLocalization.algEquiv (.powers (e * (f ⊗ₜ 1)))
      (Localization.Away (φ e))
      (Localization.Away (Algebra.ofId R' (Localization.Away e) f))
  refine RingHom.finite_algebraMap.mp ?_
  convert! equiv.symm.toRingEquiv.finite.comp hf
  apply IsLocalization.ringHom_ext (.powers f)
  dsimp [-AlgEquiv.symm_toRingEquiv,
    ← AlgEquiv.toAlgHom_toRingHom, -AlgHomClass.toRingHom_ofClass]
  simp only [← IsScalarTower.algebraMap_eq, RingHom.comp_assoc, AlgHom.comp_algebraMap_of_tower]

/--
Let `S` be a finite type `R`-algebra, and `q` a prime lying over `p` such that `S` is quasi-finite
at `q`.
We may construct an etale `R`-algebra `R'` and a prime `P` lying over `p` with `κ(P) = κ(p)`,
such that `R' ⊗[R] S = A × B`, `A` is finite as an `R'`-module,
and there exists a unique prime in `A` lying over `P`. This prime will also lie over `q`.

The actual lemma is stated in terms of the idempotent element `e = (1, 0)`.
-/
@[stacks 00UJ]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuasiFinite/Variant7854f388a050eeb93e21a3d9893814ec802928bca52e7562a960047f70fed1d1.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9880cf7adeb55b07f7e181ed922db4e8c66ee794` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
