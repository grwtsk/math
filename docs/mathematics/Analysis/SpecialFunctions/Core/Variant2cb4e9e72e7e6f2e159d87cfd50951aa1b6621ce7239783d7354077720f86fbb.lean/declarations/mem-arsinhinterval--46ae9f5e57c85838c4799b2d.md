# mem_arsinhInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c107560-03f3-1ed2-1522-d6484669db25",
  "kind": "theorem",
  "lexical_name": "mem_arsinhInterval",
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
  "slug": "mem-arsinhinterval--46ae9f5e57c85838c4799b2d",
  "source": {
    "blob": "2b96b531ddc90394a51239f94d95d32fd3e40739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 298,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ae9f5e57c85838c4799b2da4d41af39a75aadca8f3f0a5cdc7b1ea560549f3",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c107560-03f3-1ed2-1522-d6484669db25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_arsinhInterval {x : ℝ} {I : IntervalRat} (hx : x ∈ I) :
    Real.arsinh x ∈ arsinhInterval I := by
  simp only [IntervalRat.mem_def, arsinhInterval]
  -- Key bound: |arsinh x| ≤ |x| + 1
  -- This is a well-known bound that follows from sinh y ≥ y for y ≥ 0
  have hbound : |Real.arsinh x| ≤ |x| + 1 := by
    -- Use the sharper bound |arsinh x| ≤ |x| from IntervalRealEndpoints
    have h := IntervalReal.abs_arsinh_le_abs x
    linarith
  simp only [IntervalRat.mem_def] at hx
  have hx_bound : |x| ≤ max (|I.lo|) (|I.hi|) := by
    simp only [Rat.cast_abs, Rat.cast_max]
    rcases le_or_gt x 0 with hxneg | hxpos
    · simp only [abs_of_nonpos hxneg]
      calc -x ≤ -(I.lo : ℝ) := by linarith [hx.1]
        _ ≤ |↑I.lo| := neg_le_abs _
        _ ≤ max |↑I.lo| |↑I.hi| := le_max_left _ _
    · simp only [abs_of_pos hxpos]
      calc x ≤ I.hi := hx.2
        _ ≤ |↑I.hi| := le_abs_self _
        _ ≤ max |↑I.lo| |↑I.hi| := le_max_right _ _
  have habs_lo : -(|x| + 1) ≤ Real.arsinh x := (abs_le.mp hbound).1
  have habs_hi : Real.arsinh x ≤ |x| + 1 := (abs_le.mp hbound).2
  have hmax_cast : (max (|I.lo|) (|I.hi|) : ℝ) = max |↑I.lo| |↑I.hi| := by
    rfl
  constructor
  · simp only [Rat.cast_neg, Rat.cast_add, Rat.cast_one, Rat.cast_max, Rat.cast_abs]
    have h1 : -(|↑I.lo| ⊔ |↑I.hi| + 1) = -(max |↑I.lo| |↑I.hi|) - (1 : ℝ) := by ring
    have h2 : -(max |↑I.lo| |↑I.hi|) - (1 : ℝ) ≤ -|x| - 1 := by
      have hxb : |x| ≤ max |↑I.lo| |↑I.hi| := by
        convert hx_bound using 1
        simp [Rat.cast_max, Rat.cast_abs]
      linarith
    have h3 : -|x| - (1 : ℝ) ≤ Real.arsinh x := by
      have : -(|x| + 1) = -|x| - 1 := by ring
      rw [← this]; exact habs_lo
    linarith
  · simp only [Rat.cast_add, Rat.cast_one, Rat.cast_max, Rat.cast_abs]
    have h1 : Real.arsinh x ≤ |x| + 1 := habs_hi
    have h2 : |x| + (1 : ℝ) ≤ max |↑I.lo| |↑I.hi| + 1 := by
      have hxb : |x| ≤ max |↑I.lo| |↑I.hi| := by
        convert hx_bound using 1
        simp [Rat.cast_max, Rat.cast_abs]
      linarith
    linarith

/-- Interval bound for atanh.
    atanh is defined for (-1, 1). If interval is within this range,
    we compute tight bounds using monotonicity. Otherwise returns default. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b96b531ddc90394a51239f94d95d32fd3e40739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
