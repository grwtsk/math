# exists_NT_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4db41627-5fa9-808b-5bac-269bdcc5cb32",
  "kind": "theorem",
  "lexical_name": "exists_NT_ge",
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
  "slug": "exists-nt-ge--d73b2f01386ea753198ed9ae",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 499,
    "line": 467,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d73b2f01386ea753198ed9ae45ddab4e8277a20bde78ba7a6e19b2db93bb6ce6",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4db41627-5fa9-808b-5bac-269bdcc5cb32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_NT_ge (K : ℝ) : ∃ T : ℝ, 0 ≤ T ∧ K ≤ (NT T : ℝ) := by
  classical
  have hRvM := Zeta23.RvM.riemannVonMangoldt Zeta23.gammaFacts
  have h1 := Zeta23.Assembly.eventually_N_ge zetaZeroConfig hRvM
  have h2 : ∀ᶠ T : ℝ in atTop, 4 * Real.pi * K ≤ T * l T :=
    Zeta23.Assembly.tendsto_Tl_atTop.eventually_ge_atTop _
  obtain ⟨T₁, hT1, hT2, hT0⟩ := (h1.and (h2.and (eventually_ge_atTop 0))).exists
  refine ⟨2 * T₁, by linarith, ?_⟩
  have hK : K ≤ (zetaZeroConfig.N T₁ (2 * T₁) : ℝ) := by
    refine le_trans ?_ hT1
    rw [le_div_iff₀ (by positivity)]
    linarith
  refine hK.trans ?_
  have hfinW := zetaZeroConfig.finite_window T₁ (2 * T₁)
  have hN : zetaZeroConfig.N T₁ (2 * T₁) ≤ NT (2 * T₁) := by
    unfold ZeroConfig.N NT
    rw [show zetaZeroConfig.window T₁ (2 * T₁)
        = zetaZeroConfig.carrier ∩ {ρ | T₁ < ρ.im ∧ ρ.im ≤ 2 * T₁} from rfl,
      finsum_mem_eq_finite_toFinset_sum _ hfinW]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro ρ hρ
      rw [Set.Finite.mem_toFinset] at hρ ⊢
      obtain ⟨hc, hw1, hw2⟩ := hρ
      refine ⟨hc, ?_⟩
      show |ρ.im| ≤ 2 * T₁
      rw [abs_of_pos (by linarith)]
      exact hw2
    · intro _ _ _
      exact Nat.zero_le _
  exact_mod_cast hN

/-! ## §4. W ≠ 0 on Re s ≥ 1, |Im s| ≥ t₀ -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
