# diagonal_le_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:43381542-7363-4cdf-f4ee-599d49054579",
  "kind": "theorem",
  "lexical_name": "diagonal_le_comparison",
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
  "slug": "diagonal-le-comparison--8efb4112ae8b7f92e370ca32",
  "source": {
    "blob": "b0e95b1dc23f1700c8892652db73d1586345d97c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 197,
    "path": "GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8efb4112ae8b7f92e370ca32096d54cc0e68c44ab03e18ccc9ae015b14892f16",
  "verification": {
    "reference": "docs/verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43381542-7363-4cdf-f4ee-599d49054579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_le_comparison {A t : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) :
    diagonalEnergy A t ≤ ∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊, comparison A t n := by
  have hsub : Finset.Icc 1 ⌊Real.exp t⌋₊ ⊆ integerInventory A := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans (Nat.floor_mono (Real.exp_le_exp.mpr ht.2))⟩
  have he : (∑ n ∈ integerInventory A, realMoebius n ^ 2 * pickupWeight A t n ^ 2) =
      ∑ n ∈ Finset.Icc 1 ⌊Real.exp t⌋₊, realMoebius n ^ 2 * pickupWeight A t n ^ 2 := by
    symm
    apply Finset.sum_subset hsub
    intro n hn hnot
    have hlo := (Finset.mem_Icc.mp hn).1
    have hhi : ⌊Real.exp t⌋₊ < n := by
      by_contra h
      exact hnot (Finset.mem_Icc.mpr ⟨hlo, le_of_not_gt h⟩)
    have hx : Real.exp t < (n : ℝ) := (Nat.floor_lt (Real.exp_pos t).le).mp hhi
    rw [weight_above hA ht.1 hx]
    ring
  unfold diagonalEnergy
  rw [he]
  apply Finset.sum_le_sum
  intro n hn
  have hx : (n : ℝ) ≤ Real.exp t :=
    (Nat.le_floor_iff (Real.exp_pos t).le).mp (Finset.mem_Icc.mp hn).2
  have h := mul_le_mul_of_nonneg_right (moebius_square_le_one n)
    (sq_nonneg (pickupWeight A t n))
  simpa only [one_mul, comparison_atom hA ht.1 hx] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchSharpDiagonal/Varianta0ad0b28014822fc155f10aa0d1586382349d32c3d3ccafe3d2e51240dc2a2f9.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0e95b1dc23f1700c8892652db73d1586345d97c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
