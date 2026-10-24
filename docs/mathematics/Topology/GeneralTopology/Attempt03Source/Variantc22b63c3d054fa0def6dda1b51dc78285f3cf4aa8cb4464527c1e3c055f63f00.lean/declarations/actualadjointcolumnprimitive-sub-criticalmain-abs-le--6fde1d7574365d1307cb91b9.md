# actualAdjointColumnPrimitive_sub_criticalMain_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0748509-d766-4365-c9b8-969d0918803c",
  "kind": "theorem",
  "lexical_name": "actualAdjointColumnPrimitive_sub_criticalMain_abs_le",
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
  "slug": "actualadjointcolumnprimitive-sub-criticalmain-abs-le--6fde1d7574365d1307cb91b9",
  "source": {
    "blob": "e8f55fdb486e10326a212999bfdf3613111c35aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fde1d7574365d1307cb91b93d7918edd46e1a5a99ae4e7a551f809030072ec8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0748509-d766-4365-c9b8-969d0918803c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointColumnPrimitive_sub_criticalMain_abs_le {A : ℝ} (hA : 4 ≤ A) :
    |actualAdjointColumnPrimitive A (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) -
      actualCriticalColumnTraceMain A| ≤ 24 * A ^ 4 * Real.exp (-A) := by
  have hA1 : 1 ≤ A := by linarith
  let U := vaughanCutoff A
  let K := sourceKernelCutoff A / (U + 1)
  let L := K - 1
  let a : ℝ := ((U + 1 : ℕ) : ℝ)
  have hU : 1 ≤ U := vaughanCutoff_pos A hA1
  have hK : U + 1 ≤ K := actual_column_window_nonempty hA1
  have hL : 0 < (L : ℝ) := by exact_mod_cast (show 0 < L by omega)
  have ht : |actualCenteredColumnTerminalTrace A| ≤
      ((U : ℝ) - 1) / Real.sqrt (L : ℝ) := by
    have hh := actualCenteredColumnTerminalTrace_abs_le hA1
    apply hh.trans
    change ((U : ℝ) - 1) / Real.sqrt (K : ℝ) ≤ _
    apply div_le_div_of_nonneg_left (by exact_mod_cast (show 0 ≤ U - 1 by omega))
      (Real.sqrt_pos.2 hL)
    exact Real.sqrt_le_sqrt (by exact_mod_cast (show L ≤ K by omega))
  have he : |actualCenteredHalfUpperDefect A| ≤ (2 * (U : ℝ) + 1) /
      Real.sqrt (L : ℝ) := actualCenteredColumnHalfInventory_sub_zetaMain_abs_le hA1
  have hgap : |actualCenteredHalfUpperDefect A - actualCenteredColumnTerminalTrace A| ≤
      3 * (U : ℝ) / Real.sqrt (L : ℝ) := by
    apply (abs_sub _ _).trans
    calc
      _ ≤ (2 * (U : ℝ) + 1) / Real.sqrt (L : ℝ) +
          ((U : ℝ) - 1) / Real.sqrt (L : ℝ) := add_le_add he ht
      _ = _ := by ring
  have hi : 1 / Real.sqrt (L : ℝ) ≤ 2 * Real.sqrt a * Real.exp (-A) :=
    inv_sqrt_upper_le hA
  have hf : (U : ℝ) ≤ A ^ 2 := Nat.floor_le (sq_nonneg A)
  have ha : a ≤ 2 * A ^ 2 := by dsimp [a]; simp only [Nat.cast_add, Nat.cast_one]; nlinarith
  have hp : a * (U : ℝ) ≤ 2 * A ^ 4 := by
    calc
      _ ≤ (2 * A ^ 2) * A ^ 2 :=
        mul_le_mul ha hf (Nat.cast_nonneg _) (by positivity)
      _ = _ := by ring
  rw [actualAdjointColumnPrimitive_sub_criticalMain_eq hA1, abs_mul, abs_mul,
    abs_of_nonneg (Real.sqrt_nonneg _)]
  norm_num
  change 2 * Real.sqrt a * |actualCenteredHalfUpperDefect A -
    actualCenteredColumnTerminalTrace A| ≤ _
  calc
    _ ≤ 2 * Real.sqrt a * (3 * (U : ℝ) / Real.sqrt (L : ℝ)) :=
      mul_le_mul_of_nonneg_left hgap (by positivity)
    _ = 6 * Real.sqrt a * (U : ℝ) * (1 / Real.sqrt (L : ℝ)) := by ring
    _ ≤ 6 * Real.sqrt a * (U : ℝ) * (2 * Real.sqrt a * Real.exp (-A)) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ = 12 * (Real.sqrt a) ^ 2 * (U : ℝ) * Real.exp (-A) := by ring
    _ = 12 * (a * (U : ℝ)) * Real.exp (-A) := by
      rw [Real.sq_sqrt (show 0 ≤ a by dsimp [a]; positivity)]
      ring
    _ ≤ 12 * (2 * A ^ 4) * Real.exp (-A) := by gcongr
    _ = _ := by ring

/-- Only the finite upper correction vanishes; the signed critical main remains actual. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt03Source/Variantc22b63c3d054fa0def6dda1b51dc78285f3cf4aa8cb4464527c1e3c055f63f00.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8f55fdb486e10326a212999bfdf3613111c35aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
