# sum_psiA_shift_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c5c3220f-a0de-a8d3-ffc8-dc7e5870d5a4",
  "kind": "theorem",
  "lexical_name": "sum_psiA_shift_right",
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
  "slug": "sum-psia-shift-right--79fa442d5133f4dc37d3400c",
  "source": {
    "blob": "3d7ed2e6b1126f6adbc503c70929d890d7cb9deb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 225,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79fa442d5133f4dc37d3400c389f0125a482868c9f73ff0477a840deef90e21f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5c3220f-a0de-a8d3-ffc8-dc7e5870d5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_psiA_shift_right (hL : 0 ≤ p.L) (hc : 0 ≤ cϱ) (hw : 0 < p.w)
    {T h τ : ℝ} (hh : 0 < h) (hτ : 2 * T ≤ τ) {d : ℕ}
    (hgrid : ∀ k : ℕ, k < d → T + k * h ≤ 2 * T) :
    ∑ k ∈ Finset.range d, psiA cϱ p (τ - (T + k * h))
      ≤ ∑ j ∈ Finset.range d, psiA cϱ p ((τ - 2 * T) + j * h) := by
  rcases Nat.eq_zero_or_pos d with rfl | hd
  · simp
  rw [← Finset.sum_range_reflect (fun k => psiA cϱ p (τ - (T + k * h))) d]
  refine Finset.sum_le_sum fun j hj => ?_
  have hj' : j < d := Finset.mem_range.mp hj
  have hdj : d - 1 - j < d := by omega
  have hgr := hgrid (d - 1 - j) hdj
  have hg1 : T + ((d : ℝ) - 1) * h ≤ 2 * T := by
    have h1 := hgrid (d - 1) (by omega)
    rwa [Nat.cast_sub (by omega : 1 ≤ d), Nat.cast_one] at h1
  have hcast : ((d - 1 - j : ℕ) : ℝ) = (d : ℝ) - 1 - j := by
    have h1 : j ≤ d - 1 := by omega
    rw [Nat.cast_sub h1, Nat.cast_sub (by omega : 1 ≤ d), Nat.cast_one]
  rw [hcast]
  apply psiA_antitoneOn hL hc hw
  · exact Set.mem_Ici.mpr (by nlinarith [mul_nonneg (Nat.cast_nonneg (α := ℝ) j) hh.le])
  · exact Set.mem_Ici.mpr (by nlinarith)
  · nlinarith

end Grid

end PrimeSide
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsWeighted/Variantfc5d8e40f8023fa81bdaf39813cea0dfb8ffad949f352d83584868b4a6c8dc27.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d7ed2e6b1126f6adbc503c70929d890d7cb9deb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
