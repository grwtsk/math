# isIrreducible_toRootPairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff6dbaf0-a8d4-6790-5aa7-cc8dad68bf60",
  "kind": "lemma",
  "lexical_name": "isIrreducible_toRootPairing",
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
  "slug": "isirreducible-torootpairing--afa45b87e957ceb1bd774764",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 585,
    "line": 534,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:afa45b87e957ceb1bd774764a45a54408b78544d5718d8a8e42accbca5b6cb55",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff6dbaf0-a8d4-6790-5aa7-cc8dad68bf60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–585.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIrreducible_toRootPairing [Nonempty n] {k V W : Type*} [Field k] [CharZero k]
    [AddCommGroup V] [Module k V] [AddCommGroup W] [Module k W] (rl : Realisation n k V W)
    (hr : span k (range rl.sRoot) = ⊤)
    (hA' : rl.matrix.IsIndecomposable) :
    rl.toRootPairing.IsIrreducible := by
  classical
  inhabit n
  have : IsReflexive k V := .of_isPerfPair rl.pairing
  have : Nontrivial V := nontrivial_of_ne (rl.sRoot default) 0 fun contra ↦ by
    simpa [contra] using rl.pairing_sRoot_sCoroot_self default
  have hc : span k (range rl.sCoroot) = ⊤ := by
    refine rl.lin_ind_sCoroot.span_eq_top_of_card_eq_finrank ?_
    rw [← finrank_eq_card_basis (.mk rl.lin_ind_sRoot hr.ge), finrank_of_isPerfPair rl.pairing]
  have : rl.toRootPairing.IsRootSystem := rl.isRootSystem_toRootPairing hr hc
  refine .mk' _ fun q hq hq' ↦ ?_
  refine RootPairing.eq_top_of_mem_invtSubmodule_of_forall_eq_univ _ q hq' hq fun Φ _ hΦq hΦker ↦ ?_
  let f (i : n) : rl.idx := ⟨(rl.sRoot i, rl.sCoroot i), rl.sPair_mem_idx i⟩
  have hf (i j : n) : rl.toRootPairing.pairing (f i) (f j) = rl.matrix i j := rl.pairingMatrix i j
  replace hA' : (∀ i, f i ∈ Φ) ∨ (∀ i, f i ∉ Φ) := by
    have hbt : rl.matrix.BlockTriangular fun i ↦ if f i ∈ Φ then 1 else 0 := fun i j hij ↦ by
      have : rl.toRootPairing.coroot' (f j) (rl.toRootPairing.root (f i)) = 0 :=
        hΦker (f j) (by aesop) (hΦq ⟨f i, by aesop, rfl⟩)
      rwa [RootPairing.root_coroot'_eq_pairing, hf, Int.cast_eq_zero] at this
    obtain ⟨v, hv⟩ := rl.matrix.isIndecomposable_iff_blockTriangular_const.mp hA' _ hbt
    rcases eq_or_ne v 0 with rfl | hv'
    · exact Or.inr fun i hi ↦ by simpa [hi] using congr_fun hv i
    · exact Or.inl fun i ↦ by contrapose! hv'; simpa [hv'] using (congr_fun hv i).symm
  rcases hA' with hfΦ | hfΦ
  · obtain ⟨rfl⟩ : q = ⊤ := by
      rw [eq_top_iff, ← hr, Submodule.span_le]
      rintro - ⟨i, rfl⟩
      exact hΦq ⟨f i, hfΦ i, rfl⟩
    refine Set.eq_univ_of_forall fun j ↦ ?_
    contrapose! hΦker
    exact ⟨j, hΦker, by simpa using rl.toRootPairing.coroot'_ne_zero j⟩
  · exfalso
    apply hq'
    refine q.eq_bot_iff.mpr fun x hx ↦ ?_
    replace hx : rl.pairing x = 0 := LinearMap.ext_on hc <| by
      rintro - ⟨i, rfl⟩
      exact hΦker (f i) (hfΦ i) hx
    exact (LinearMap.IsPerfPair.bijective_left rl.pairing).injective <| by simp [hx]

end Realisation

end CartanMatrix

namespace Matrix.IsFiniteCartan

variable {n R M N} {A : Matrix n n ℤ} (hA : A.IsFiniteCartan)

/-- If a Cartan matrix is invertible in `R` then it has a canonical realisation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
