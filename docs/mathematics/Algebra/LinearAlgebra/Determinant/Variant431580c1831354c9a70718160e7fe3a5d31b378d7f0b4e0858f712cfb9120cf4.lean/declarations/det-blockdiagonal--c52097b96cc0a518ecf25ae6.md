# det_blockDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3cbf309f-c570-1082-f8ab-a83ad292b394",
  "kind": "theorem",
  "lexical_name": "det_blockDiagonal",
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
  "slug": "det-blockdiagonal--c52097b96cc0a518ecf25ae6",
  "source": {
    "blob": "8c536a6eaffecee5111c064aa0257798c22dc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 582,
    "path": "GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c52097b96cc0a518ecf25ae6d87a9ece670d0d68f777d4ebecfd5c803fd6c155",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3cbf309f-c570-1082-f8ab-a83ad292b394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_blockDiagonal {o : Type*} [Fintype o] [DecidableEq o] (M : o → Matrix n n R) :
    (blockDiagonal M).det = ∏ k, (M k).det := by
  -- Rewrite the determinants as a sum over permutations.
  simp_rw [det_apply']
  -- The right hand side is a product of sums, rewrite it as a sum of products.
  rw [Finset.prod_sum]
  simp_rw [Finset.prod_attach_univ, Finset.univ_pi_univ]
  -- We claim that the only permutations contributing to the sum are those that
  -- preserve their second component.
  let preserving_snd : Finset (Equiv.Perm (n × o)) :=
    Finset.univ.filter fun σ => ∀ x, (σ x).snd = x.snd
  have mem_preserving_snd :
    ∀ {σ : Equiv.Perm (n × o)}, σ ∈ preserving_snd ↔ ∀ x, (σ x).snd = x.snd := fun {σ} =>
    Finset.mem_filter.trans ⟨fun h => h.2, fun h => ⟨Finset.mem_univ _, h⟩⟩
  rw [← Finset.sum_subset (Finset.subset_univ preserving_snd) _]
  -- And that these are in bijection with `o → Equiv.Perm m`.
  rw [(Finset.sum_bij
        (fun (σ : ∀ k : o, k ∈ Finset.univ → Equiv.Perm n) _ =>
          prodCongrLeft fun k => σ k (Finset.mem_univ k))
        _ _ _ _).symm]
  · intro σ _
    rw [mem_preserving_snd]
    rintro ⟨-, x⟩
    simp only [prodCongrLeft_apply]
  · intro σ _
    rw [Finset.prod_mul_distrib, ← Finset.univ_product_univ, Finset.prod_product_right]
    simp only [sign_prodCongrLeft, Units.coe_prod, Int.cast_prod, blockDiagonal_apply_eq,
      prodCongrLeft_apply]
  · intro σ σ' _ _ eq
    ext x hx k
    simp only at eq
    have :
      ∀ k x,
        prodCongrLeft (fun k => σ k (Finset.mem_univ _)) (k, x) =
          prodCongrLeft (fun k => σ' k (Finset.mem_univ _)) (k, x) :=
      fun k x => by rw [eq]
    simp only [prodCongrLeft_apply, Prod.mk.inj_iff] at this
    exact (this k x).1
  · intro σ hσ
    rw [mem_preserving_snd] at hσ
    have hσ' : ∀ x, (σ⁻¹ x).snd = x.snd := by
      intro x
      conv_rhs => rw [← Perm.apply_inv_self σ x, hσ]
    have mk_apply_eq : ∀ k x, ((σ (x, k)).fst, k) = σ (x, k) := by
      intro k x
      ext
      · simp only
      · simp only [hσ]
    have mk_inv_apply_eq : ∀ k x, ((σ⁻¹ (x, k)).fst, k) = σ⁻¹ (x, k) := by
      intro k x
      conv_lhs => rw [← Perm.apply_inv_self σ (x, k)]
      ext
      · simp only [apply_inv_self]
      · simp only [hσ']
    refine' ⟨fun k _ => ⟨fun x => (σ (x, k)).fst, fun x => (σ⁻¹ (x, k)).fst, _, _⟩, _, _⟩
    · intro x
      simp only [mk_apply_eq, inv_apply_self]
    · intro x
      simp only [mk_inv_apply_eq, apply_inv_self]
    · apply Finset.mem_univ
    · ext ⟨k, x⟩
      · simp only [coe_fn_mk, prodCongrLeft_apply]
      · simp only [prodCongrLeft_apply, hσ]
  · intro σ _ hσ
    rw [mem_preserving_snd] at hσ
    obtain ⟨⟨k, x⟩, hkx⟩ := not_forall.mp hσ
    rw [Finset.prod_eq_zero (Finset.mem_univ (k, x)), mul_zero]
    rw [← @Prod.mk.eta _ _ (σ (k, x)), blockDiagonal_apply_ne]
    exact hkx
#align matrix.det_block_diagonal Matrix.det_blockDiagonal

/-- The determinant of a 2×2 block matrix with the lower-left block equal to zero is the product of
the determinants of the diagonal blocks. For the generalization to any number of blocks, see
`Matrix.det_of_upper_triangular`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Determinant/Variant431580c1831354c9a70718160e7fe3a5d31b378d7f0b4e0858f712cfb9120cf4.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c536a6eaffecee5111c064aa0257798c22dc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
