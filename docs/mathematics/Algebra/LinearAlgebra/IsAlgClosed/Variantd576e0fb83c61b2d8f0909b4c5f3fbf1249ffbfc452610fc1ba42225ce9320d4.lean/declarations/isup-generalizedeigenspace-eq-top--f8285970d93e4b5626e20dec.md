# iSup_generalizedEigenspace_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94bd00ba-cd93-d510-e187-595f454c12de",
  "kind": "theorem",
  "lexical_name": "iSup_generalizedEigenspace_eq_top",
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
  "slug": "isup-generalizedeigenspace-eq-top--f8285970d93e4b5626e20dec",
  "source": {
    "blob": "40bcbe2fe9717ccf6a126a3db442089e5e2ad358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/IsAlgClosed/Variantd576e0fb83c61b2d8f0909b4c5f3fbf1249ffbfc452610fc1ba42225ce9320d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8285970d93e4b5626e20dec1f2a3b0db464191fc39c44c1f061bfe037456e62",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IsAlgClosed/Variantd576e0fb83c61b2d8f0909b4c5f3fbf1249ffbfc452610fc1ba42225ce9320d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94bd00ba-cd93-d510-e187-595f454c12de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_generalizedEigenspace_eq_top [IsAlgClosed K] [FiniteDimensional K V] (f : End K V) :
    ⨆ (μ : K) (k : ℕ), f.generalizedEigenspace μ k = ⊤ := by
  -- We prove the claim by strong induction on the dimension of the vector space.
  induction' h_dim : finrank K V using Nat.strong_induction_on with n ih generalizing V
  cases' n with n
  -- If the vector space is 0-dimensional, the result is trivial.
  · rw [← top_le_iff]
    simp only [finrank_eq_zero.1 (Eq.trans (finrank_top _ _) h_dim), bot_le]
  -- Otherwise the vector space is nontrivial.
  · haveI : Nontrivial V := finrank_pos_iff.1 (by rw [h_dim]; apply Nat.zero_lt_succ)
    -- Hence, `f` has an eigenvalue `μ₀`.
    obtain ⟨μ₀, hμ₀⟩ : ∃ μ₀, f.HasEigenvalue μ₀ := exists_eigenvalue f
    -- We define `ES` to be the generalized eigenspace
    let ES := f.generalizedEigenspace μ₀ (finrank K V)
    -- and `ER` to be the generalized eigenrange.
    let ER := f.generalizedEigenrange μ₀ (finrank K V)
    -- `f` maps `ER` into itself.
    have h_f_ER : ∀ x : V, x ∈ ER → f x ∈ ER := fun x hx =>
      map_generalizedEigenrange_le (Submodule.mem_map_of_mem hx)
    -- Therefore, we can define the restriction `f'` of `f` to `ER`.
    let f' : End K ER := f.restrict h_f_ER
    -- The dimension of `ES` is positive
    have h_dim_ES_pos : 0 < finrank K ES := by
      dsimp only
      rw [h_dim]
      apply pos_finrank_generalizedEigenspace_of_hasEigenvalue hμ₀ (Nat.zero_lt_succ n)
    -- and the dimensions of `ES` and `ER` add up to `finrank K V`.
    have h_dim_add : finrank K ER + finrank K ES = finrank K V := by
      apply LinearMap.finrank_range_add_finrank_ker
    -- Therefore the dimension `ER` mus be smaller than `finrank K V`.
    have h_dim_ER : finrank K ER < n.succ := by linarith
    -- This allows us to apply the induction hypothesis on `ER`:
    have ih_ER : ⨆ (μ : K) (k : ℕ), f'.generalizedEigenspace μ k = ⊤ :=
      ih (finrank K ER) h_dim_ER f' rfl
    -- The induction hypothesis gives us a statement about subspaces of `ER`. We can transfer this
    -- to a statement about subspaces of `V` via `submodule.subtype`:
    have ih_ER' : ⨆ (μ : K) (k : ℕ), (f'.generalizedEigenspace μ k).map ER.subtype = ER := by
      simp only [(Submodule.map_iSup _ _).symm, ih_ER, Submodule.map_subtype_top ER]
    -- Moreover, every generalized eigenspace of `f'` is contained in the corresponding generalized
    -- eigenspace of `f`.
    have hff' :
      ∀ μ k, (f'.generalizedEigenspace μ k).map ER.subtype ≤ f.generalizedEigenspace μ k := by
      intros
      rw [generalizedEigenspace_restrict]
      apply Submodule.map_comap_le
    -- It follows that `ER` is contained in the span of all generalized eigenvectors.
    have hER : ER ≤ ⨆ (μ : K) (k : ℕ), f.generalizedEigenspace μ k := by
      rw [← ih_ER']
      exact iSup₂_mono hff'
    -- `ES` is contained in this span by definition.
    have hES : ES ≤ ⨆ (μ : K) (k : ℕ), f.generalizedEigenspace μ k :=
      le_trans (le_iSup (fun k => f.generalizedEigenspace μ₀ k) (finrank K V))
        (le_iSup (fun μ : K => ⨆ k : ℕ, f.generalizedEigenspace μ k) μ₀)
    -- Moreover, we know that `ER` and `ES` are disjoint.
    have h_disjoint : Disjoint ER ES := generalized_eigenvec_disjoint_range_ker f μ₀
    -- Since the dimensions of `ER` and `ES` add up to the dimension of `V`, it follows that the
    -- span of all generalized eigenvectors is all of `V`.
    show ⨆ (μ : K) (k : ℕ), f.generalizedEigenspace μ k = ⊤
    · rw [← top_le_iff, ← Submodule.eq_top_of_disjoint ER ES h_dim_add h_disjoint]
      apply sup_le hER hES
#align module.End.supr_generalized_eigenspace_eq_top Module.End.iSup_generalizedEigenspace_eq_top

end End

end Module
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IsAlgClosed/Variantd576e0fb83c61b2d8f0909b4c5f3fbf1249ffbfc452610fc1ba42225ce9320d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IsAlgClosed/Variantd576e0fb83c61b2d8f0909b4c5f3fbf1249ffbfc452610fc1ba42225ce9320d4.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40bcbe2fe9717ccf6a126a3db442089e5e2ad358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
