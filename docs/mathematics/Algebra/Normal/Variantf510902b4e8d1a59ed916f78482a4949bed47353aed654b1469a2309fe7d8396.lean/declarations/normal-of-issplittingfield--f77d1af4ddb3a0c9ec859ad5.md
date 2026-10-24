# Normal.of_isSplittingField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 161,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:288238a9-a986-2f52-dad2-4f1ff159fd7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b6657a5-acbc-1cc1-989f-450cfb7e6516",
  "kind": "theorem",
  "lexical_name": "Normal.of_isSplittingField",
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
  "slug": "normal-of-issplittingfield--f77d1af4ddb3a0c9ec859ad5",
  "source": {
    "blob": "975c3a1042f26579b615f68cc75c65736c9c4946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 161,
    "path": "GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f77d1af4ddb3a0c9ec859ad5deb017582df87073856b791f7e48d68c04735b64",
  "verification": {
    "reference": "docs/verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b6657a5-acbc-1cc1-989f-450cfb7e6516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Normal.of_isSplittingField (p : F[X]) [hFEp : IsSplittingField F E p] : Normal F E := by
  rcases eq_or_ne p 0 with (rfl | hp)
  · have := hFEp.adjoin_rootSet
    simp only [rootSet_zero, Algebra.adjoin_empty] at this
    exact
      Normal.of_algEquiv
        (AlgEquiv.ofBijective (Algebra.ofId F E) (Algebra.bijective_algebraMap_iff.2 this.symm))
  refine' normal_iff.2 fun x => _
  have hFE : FiniteDimensional F E := IsSplittingField.finiteDimensional E p
  have Hx : IsIntegral F x := isIntegral_of_noetherian (IsNoetherian.iff_fg.2 hFE) x
  refine' ⟨Hx, Or.inr _⟩
  rintro q q_irred ⟨r, hr⟩
  let D := AdjoinRoot q
  haveI := Fact.mk q_irred
  let pbED := AdjoinRoot.powerBasis q_irred.ne_zero
  haveI : FiniteDimensional E D := PowerBasis.finiteDimensional pbED
  have finrankED : FiniteDimensional.finrank E D = q.natDegree := by
    rw [PowerBasis.finrank pbED, AdjoinRoot.powerBasis_dim]
  haveI : FiniteDimensional F D := FiniteDimensional.trans F E D
  rsuffices ⟨ϕ⟩ : Nonempty (D →ₐ[F] E)
  --Porting note: the `change` was `rw [← WithBot.coe_one]`
  · change degree q = ↑(1 : ℕ)
    rw [degree_eq_iff_natDegree_eq q_irred.ne_zero, ← finrankED]
    have nat_lemma : ∀ a b c : ℕ, a * b = c → c ≤ a → 0 < c → b = 1 := by
      intro a b c h1 h2 h3
      nlinarith
    exact
      nat_lemma _ _ _ (FiniteDimensional.finrank_mul_finrank F E D)
        (LinearMap.finrank_le_finrank_of_injective
          (show Function.Injective ϕ.toLinearMap from ϕ.toRingHom.injective))
        FiniteDimensional.finrank_pos
  let C := AdjoinRoot (minpoly F x)
  haveI Hx_irred := Fact.mk (minpoly.irreducible Hx)
-- Porting note: `heval` added since now Lean wants the proof explicitly in several places.
  have heval : eval₂ (algebraMap F D) (AdjoinRoot.root q) (minpoly F x) = 0 := by
    rw [algebraMap_eq F E D, ← eval₂_map, hr, AdjoinRoot.algebraMap_eq, eval₂_mul,
      AdjoinRoot.eval₂_root, zero_mul]
  letI : Algebra C D :=
    RingHom.toAlgebra (AdjoinRoot.lift (algebraMap F D) (AdjoinRoot.root q) heval)
  letI : Algebra C E := RingHom.toAlgebra (AdjoinRoot.lift (algebraMap F E) x (minpoly.aeval F x))
  haveI : IsScalarTower F C D := of_algebraMap_eq fun y => (AdjoinRoot.lift_of heval).symm
  haveI : IsScalarTower F C E := by
    refine' of_algebraMap_eq fun y => (AdjoinRoot.lift_of _).symm
-- Porting note: the following proof was just `_`.
    rw [← aeval_def, minpoly.aeval]
  suffices Nonempty (D →ₐ[C] E) by exact Nonempty.map (AlgHom.restrictScalars F) this
  let S : Set D := ((p.map (algebraMap F E)).roots.map (algebraMap E D)).toFinset
  suffices ⊤ ≤ IntermediateField.adjoin C S by
    refine' IntermediateField.algHom_mk_adjoin_splits' (top_le_iff.mp this) fun y hy => _
    rcases Multiset.mem_map.mp (Multiset.mem_toFinset.mp hy) with ⟨z, hz1, hz2⟩
    have Hz : IsIntegral F z := isIntegral_of_noetherian (IsNoetherian.iff_fg.2 hFE) z
    use
      show IsIntegral C y from
        isIntegral_of_noetherian (IsNoetherian.iff_fg.2 (FiniteDimensional.right F C D)) y
    apply splits_of_splits_of_dvd (algebraMap C E) (map_ne_zero (minpoly.ne_zero Hz))
    · rw [splits_map_iff, ← algebraMap_eq F C E]
      exact
        splits_of_splits_of_dvd _ hp hFEp.splits
          (minpoly.dvd F z (Eq.trans (eval₂_eq_eval_map _) ((mem_roots (map_ne_zero hp)).mp hz1)))
    · apply minpoly.dvd
      rw [← hz2, aeval_def, eval₂_map, ← algebraMap_eq F C D, algebraMap_eq F E D, ← hom_eval₂, ←
        aeval_def, minpoly.aeval F z, RingHom.map_zero]
  rw [← IntermediateField.toSubalgebra_le_toSubalgebra, IntermediateField.top_toSubalgebra]
  apply ge_trans (IntermediateField.algebra_adjoin_le_adjoin C S)
  suffices
    (Algebra.adjoin C S).restrictScalars F =
      (Algebra.adjoin E {AdjoinRoot.root q}).restrictScalars F by
    rw [AdjoinRoot.adjoinRoot_eq_top, Subalgebra.restrictScalars_top, ←
      @Subalgebra.restrictScalars_top F C] at this
    exact top_le_iff.mpr (Subalgebra.restrictScalars_injective F this)
/- Porting note: the `change` was `dsimp only [S]`. This is the step that requires increasing
`maxHeartbeats`. Using `set S ... with hS` doesn't work. -/
  change Subalgebra.restrictScalars F (Algebra.adjoin C
    (((p.map (algebraMap F E)).roots.map (algebraMap E D)).toFinset : Set D)) = _
  rw [← Finset.image_toFinset, Finset.coe_image]
  apply
    Eq.trans
      (Algebra.adjoin_res_eq_adjoin_res F E C D hFEp.adjoin_rootSet AdjoinRoot.adjoinRoot_eq_top)
  rw [Set.image_singleton, RingHom.algebraMap_toAlgebra, AdjoinRoot.lift_root]
#align normal.of_is_splitting_field Normal.of_isSplittingField

end NormalTower

namespace IntermediateField

/-- A compositum of normal extensions is normal -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Normal/Variantf510902b4e8d1a59ed916f78482a4949bed47353aed654b1469a2309fe7d8396.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `975c3a1042f26579b615f68cc75c65736c9c4946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
