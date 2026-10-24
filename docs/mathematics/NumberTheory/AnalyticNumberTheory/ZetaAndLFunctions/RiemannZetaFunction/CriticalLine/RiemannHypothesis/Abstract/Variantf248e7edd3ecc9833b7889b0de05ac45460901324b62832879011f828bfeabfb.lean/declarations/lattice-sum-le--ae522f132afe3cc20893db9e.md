# lattice_sum_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e64b966-1aba-6751-a419-bba1f1122002",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1237c16c-3a3c-b882-6679-e1fcff7f8af2",
  "kind": "theorem",
  "lexical_name": "lattice_sum_le",
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
  "slug": "lattice-sum-le--ae522f132afe3cc20893db9e",
  "source": {
    "blob": "5a42f917d626b73389cf92ccd34f949a5e813862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae522f132afe3cc20893db9e252226d575c7aadb3f12cd356d2926249be2adb6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1237c16c-3a3c-b882-6679-e1fcff7f8af2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lattice_sum_le {h : ℝ} (hh : 0 < h) (d k : ℕ) (hk : k < d) :
    ∑ l ∈ range d, (1 / max 1 ((((k:ℝ) - l) * h) ^ 2)) ^ 2 ≤ 8 * (1 + 1 / h) := by
  -- (1/max)^2 ≤ 1/max ≤ 4/(|k-l|h+1)^2
  have hpt : ∀ l : ℕ, (1 / max 1 ((((k:ℝ) - l) * h) ^ 2)) ^ 2
      ≤ 4 / ((|(k:ℝ) - l| * h + 1)) ^ 2 := by
    intro l
    have h1 : 1 / max 1 ((((k:ℝ) - l) * h) ^ 2) ≤ 1 :=
      div_le_one_of_le₀ (le_max_left _ _) (by positivity)
    have h0 : 0 ≤ 1 / max 1 ((((k:ℝ) - l) * h) ^ 2) := by positivity
    calc (1 / max 1 ((((k:ℝ) - l) * h) ^ 2)) ^ 2
        ≤ 1 / max 1 ((((k:ℝ) - l) * h) ^ 2) := by nlinarith
      _ ≤ 4 / (|((k:ℝ) - l) * h| + 1) ^ 2 := inv_max_one_sq_le _
      _ = 4 / ((|(k:ℝ) - l| * h + 1)) ^ 2 := by rw [abs_mul, abs_of_pos hh]
  refine (sum_le_sum fun l _ => hpt l).trans ?_
  -- split range d = range k ∪ Ico k d
  rw [← Finset.sum_range_add_sum_Ico _ hk.le]
  have hleft : ∑ l ∈ range k, 4 / ((|(k:ℝ) - l| * h + 1)) ^ 2 ≤ 4 * (1 + 1 / h) := by
    have e : ∑ l ∈ range k, 4 / ((|(k:ℝ) - l| * h + 1)) ^ 2
        = ∑ m ∈ range k, 4 * (1 / ((((m:ℝ) + 1)) * h + 1) ^ 2) := by
      rw [← Finset.sum_range_reflect]
      refine sum_congr rfl fun m hm => ?_
      have hm' := Finset.mem_range.1 hm
      have : ((k - 1 - m : ℕ) : ℝ) = (k:ℝ) - 1 - m := by
        rw [Nat.cast_sub (by omega), Nat.cast_sub (by omega)]; simp
      rw [this, show (k:ℝ) - ((k:ℝ) - 1 - m) = m + 1 by ring,
        abs_of_nonneg (by positivity)]
      ring
    rw [e, ← mul_sum]
    have := sum_inv_affine_sq_le hh k
    nlinarith
  have hright : ∑ l ∈ Ico k d, 4 / ((|(k:ℝ) - l| * h + 1)) ^ 2 ≤ 4 * (1 + 1 / h) := by
    rw [Finset.sum_Ico_eq_sum_range]
    have e : ∑ m ∈ range (d - k), 4 / ((|(k:ℝ) - ((k + m : ℕ) : ℝ)| * h + 1)) ^ 2
        = ∑ m ∈ range (d - k), 4 * (1 / (((m:ℝ)) * h + 1) ^ 2) := by
      refine sum_congr rfl fun m _ => ?_
      push_cast
      rw [show (k:ℝ) - (k + m) = -m by ring, abs_neg, abs_of_nonneg (Nat.cast_nonneg m)]
      ring
    rw [e, ← mul_sum]
    have := sum_inv_affine_sq_le' hh (d - k)
    nlinarith
  linarith

/-! ### E. Three-matrix bookkeeping -/

section Frob2
open scoped Matrix.Norms.Frobenius

/-- G = M + D + E ⇒ tr G − tr M = tr D + tr E. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Abstract/Variantf248e7edd3ecc9833b7889b0de05ac45460901324b62832879011f828bfeabfb.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a42f917d626b73389cf92ccd34f949a5e813862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
