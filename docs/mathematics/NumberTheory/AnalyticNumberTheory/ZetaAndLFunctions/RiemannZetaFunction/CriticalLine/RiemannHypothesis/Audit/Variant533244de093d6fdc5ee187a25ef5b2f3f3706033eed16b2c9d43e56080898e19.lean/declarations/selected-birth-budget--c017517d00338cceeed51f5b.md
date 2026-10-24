# selected_birth_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26a5dcb5-6707-4862-6106-f555cf915087",
  "kind": "theorem",
  "lexical_name": "selected_birth_budget",
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
  "slug": "selected-birth-budget--c017517d00338cceeed51f5b",
  "source": {
    "blob": "f8443268ad088ff9337085f5dc050a89dad9f8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 98,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c017517d00338cceeed51f5bb832cb03298579b603483e3b5e2261b09c9a6e51",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26a5dcb5-6707-4862-6106-f555cf915087`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_birth_budget {s : Finset ℕ} {m N : ℕ} {κ : ℝ}
    (hm : 2 ≤ m) (hN : m ≤ N) (hκ : 0 ≤ κ)
    (hs : s ⊆ Finset.Icc m N) {jump : ℕ → ℝ}
    (hj : ∀ j ∈ s, |jump j| ≤ κ / (24 * (j : ℝ) ^ 2)) :
    |∑ j ∈ s, jump j| ≤ κ / (24 * ((m : ℝ) - 1)) := by
  have hp : 0 ≤ κ / 24 := by positivity
  have hsub : (∑ j ∈ s, (1 : ℝ) / (j : ℝ) ^ 2) ≤
      ∑ j ∈ Finset.Icc m N, (1 : ℝ) / (j : ℝ) ^ 2 :=
    Finset.sum_le_sum_of_subset_of_nonneg hs (fun j _ _ ↦ by positivity)
  have ht := inverse_square_sum_le hm hN
  have hterm : 0 ≤ (1 : ℝ) / (N : ℝ) := by positivity
  calc
    |∑ j ∈ s, jump j| ≤ ∑ j ∈ s, |jump j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ s, κ / (24 * (j : ℝ) ^ 2) := Finset.sum_le_sum hj
    _ = κ / 24 * (∑ j ∈ s, (1 : ℝ) / (j : ℝ) ^ 2) := by
      rw [Finset.mul_sum]
      congr 1
      ext j
      ring
    _ ≤ κ / 24 * (1 / ((m : ℝ) - 1)) := by
      exact mul_le_mul_of_nonneg_left (by linarith) hp
    _ = κ / (24 * ((m : ℝ) - 1)) := by
      simp only [div_eq_mul_inv, mul_inv_rev]
      ring

/-- Upward source births can be retained without weakening a lower bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Audit/Variant533244de093d6fdc5ee187a25ef5b2f3f3706033eed16b2c9d43e56080898e19.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8443268ad088ff9337085f5dc050a89dad9f8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
