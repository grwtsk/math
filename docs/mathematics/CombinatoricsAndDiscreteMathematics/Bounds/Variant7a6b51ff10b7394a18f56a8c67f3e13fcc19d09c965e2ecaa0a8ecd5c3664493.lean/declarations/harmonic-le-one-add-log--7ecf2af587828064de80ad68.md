# harmonic_le_one_add_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae9c10f9-b326-812e-55fe-bba4aaf0e1b4",
  "kind": "theorem",
  "lexical_name": "harmonic_le_one_add_log",
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
  "slug": "harmonic-le-one-add-log--7ecf2af587828064de80ad68",
  "source": {
    "blob": "809e2753eac72c907d1a657b0e0c060cd7844cbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ecf2af587828064de80ad68ab356483095783a6117ff16986ef4c5c28a0802f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae9c10f9-b326-812e-55fe-bba4aaf0e1b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonic_le_one_add_log (n : ℕ) :
    harmonic n ≤ 1 + Real.log n := by
  by_cases hn0 : n = 0
  · simp [hn0]
  have hn : 1 ≤ n := Nat.one_le_iff_ne_zero.mpr hn0
  simp_rw [harmonic_eq_sum_Icc, Rat.cast_sum, Rat.cast_inv, Rat.cast_natCast]
  rw [← Finset.sum_erase_add (Finset.Icc 1 n) _ (Finset.left_mem_Icc.mpr hn), add_comm,
    Nat.cast_one, inv_one]
  refine add_le_add_left ?_ 1
  simp only [Nat.lt_one_iff, Finset.mem_Icc, Finset.Icc_erase_left]
  calc ∑ d ∈ .Ico 2 (n + 1), (d : ℝ)⁻¹
    _ = ∑ d ∈ .Ico 2 (n + 1), (↑(d + 1) - 1)⁻¹ := ?_
    _ ≤ ∫ x in (2).. ↑(n + 1), (x - 1)⁻¹  := ?_
    _ = ∫ x in (1)..n, x⁻¹ := ?_
    _ = Real.log ↑n := ?_
  · simp_rw [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]
  · exact @AntitoneOn.sum_le_integral_Ico 2 (n + 1) (fun x : ℝ ↦ (x - 1)⁻¹) (by linarith [hn]) <|
      sub_inv_antitoneOn_Icc_right (by norm_num)
  · convert intervalIntegral.integral_comp_sub_right _ 1
    · norm_num
    · simp only [Nat.cast_add, Nat.cast_one, add_sub_cancel_right]
  · convert integral_inv _
    · rw [div_one]
    · simp only [Nat.one_le_cast, hn, Set.uIcc_of_le, Set.mem_Icc, Nat.cast_nonneg,
        and_true, not_le, zero_lt_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809e2753eac72c907d1a657b0e0c060cd7844cbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
