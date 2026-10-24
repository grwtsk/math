# sum_sq_lower_of_card_pos_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:942ce889-7988-a73d-39b7-b71db9cabdfc",
  "kind": "lemma",
  "lexical_name": "sum_sq_lower_of_card_pos_le",
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
  "slug": "sum-sq-lower-of-card-pos-le--78f2cde3182ada82adb6fc59",
  "source": {
    "blob": "9a0a616e0c3e31734ce9f046659c5fc3a882e9ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f2cde3182ada82adb6fc59360371f59fce0b3aafe95f35444a5e9b9aa07217",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:942ce889-7988-a73d-39b7-b71db9cabdfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_sq_lower_of_card_pos_le {q : ι → ℝ}
    {b : ℕ} (hb : #{i | q i ≠ 0} ≤ b) (c : ℝ) :
    2 * c * (∑ i, q i) - c ^ 2 * b ≤ ∑ i, (q i) ^ 2 := by
  classical
  set s : Finset ι := {i | q i ≠ 0} with hs_def
  have hptwise : ∀ i ∈ (univ : Finset ι),
      2 * c * q i - (if i ∈ s then c ^ 2 else 0) ≤ (q i) ^ 2 := by
    intro i _
    rcases eq_or_ne (q i) 0 with hi | hi
    · have his : i ∉ s := by simp [hs_def, mem_filter, hi]
      rw [if_neg his, hi]; simp
    · have his : i ∈ s := by simp [hs_def, mem_filter, hi]
      rw [if_pos his]; exact sq_ge_linear' (q i) c
  have hsum := sum_le_sum hptwise
  simp only [sum_sub_distrib, ← mul_sum, sum_ite_mem, univ_inter, sum_const,
    nsmul_eq_mul] at hsum
  have hcard : (#s : ℝ) * c ^ 2 ≤ b * c ^ 2 :=
    mul_le_mul_of_nonneg_right (Nat.cast_le.mpr hb) (sq_nonneg c)
  linarith

end Elementary

/-! ### Trace and Frobenius-norm identities -/

/-- `tr(AB) ≥ 0` when `A, B ⪰ 0`. Proof: diagonalise `A = U D Uᴴ`; then
`tr(AB) = tr((UᴴBU)D) = ∑ᵢ λᵢ · (UᴴBU)ᵢᵢ`, where each `λᵢ ≥ 0` (PSD
eigenvalues) and each `(UᴴBU)ᵢᵢ ≥ 0` (diagonal of a PSD matrix). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RankTrace/Variant8e96079325f5089838380fc1d11dbe16d0d6a3ad707de6f080f79f4646c38165.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a0a616e0c3e31734ce9f046659c5fc3a882e9ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
