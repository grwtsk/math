# ae_of_mem_of_ae_of_mem_inter_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d7d31bb-b30e-2961-3672-445fd40a3f0c",
  "kind": "theorem",
  "lexical_name": "ae_of_mem_of_ae_of_mem_inter_Ioo",
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
  "slug": "ae-of-mem-of-ae-of-mem-inter-ioo--f2c39305505b83ad61e6125b",
  "source": {
    "blob": "c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 628,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2c39305505b83ad61e6125b36b934803ab9f0fa027f2711dc8ddb39b0dc8291",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d7d31bb-b30e-2961-3672-445fd40a3f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 628–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_of_mem_of_ae_of_mem_inter_Ioo {μ : Measure ℝ} [NoAtoms μ] {s : Set ℝ} {p : ℝ → Prop}
    (h : ∀ a b, a ∈ s → b ∈ s → a < b → ∀ᵐ x ∂μ, x ∈ s ∩ Ioo a b → p x) :
    ∀ᵐ x ∂μ, x ∈ s → p x := by
  /- By second-countability, we cover `s` by countably many intervals `(a, b)` (except maybe for
    two endpoints, which don't matter since `μ` does not have any atom). -/
  let T : s × s → Set ℝ := fun p => Ioo p.1 p.2
  let u := ⋃ i : ↥s × ↥s, T i
  have hfinite : (s \ u).Finite := s.finite_diff_iUnion_Ioo'
  obtain ⟨A, A_count, hA⟩ :
    ∃ A : Set (↥s × ↥s), A.Countable ∧ ⋃ i ∈ A, T i = ⋃ i : ↥s × ↥s, T i :=
    isOpen_iUnion_countable _ fun p => isOpen_Ioo
  have M : ∀ᵐ x ∂μ, x ∉ s \ u := hfinite.countable.ae_not_mem _
  have M' : ∀ᵐ x ∂μ, ∀ (i : ↥s × ↥s), i ∈ A → x ∈ s ∩ T i → p x := by
    rw [ae_ball_iff A_count]
    rintro ⟨⟨a, as⟩, ⟨b, bs⟩⟩ -
    change ∀ᵐ x : ℝ ∂μ, x ∈ s ∩ Ioo a b → p x
    rcases le_or_lt b a with (hba | hab)
    · simp only [Ioo_eq_empty_of_le hba, inter_empty, IsEmpty.forall_iff, eventually_true,
        mem_empty_iff_false]
    · exact h a b as bs hab
  filter_upwards [M, M'] with x hx h'x
  intro xs
  by_cases Hx : x ∈ ⋃ i : ↥s × ↥s, T i
  · rw [← hA] at Hx
    obtain ⟨p, pA, xp⟩ : ∃ p : ↥s × ↥s, p ∈ A ∧ x ∈ T p := by
      simpa only [mem_iUnion, exists_prop, SetCoe.exists, exists_and_right] using Hx
    apply h'x p pA ⟨xs, xp⟩
  · exact False.elim (hx ⟨xs, Hx⟩)
#align ae_of_mem_of_ae_of_mem_inter_Ioo ae_of_mem_of_ae_of_mem_inter_Ioo
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant1b2ace5c97c81ef1325d68586c0a9d942d9d0af291572c9b232aff4177623577.lean#L628).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2fc3e1be0ac1e5d3b364d72e0ff978c6dfdb529` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
