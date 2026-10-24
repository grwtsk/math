# quartic_count_of_global_growth

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:afe19b77-fcc3-a6c9-1de7-603376d33d9d",
  "kind": "theorem",
  "lexical_name": "quartic_count_of_global_growth",
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
  "slug": "quartic-count-of-global-growth--e3661b200fb2d42f1a3421b6",
  "source": {
    "blob": "7a0a7e16d0ae797b73cf75b470edf97968588dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variantc7c509a62b71d3a06203c038ca4360ab032183553a0e97c4454918e9b7c13fab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3661b200fb2d42f1a3421b6aa3f72f2895d3e96a2e4a4e00f701f5ee9136e4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Count/Variantc7c509a62b71d3a06203c038ca4360ab032183553a0e97c4454918e9b7c13fab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:afe19b77-fcc3-a6c9-1de7-603376d33d9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quartic_count_of_global_growth (h : GlobalGrowthObligation) :
    QuarticCountObligation := by
  obtain ⟨A, hA, hbound⟩ := h
  have hlog : 0 < Real.log 2 := Real.log_pos (by norm_num)
  refine ⟨16 * A / Real.log 2, by positivity, ?_⟩
  intro n
  have hn : (0 : ℝ) ≤ n := Nat.cast_nonneg n
  have hr : 0 < (n : ℝ) + 2 := by positivity
  have hM : 1 ≤ Real.exp (A * ((n : ℝ)+2)^4) :=
    Real.one_le_exp (by positivity)
  have hj := jensen_count_bound hr hM (hbound ((n : ℝ)+2) (by linarith))
  rw [Real.log_exp, abs_of_pos hr] at hj
  have hp : ((n : ℝ)+2)^4 ≤ 16 * ((n : ℝ)+1)^4 := by
    calc
      ((n : ℝ)+2)^4 ≤ (2*((n : ℝ)+1))^4 :=
        pow_le_pow_left₀ (by positivity) (by linarith) 4
      _ = 16*((n : ℝ)+1)^4 := by ring
  calc
    (Nat.card (ZeroShell n) : ℝ) ≤ A * ((n : ℝ)+2)^4 / Real.log 2 :=
      (shell_card_le_divisor_real n).trans hj
    _ ≤ A * (16 * ((n : ℝ)+1)^4) / Real.log 2 :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hp hA.le) hlog.le
    _ = (16 * A / Real.log 2) * ((n : ℝ)+1)^4 := by ring

#print axioms pole_clearing
#print axioms shell_transport
#print axioms quartic_count_of_global_growth
end
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Count/Variantc7c509a62b71d3a06203c038ca4360ab032183553a0e97c4454918e9b7c13fab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Count/Variantc7c509a62b71d3a06203c038ca4360ab032183553a0e97c4454918e9b7c13fab.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a0a7e16d0ae797b73cf75b470edf97968588dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
