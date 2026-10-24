# bilinear_doublyStochastic_le_of_monovary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87c9ece2-2a80-5779-854d-29e8a2167a01",
  "kind": "lemma",
  "lexical_name": "bilinear_doublyStochastic_le_of_monovary",
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
  "slug": "bilinear-doublystochastic-le-of-monovary--d5ccd0144c7ad0bf97bc83cf",
  "source": {
    "blob": "c1fd838d78e2be13e742ad247e4c7699f830db66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 151,
    "path": "GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5ccd0144c7ad0bf97bc83cfb7bd7802d8f2b818a4f35c5475094daa518b3b4c",
  "verification": {
    "reference": "docs/verification/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87c9ece2-2a80-5779-854d-29e8a2167a01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bilinear_doublyStochastic_le_of_monovary {a b : n → ℝ}
    (hab : Monovary a b) {S : Matrix n n ℝ} (hS : S ∈ doublyStochastic ℝ n) :
    ∑ k, ∑ l, a k * S k l * b l ≤ ∑ k, a k * b k := by
  -- LHS `= ∑ₖ aₖ · (S *ᵥ b)ₖ`.
  have hlhs : ∑ k, ∑ l, a k * S k l * b l = ∑ k, a k * (S *ᵥ b) k := by
    simp only [mulVec, dotProduct, mul_sum, mul_assoc]
  rw [hlhs]
  -- Birkhoff: `S = ∑_σ w_σ • P_σ`.
  obtain ⟨w, hw_nonneg, hw_sum, hw_eq⟩ :=
    exists_eq_sum_perm_of_mem_doublyStochastic hS
  rw [← hw_eq]
  simp only [sum_mulVec, smul_mulVec, permMatrix_mulVec, Finset.sum_apply,
    Pi.smul_apply, smul_eq_mul, Function.comp_apply, mul_sum]
  rw [sum_comm]
  -- `∑_σ ∑ₖ aₖ · (w_σ · b(σ k)) = ∑_σ w_σ · ∑ₖ aₖ · b(σ k) ≤ ∑ₖ aₖ bₖ`.
  calc ∑ σ : Equiv.Perm n, ∑ k, a k * (w σ * b (σ k))
      = ∑ σ, w σ * ∑ k, a k * b (σ k) := by
        refine sum_congr rfl fun σ _ => ?_
        rw [mul_sum]; exact sum_congr rfl fun k _ => by ring
    _ ≤ ∑ σ, w σ * ∑ k, a k * b k := by
        refine sum_le_sum fun σ _ => mul_le_mul_of_nonneg_left ?_ (hw_nonneg σ)
        exact hab.sum_mul_comp_perm_le_sum_mul (σ := σ)
    _ = ∑ k, a k * b k := by rw [← sum_mul, hw_sum, one_mul]

end Rearrangement

/-- **Von Neumann's trace inequality** (Hermitian case). For Hermitian `A, B`
with eigenvalues sorted in decreasing order, `Re tr(AB) ≤ ∑ᵢ aᵢ bᵢ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/VonNeumann/Varianta3dcdd3959da6d692c7ea0eeec6e21ab793afeb43bdb34083007ad1cc76c5ea9.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1fd838d78e2be13e742ad247e4c7699f830db66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
