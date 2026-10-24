# int_2_to_3_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 198,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c5b7f15-3b73-898c-9989-53f66c3c89e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b092660-6703-a1d7-55e8-c7eb49e92d7c",
  "kind": "theorem",
  "lexical_name": "int_2_to_3_bounds",
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
  "slug": "int-2-to-3-bounds--c0a0fd5623dc355d1b058e07",
  "source": {
    "blob": "dbb8c95ef280735297ffb052a2684ad47c8c958e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0a0fd5623dc355d1b058e074356494cb3954190d31bb659a7dba54abca095c3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b092660-6703-a1d7-55e8-c7eb49e92d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem int_2_to_3_bounds :
    ∀ t ∈ Set.Icc (2:ℝ) 3, (9:ℚ)/10 ≤ 1/Real.log t ∧ 1/Real.log t ≤ (15:ℚ)/10 := by
  intro t ht
  have hlog_lo : (69:ℚ)/100 ≤ Real.log t := log_lower_on_2_3 t ht
  have hlog_hi : Real.log t ≤ (11:ℚ)/10 := log_upper_on_2_3 t ht
  have hlog_pos : 0 < Real.log t := by
    calc (0:ℝ) < 69/100 := by norm_num
      _ ≤ Real.log t := hlog_lo
  constructor
  · -- Lower bound: 1/log(t) ≥ 1/1.1 ≈ 0.91 ≥ 0.9
    have h : 1 / Real.log t ≥ 1 / (11/10 : ℝ) := by
      apply one_div_le_one_div_of_le hlog_pos hlog_hi
    have h2 : (1:ℝ) / (11/10) = 10/11 := by ring
    have h3 : (9:ℝ)/10 ≤ 10/11 := by norm_num
    calc (9:ℚ)/10 = (9:ℝ)/10 := by norm_num
      _ ≤ 10/11 := h3
      _ = 1 / (11/10) := h2.symm
      _ ≤ 1 / Real.log t := h
  · -- Upper bound: 1/log(t) ≤ 1/0.69 ≈ 1.45 ≤ 1.5
    have hlog_lo' : (69:ℝ)/100 ≤ Real.log t := hlog_lo
    have h69_pos : (0:ℝ) < 69/100 := by norm_num
    have h : 1 / Real.log t ≤ 1 / (69/100 : ℝ) := by
      apply one_div_le_one_div_of_le h69_pos hlog_lo'
    have h2 : (1:ℝ) / (69/100) = 100/69 := by ring
    have h3 : (100:ℝ)/69 ≤ 15/10 := by norm_num
    calc 1 / Real.log t ≤ 1 / (69/100 : ℝ) := h
      _ = 100/69 := h2
      _ ≤ 15/10 := h3
      _ = (15:ℚ)/10 := by norm_num

/-! ## Summary: All proofs complete (no sorry)

### Proven results:
1. **Taylor bounds** on log(1+t): ✓
   - `log_one_plus_upper`: log(1+t) ≤ t
   - `log_one_plus_lower`: t/(1+t) ≤ log(1+t)

2. **Specific log values**: ✓
   - `log_1_5_bounds`: log(3/2) ∈ [0.40, 0.41]
   - `log_0_5_bounds`: log(1/2) ∈ [-0.70, -0.69]

3. **Cancellation bound**: ✓
   - `cancellation_at_0_1`: |1/log(1.1) + 1/log(0.9)| ≤ 2

4. **Key limit theorem**: ✓
   - `symmetric_log_combination_limit`: 1/log(1+t) + 1/log(1-t) → 1 as t → 0⁺
   - This proves the singularity is REMOVABLE!

5. **Integration bounds** for regions away from singularity: ✓
   - `int_2_to_3_bounds`: 0.9 ≤ 1/log(t) ≤ 1.5 for t ∈ [2, 3]

### The key mathematical insight:
The symmetric combination g(t) = 1/log(1+t) + 1/log(1-t) makes the
principal value integral for li(2) absolutely convergent because:
- The 1/t singularities cancel
- The remaining integrand is bounded (≤ 2)
- The limit as t → 0⁺ is exactly 1

This enables numerical computation: li(2) = ∫₀¹ g(t) dt ≈ 1.0451
-/

#check log_one_plus_upper
#check log_one_plus_lower
#check log_1_5_bounds

/-! ## Part E: The li(2) = 1.0451... bound

The integral li(2) = ∫₀² dt/log(t) can be rewritten using u = t - 1:
  li(2) = ∫₋₁¹ du/log(1+u)

By principal value symmetry:
  li(2) = ∫₀¹ (1/log(1+u) + 1/log(1-u)) du

Since |1/log(1+u) + 1/log(1-u)| ≤ 2 on (0, 1/2], and the function
tends to 1 as u → 0⁺, we can bound the integral.

The Ramanujan-Soldner constant: li(2) = 1.04516378011749278...
-/

-- Bounds on the symmetric combination at various points
-- These can be computed numerically

-- At t = 0.3: g(0.3) should be close to 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/TaoLi2/Variant8bde853a6c614d0855bf37076acfaac3de732e6c2aabfb198265c504b254d68e.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbb8c95ef280735297ffb052a2684ad47c8c958e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
