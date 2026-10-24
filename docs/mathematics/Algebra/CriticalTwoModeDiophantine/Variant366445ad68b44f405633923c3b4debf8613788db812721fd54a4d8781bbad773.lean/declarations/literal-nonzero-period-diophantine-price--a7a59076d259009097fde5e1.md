# literal_nonzero_period_diophantine_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0048d876-2403-6b05-fb56-746586f0bb66",
  "kind": "theorem",
  "lexical_name": "literal_nonzero_period_diophantine_price",
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
  "slug": "literal-nonzero-period-diophantine-price--a7a59076d259009097fde5e1",
  "source": {
    "blob": "dfb2d5c40b93fe8c353093184ad762e0b858f1bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 112,
    "path": "GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7a59076d259009097fde5e185c07b1dadf94c8c648cc97401d3d9082e8b99e2",
  "verification": {
    "reference": "docs/verification/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0048d876-2403-6b05-fb56-746586f0bb66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_nonzero_period_diophantine_price {α c t T : ℝ}
    (hbad : ∀ m : ℤ, m ≠ 0 → ∀ n : ℤ, c / |(m : ℝ)| ≤ |α * (m : ℝ) - (n : ℝ)|)
    (ht : 0 ≤ t) (htT : t ≤ T) (hT : 1 ≤ T) (hm : nearestPeriod t ≠ 0) :
    2 * Real.pi * c ≤ T * (|α| * |periodResidual t| + |periodResidual (α*t)|) := by
  have hmR : (nearestPeriod t : ℝ) ≠ 0 := by exact_mod_cast hm
  have hb := (div_le_iff₀ (abs_pos.mpr hmR)).mp
    (hbad (nearestPeriod t) hm (nearestPeriod (α*t)))
  have he : (2 * Real.pi) *
      (α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)) =
      periodResidual (α*t) - α * periodResidual t := by
    unfold periodResidual
    ring
  have htr : |periodResidual (α*t) - α * periodResidual t| ≤
      |periodResidual (α*t)| + |α * periodResidual t| := by
    simpa only [Real.norm_eq_abs] using norm_sub_le (periodResidual (α*t)) (α * periodResidual t)
  rw [← he, abs_mul, abs_of_pos (by positivity : (0 : ℝ) < 2 * Real.pi), abs_mul] at htr
  have hsize := literal_nearest_period_size_bound ht htT hT
  calc
    _ ≤ (2 * Real.pi) *
        (|α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)| * |(nearestPeriod t : ℝ)|) := by
      gcongr
    _ = |(nearestPeriod t : ℝ)| * ((2 * Real.pi) *
        |α * (nearestPeriod t : ℝ) - (nearestPeriod (α*t) : ℝ)|) := by ring
    _ ≤ T * (|periodResidual (α*t)| + |α| * |periodResidual t|) :=
      mul_le_mul hsize htr (by positivity) (by linarith)
    _ = _ := by ring

end
end GRWTSK.RiemannHypothesis.Conversation.CriticalTwoModeDiophantine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CriticalTwoModeDiophantine/Variant366445ad68b44f405633923c3b4debf8613788db812721fd54a4d8781bbad773.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfb2d5c40b93fe8c353093184ad762e0b858f1bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
