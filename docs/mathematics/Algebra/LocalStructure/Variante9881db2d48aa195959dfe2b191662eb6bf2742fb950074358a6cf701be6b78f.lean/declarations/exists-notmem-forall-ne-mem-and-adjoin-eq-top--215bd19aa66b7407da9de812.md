# exists_notMem_forall_ne_mem_and_adjoin_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9882c2e7-13c4-05f5-0edf-67b0fe87490e",
  "kind": "lemma",
  "lexical_name": "exists_notMem_forall_ne_mem_and_adjoin_eq_top",
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
  "slug": "exists-notmem-forall-ne-mem-and-adjoin-eq-top--215bd19aa66b7407da9de812",
  "source": {
    "blob": "6d5cd03d1c32346025753bf9e8467e67fe5af07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 217,
    "path": "GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:215bd19aa66b7407da9de812932e14df70e89e1453205d5dceaf9c36fa1a7d68",
  "verification": {
    "reference": "docs/verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9882c2e7-13c4-05f5-0edf-67b0fe87490e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_notMem_forall_ne_mem_and_adjoin_eq_top
    (Q : Ideal S) [Q.IsPrime] [Module.Finite R S] [IsUnramifiedAt R Q]
    [Algebra (Localization.AtPrime (Q.under R)) (Localization.AtPrime Q)]
    [IsScalarTower R (Localization.AtPrime (Q.under R)) (Localization.AtPrime Q)] :
    ∃ t ∉ Q, (∀ Q' ∈ (Q.under R).primesOver S, Q' ≠ Q → t ∈ Q') ∧
      adjoin (Ideal.under R Q).ResidueField {algebraMap _ Q.ResidueField t} = ⊤ := by
  let p := Q.under R
  #adaptation_note /-- Needed after nightly-2023-02-23 -/
  have : p.IsPrime := Ideal.IsPrime.under R Q
  #adaptation_note /-- After nightly-2026-04-06, typeclass synthesis fails to find these
  instances; provide them explicitly. -/
  let : Module p.ResidueField (p.Fiber S) := TensorProduct.leftModule
  let : SMul p.ResidueField (p.Fiber S) := this.toSMul -- added for #13807 (2026-05-20)
  let : IsScalarTower p.ResidueField (p.Fiber S) (p.Fiber S) := IsScalarTower.right
  let : Module.Finite p.ResidueField (p.Fiber S) := Module.Finite.base_change R p.ResidueField S
  have : IsArtinianRing (p.Fiber S) := .of_finite p.ResidueField _
  let α := PrimeSpectrum.primesOverOrderIsoFiber R S p
  obtain ⟨x, hx0, hx⟩ : ∃ x : Q.ResidueField, x ≠ 0 ∧ p.ResidueField[x] = ⊤ := by
    obtain ⟨x, hx⟩ := Field.exists_primitive_element p.ResidueField Q.ResidueField
    rw [IntermediateField.adjoin_eq_top_iff] at hx
    by_cases hx0 : x = 0
    · exact ⟨1, by simp, by simpa [p, hx0] using hx⟩
    · exact ⟨x, hx0, hx⟩
  obtain ⟨x, rfl⟩ := Ideal.Fiber.lift_residueField_surjective p _ x
  set φ : p.Fiber S →ₐ[p.ResidueField] Q.ResidueField := TensorProduct.lift
      (Algebra.ofId _ _) (IsScalarTower.toAlgHom _ _ _) fun _ _ ↦ .all _ _
  obtain ⟨r, hrQ, hrid, hr⟩ :=
    IsArtinianRing.exists_not_mem_forall_mem_of_ne (α ⟨Q, ‹_›, ⟨rfl⟩⟩).asIdeal
  obtain ⟨s, hsQ, t, e⟩ := Ideal.Fiber.exists_smul_eq_one_tmul _ (r * x)
  have hrQ' : φ r ≠ 0 := by
    have : Ideal.ResidueField.mapₐ p Q (ofId R S) (Ideal.over_def Q p) =
      AlgHom.restrictScalars R (ofId p.ResidueField Q.ResidueField) := by ext
    rw [← AlgHom.restrictScalars_apply R, Algebra.TensorProduct.restrictScalars_lift]
    convert! hrQ
    rw [← SetLike.mem_coe, PrimeSpectrum.coe_primesOverOrderIsoFiber_apply_asIdeal]
    simp [this]
  have hsQ' : algebraMap R Q.ResidueField s ≠ 0 := by
    simpa [IsScalarTower.algebraMap_apply R S Q.ResidueField]
  replace hrQ' : φ r = 1 := by
    simpa [hrQ', sub_eq_zero, @eq_comm _ _ (φ r)] using (hrid.map φ).one_sub_mul_self
  have e' : algebraMap _ _ s * φ x = algebraMap _ _ t := by
    simpa [φ, smul_def, mul_assoc, hrQ'] using congr(φ $e)
  refine ⟨t, ?_, ?_, ?_⟩
  · rw [← Ideal.algebraMap_residueField_eq_zero, ← e']
    simpa [hx0, IsScalarTower.algebraMap_apply R S Q.ResidueField]
  · rintro Q' ⟨_, _⟩ H
    let := Localization.AtPrime.algebraOfLiesOver p Q'
    have hsQ'' : algebraMap R Q'.ResidueField s ≠ 0 := by
      suffices s ∉ Q'.under _ by simpa [IsScalarTower.algebraMap_apply R S Q'.ResidueField]
      rwa [← Q'.over_def p]
    let φ' : p.Fiber S →ₐ[p.ResidueField] Q'.ResidueField := TensorProduct.lift
        (Algebra.ofId _ _) (IsScalarTower.toAlgHom _ _ _) fun _ _ ↦ .all _ _
    have H : φ' r = 0 := (hr (α ⟨Q', ⟨‹_›, ‹_›⟩⟩).asIdeal inferInstance (by
        rwa [ne_eq, ← PrimeSpectrum.ext_iff, EmbeddingLike.apply_eq_iff_eq, Subtype.mk.injEq]) :)
    rw [← Ideal.algebraMap_residueField_eq_zero]
    trans φ' (1 ⊗ₜ t)
    · simp [φ']
    · simpa [smul_def, H] using congr(φ' $e).symm
  · have : φ x = (algebraMap _ p.ResidueField s)⁻¹ • algebraMap _ _ t := by
      simpa [smul_def, ← IsScalarTower.algebraMap_apply, eq_inv_mul_iff_mul_eq₀ hsQ']
    rw [← top_le_iff, ← hx, this]
    refine adjoin_singleton_le ?_
    exact Subalgebra.smul_mem _ (self_mem_adjoin_singleton _ _) _

attribute [-instance] Subalgebra.instSMulSubtypeMem
  Subalgebra.toAlgebra Subalgebra.isScalarTower_left in
/-- Let `S` be an finite `R`-algebra that is unramified at some prime `Q`. Then there exists some
`x : S` such that `Q` is the unique prime lying over `P := Q ∩ R⟨x⟩` and `κ(P) = κ(Q)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalStructure/Variante9881db2d48aa195959dfe2b191662eb6bf2742fb950074358a6cf701be6b78f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d5cd03d1c32346025753bf9e8467e67fe5af07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
