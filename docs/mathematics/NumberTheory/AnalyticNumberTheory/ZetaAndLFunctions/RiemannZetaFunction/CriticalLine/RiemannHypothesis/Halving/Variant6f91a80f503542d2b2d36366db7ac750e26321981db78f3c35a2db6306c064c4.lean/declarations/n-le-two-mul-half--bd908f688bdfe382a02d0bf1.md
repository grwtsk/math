# N_le_two_mul_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9791acc-33bb-b836-6210-401c632dbf56",
  "kind": "theorem",
  "lexical_name": "N_le_two_mul_half",
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
  "slug": "n-le-two-mul-half--bd908f688bdfe382a02d0bf1",
  "source": {
    "blob": "a0578364ef8fa609b949cf51cca40317932cadfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd908f688bdfe382a02d0bf1849110c0686b6ec11216af416c119f29ec0e042a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9791acc-33bb-b836-6210-401c632dbf56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem N_le_two_mul_half :
    (Z.N T₁ T₂ : ℝ) ≤ 2 * ∑ᶠ ρ ∈ Z.window T₁ T₂ ∩ {ρ | 1 / 2 ≤ ρ.re}, (Z.mult ρ : ℝ) := by
  have hW : (Z.window T₁ T₂).Finite := Z.window_finite T₁ T₂
  set A := Z.window T₁ T₂ ∩ {ρ | ρ.re < 1 / 2} with hAdef
  set B := Z.window T₁ T₂ ∩ {ρ | 1 / 2 ≤ ρ.re} with hBdef
  have hA : A.Finite := hW.subset inter_subset_left
  have hB : B.Finite := hW.subset inter_subset_left
  have hWAB : Z.window T₁ T₂ = A ∪ B := by
    ext ρ
    simp only [hAdef, hBdef, mem_union, mem_inter_iff, mem_ofPred_eq]
    constructor
    · intro h
      rcases lt_or_ge ρ.re (1 / 2) with h' | h'
      · exact Or.inl ⟨h, h'⟩
      · exact Or.inr ⟨h, h'⟩
    · rintro (⟨h, _⟩ | ⟨h, _⟩) <;> exact h
  have hdisj : Disjoint A B := by
    rw [Set.disjoint_left]
    rintro ρ ⟨_, h1⟩ ⟨_, h2⟩
    simp only [mem_ofPred_eq] at h1 h2
    linarith
  have hN : Z.N T₁ T₂ = ∑ᶠ ρ ∈ A, Z.mult ρ + ∑ᶠ ρ ∈ B, Z.mult ρ := by
    unfold ZeroConfig.N
    rw [hWAB, finsum_mem_union hdisj hA hB]
  have himage : reflect '' A ⊆ B := by
    rintro _ ⟨ρ, ⟨hρW, hlt⟩, rfl⟩
    refine ⟨Z.reflect_mem_window T₁ T₂ hρW, ?_⟩
    simp only [mem_ofPred_eq, reflect_re] at hlt ⊢
    linarith
  have hAB : ∑ᶠ ρ ∈ A, Z.mult ρ ≤ ∑ᶠ ρ ∈ B, Z.mult ρ := by
    calc ∑ᶠ ρ ∈ A, Z.mult ρ = ∑ᶠ ρ ∈ A, Z.mult (reflect ρ) :=
          finsum_mem_congr rfl (fun ρ hρ => (Z.mult_reflect ρ hρ.1.1).symm)
      _ = ∑ᶠ σ ∈ reflect '' A, Z.mult σ := (finsum_mem_image reflect_injective.injOn).symm
      _ ≤ ∑ᶠ σ ∈ B, Z.mult σ := Z.finsum_mult_mono T₁ T₂ himage inter_subset_left
  have hcast : (∑ᶠ ρ ∈ B, (Z.mult ρ : ℝ)) = ((∑ᶠ ρ ∈ B, Z.mult ρ : ℕ) : ℝ) := by
    rw [finsum_mem_eq_finite_toFinset_sum _ hB, finsum_mem_eq_finite_toFinset_sum _ hB,
      Nat.cast_sum]
  rw [hcast, hN]
  have hAB' : ((∑ᶠ ρ ∈ A, Z.mult ρ : ℕ) : ℝ) ≤ ((∑ᶠ ρ ∈ B, Z.mult ρ : ℕ) : ℝ) := by
    exact_mod_cast hAB
  push_cast
  linarith

end ZeroConfig
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Halving/Variant6f91a80f503542d2b2d36366db7ac750e26321981db78f3c35a2db6306c064c4.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0578364ef8fa609b949cf51cca40317932cadfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
