# exact_complete_finite_pulse_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58b8bd3e-2ad8-0e2e-224e-edf593428fdd",
  "kind": "theorem",
  "lexical_name": "exact_complete_finite_pulse_inventory",
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
  "slug": "exact-complete-finite-pulse-inventory--13ea2e18755f788f978daed7",
  "source": {
    "blob": "b5d3d30f19ac5c4e5e1d0dab8a7eea4ba85e3ede",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 21,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularBankInventory/Variant19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13ea2e18755f788f978daed70a7e28188d56913e87b77bb3ccf0bd1829786d21",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularBankInventory/Variant19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58b8bd3e-2ad8-0e2e-224e-edf593428fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exact_complete_finite_pulse_inventory (M : ℕ → ℕ) (hM : ∀ j, j + 2 ≤ M j)
    (hsep : Separated M) (a : ℝ) (n : ℕ) :
    bankStorage M a n = ∑ j ∈ Finset.range (n + 1), storage (M j) a n := by
  by_cases hz : height M n = 0
  · have hs : ∀ j ∈ Finset.range (n + 1), storage (M j) a n = 0 := by
      intro j hj
      have hle : triangle (M j) n ≤ height M n :=
        Finset.le_sup (f := fun k ↦ triangle (M k) n) hj
      rw [hz] at hle
      have ht : triangle (M j) n = 0 := Nat.eq_zero_of_le_zero hle
      simp [storage, ht]
    simp [bankStorage, hz, Finset.sum_eq_zero hs]
  · have hp : (0 : ℕ) < height M n := Nat.pos_of_ne_zero hz
    obtain ⟨j, hj, hle⟩ := (Finset.le_sup_iff hp).mp (le_rfl : height M n ≤ height M n)
    have ht : 0 < triangle (M j) n := hp.trans_le hle
    have hn : (M j) ^ 2 ≤ n := by unfold triangle at ht; omega
    have hnU : n ≤ (M j) ^ 2 + 2 * M j := by unfold triangle at ht; omega
    rw [bank_retains_complete_pulse M hM hsep j n hn hnU a]
    symm
    apply Finset.sum_eq_single j
    · intro k _ hkj
      rcases hsep k j hkj with h | h
      · exact pulse_is_zero_outside (Or.inr (h.trans hn)) a
      · exact pulse_is_zero_outside (Or.inl (hnU.trans h)) a
    · intro hnot
      exact False.elim (hnot hj)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularBankInventory/Variant19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularBankInventory/Variant19542910eaecd46ad0636bcee9704796a7d7c2ff836507ea8882362f6088e7dc.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5d3d30f19ac5c4e5e1d0dab8a7eea4ba85e3ede` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
