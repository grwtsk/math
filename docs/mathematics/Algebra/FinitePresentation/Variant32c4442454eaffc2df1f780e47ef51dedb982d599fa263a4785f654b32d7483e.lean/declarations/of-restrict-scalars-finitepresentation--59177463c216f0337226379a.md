# of_restrict_scalars_finitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2865db97e058bf0cd6bb3d050deb700004ad5220",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77b7279a-2446-5cba-a7d1-117368f707a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f56f3f28-69a1-fa89-f080-837e2ebb3f5f",
  "kind": "theorem",
  "lexical_name": "of_restrict_scalars_finitePresentation",
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
  "slug": "of-restrict-scalars-finitepresentation--59177463c216f0337226379a",
  "source": {
    "blob": "2865db97e058bf0cd6bb3d050deb700004ad5220",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 209,
    "path": "GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59177463c216f0337226379a42bce6aa90b86dc66d9462049194e60adc7820b9",
  "verification": {
    "reference": "docs/verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f56f3f28-69a1-fa89-f080-837e2ebb3f5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_restrict_scalars_finitePresentation [Algebra A B] [IsScalarTower R A B]
    [FinitePresentation.{w₁, w₃} R B] [FiniteType R A] :
    FinitePresentation.{w₂, w₃} A B := by
  classical
  obtain ⟨n, f, hf, s, hs⟩ := FinitePresentation.out (R := R) (A := B)
  let RX := MvPolynomial (Fin n) R
  let AX := MvPolynomial (Fin n) A
  refine ⟨n, MvPolynomial.aeval (f ∘ X), ?_, ?_⟩
  · rw [← AlgHom.range_eq_top, ← Algebra.adjoin_range_eq_range_aeval,
      Set.range_comp f MvPolynomial.X, eq_top_iff, ← @adjoin_adjoin_of_tower R A B,
      adjoin_image, adjoin_range_X, Algebra.map_top, (AlgHom.range_eq_top _).mpr hf]
    exact fun {x} => subset_adjoin ⟨⟩
  · obtain ⟨t, ht⟩ := FiniteType.out (R := R) (A := A)
    have := fun i : t => hf (algebraMap A B i)
    choose t' ht' using this
    have ht'' : Algebra.adjoin R (algebraMap A AX '' t ∪ Set.range (X : _ → AX)) = ⊤ := by
      rw [adjoin_union_eq_adjoin_adjoin, ← Subalgebra.restrictScalars_top R (A := AX)
        (S := { x // x ∈ adjoin R ((algebraMap A AX) '' t) })]
      refine congrArg (Subalgebra.restrictScalars R) ?_
      rw [adjoin_algebraMap, ht]
      apply Subalgebra.restrictScalars_injective R
      rw [← adjoin_restrictScalars, adjoin_range_X, Subalgebra.restrictScalars_top,
        Subalgebra.restrictScalars_top]
    let g : t → AX := fun x => MvPolynomial.C (x : A) - map (algebraMap R A) (t' x)
    refine ⟨s.image (map (algebraMap R A)) ∪ t.attach.image g, ?_⟩
    rw [Finset.coe_union, Finset.coe_image, Finset.coe_image, Finset.attach_eq_univ,
      Finset.coe_univ, Set.image_univ]
    let s₀ := (MvPolynomial.map (algebraMap R A)) '' s ∪ Set.range g
    let I := RingHom.ker (MvPolynomial.aeval (R := A) (f ∘ MvPolynomial.X))
    change Ideal.span s₀ = I
    have leI : Ideal.span ((MvPolynomial.map (algebraMap R A)) '' s ∪ Set.range g) ≤
      RingHom.ker (MvPolynomial.aeval (R := A) (f ∘ MvPolynomial.X)) := by
      rw [Ideal.span_le]
      rintro _ (⟨x, hx, rfl⟩ | ⟨⟨x, hx⟩, rfl⟩) <;>
      rw [SetLike.mem_coe, RingHom.mem_ker]
      · rw [MvPolynomial.aeval_map_algebraMap (R := R) (A := A), ← aeval_unique]
        have := Ideal.subset_span hx
        rwa [hs] at this
      · rw [map_sub, MvPolynomial.aeval_map_algebraMap, ← aeval_unique,
          MvPolynomial.aeval_C, ht', Subtype.coe_mk, sub_self]
    apply leI.antisymm
    intro x hx
    rw [RingHom.mem_ker] at hx
    let s₀ := (MvPolynomial.map (algebraMap R A)) '' ↑s ∪ Set.range g
    change x ∈ Ideal.span s₀
    have : x ∈ (MvPolynomial.map (algebraMap R A) : _ →+* AX).range.toAddSubmonoid ⊔
      (Ideal.span s₀).toAddSubmonoid := by
      have : x ∈ (⊤ : Subalgebra R AX) := trivial
      rw [← ht''] at this
      refine adjoin_induction ?_ ?_ ?_ ?_ this
      · rintro _ (⟨x, hx, rfl⟩ | ⟨i, rfl⟩)
        · rw [MvPolynomial.algebraMap_eq, ← sub_add_cancel (MvPolynomial.C x)
            (map (algebraMap R A) (t' ⟨x, hx⟩)), add_comm]
          apply AddSubmonoid.add_mem_sup
          · exact Set.mem_range_self _
          · apply Ideal.subset_span
            apply Set.mem_union_right
            exact Set.mem_range_self _
        · apply AddSubmonoid.mem_sup_left
          exact ⟨X i, map_X _ _⟩
      · intro r
        apply AddSubmonoid.mem_sup_left
        exact ⟨C r, map_C _ _⟩
      · intro _ _ _ _ h₁ h₂
        exact add_mem h₁ h₂
      · intro x₁ x₂ _ _ h₁ h₂
        obtain ⟨_, ⟨p₁, rfl⟩, q₁, hq₁, rfl⟩ := AddSubmonoid.mem_sup.mp h₁
        obtain ⟨_, ⟨p₂, rfl⟩, q₂, hq₂, rfl⟩ := AddSubmonoid.mem_sup.mp h₂
        rw [add_mul, mul_add, add_assoc, ← map_mul]
        apply AddSubmonoid.add_mem_sup
        · exact Set.mem_range_self _
        · refine add_mem (Ideal.mul_mem_left _ _ hq₂) (Ideal.mul_mem_right _ _ hq₁)
    obtain ⟨_, ⟨p, rfl⟩, q, hq, rfl⟩ := AddSubmonoid.mem_sup.mp this
    rw [map_add, aeval_map_algebraMap, ← aeval_unique, show MvPolynomial.aeval (f ∘ X) q = 0
      from leI hq, add_zero] at hx
    suffices Ideal.span (s : Set RX) ≤ (Ideal.span s₀).comap (MvPolynomial.map <| algebraMap R A) by
      refine add_mem ?_ hq
      rw [hs] at this
      exact this hx
    rw [Ideal.span_le]
    intro x hx
    apply Ideal.subset_span
    apply Set.mem_union_left
    exact Set.mem_image_of_mem _ hx

variable {R A B}

-- TODO: extract out helper lemmas and tidy proof.
/-- This is used to prove the strictly stronger `ker_fg_of_surjective`. Use it instead. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FinitePresentation/Variant32c4442454eaffc2df1f780e47ef51dedb982d599fa263a4785f654b32d7483e.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2865db97e058bf0cd6bb3d050deb700004ad5220` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
