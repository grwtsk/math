# arithmeticResidual_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13c0ba8320f9b0f96c99c100ce8986b0af025ae1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:37ae59aa-2fec-1b1c-c678-b91956390f6c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:713b6bab-2179-b9b8-a7fa-5597e978d54d",
  "kind": "theorem",
  "lexical_name": "arithmeticResidual_norm_le",
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
  "slug": "arithmeticresidual-norm-le--9fb28c9a9236ce1092ad74f4",
  "source": {
    "blob": "13c0ba8320f9b0f96c99c100ce8986b0af025ae1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 39,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb28c9a9236ce1092ad74f41d5d43c414b23894c1d745fe699d26e1aa0a8159",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:713b6bab-2179-b9b8-a7fa-5597e978d54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arithmeticResidual_norm_le (X : ℕ) (ε x : ℝ) :
    ‖arithmeticResidual X ε x‖ ≤ 1 + ∑ d ∈ Finset.Icc 1 X, |dampedCoefficient X ε d| := by
  unfold arithmeticResidual
  calc
    _ ≤ ‖(if 1 ≤ x then (1 : ℂ) else 0)‖ +
        ‖∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
          ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := norm_add_le _ _
    _ ≤ 1 + ∑ d ∈ Finset.Icc 1 X,
        ‖(dampedCoefficient X ε d : ℂ) * ((Int.fract (x / (d : ℝ)) : ℝ) : ℂ)‖ := by
      apply add_le_add
      · split_ifs <;> norm_num
      · exact norm_sum_le _ _
    _ ≤ _ := by
      gcongr with d hd
      rw [norm_mul]
      simp only [Complex.norm_real, Real.norm_eq_abs]
      rw [abs_of_nonneg (Int.fract_nonneg (x / (d : ℝ)))]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (Int.fract_lt_one (x / (d : ℝ))).le (abs_nonneg (dampedCoefficient X ε d))

/-- The negative logarithmic half-line is exactly the exponentially weighted corrected pole value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LogarithmicResidualTail/Variant241bd4c989f42ad23fd79b6e965c35946796cad93c5f2757e49f91fcd68f2d63.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c0ba8320f9b0f96c99c100ce8986b0af025ae1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
