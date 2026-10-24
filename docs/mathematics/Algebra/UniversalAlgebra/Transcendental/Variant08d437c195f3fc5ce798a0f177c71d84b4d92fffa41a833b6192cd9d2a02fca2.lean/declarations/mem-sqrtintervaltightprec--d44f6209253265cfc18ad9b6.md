# mem_sqrtIntervalTightPrec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a6da348-06e5-2037-43aa-43691325d517",
  "kind": "theorem",
  "lexical_name": "mem_sqrtIntervalTightPrec'",
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
  "slug": "mem-sqrtintervaltightprec--d44f6209253265cfc18ad9b6",
  "source": {
    "blob": "169edbfcc39677131ff0f1c11bc6349f9be14724",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 616,
    "line": 587,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44f6209253265cfc18ad9b66c68da799a06d4dad8afaaf0db01d4a0f85b02cb",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a6da348-06e5-2037-43aa-43691325d517`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 587–616.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sqrtIntervalTightPrec' {x : ℝ} {I : IntervalRat} (hx : x ∈ I) :
    Real.sqrt x ∈ sqrtIntervalTightPrec I := by
  simp only [sqrtIntervalTightPrec, mem_def]
  split_ifs with h
  · -- lo ≥ 0: use tight bounds
    constructor
    · calc (sqrtRatLowerPrec I.lo : ℝ) ≤ Real.sqrt I.lo := sqrtRatLowerPrec_le_sqrt h sqrtScaleBits
        _ ≤ Real.sqrt x := Real.sqrt_le_sqrt hx.1
    · simp only [Rat.cast_max, Rat.cast_one]
      calc Real.sqrt x ≤ Real.sqrt I.hi := Real.sqrt_le_sqrt hx.2
        _ ≤ (sqrtRatUpperPrec I.hi : ℝ) := sqrt_le_sqrtRatUpperPrec (le_trans h I.le) sqrtScaleBits
        _ ≤ max (sqrtRatUpperPrec I.hi : ℝ) 1 := le_max_left _ _
  · -- lo < 0: use 0 as lower bound
    push Not at h
    simp only [Rat.cast_zero, Rat.cast_max, Rat.cast_one]
    constructor
    · exact Real.sqrt_nonneg x
    · -- sqrt(x) ≤ max(sqrtRatUpperPrec I.hi, 1)
      by_cases! hhi_neg : I.hi < 0
      · -- If hi < 0, then x ≤ I.hi < 0, but sqrt(x) ≥ 0, so sqrt(x) ≤ 1 ≤ max(_, 1)
        have hx_neg : x < 0 := lt_of_le_of_lt hx.2 (by exact_mod_cast hhi_neg)
        have hsqrt_zero : Real.sqrt x = 0 := Real.sqrt_eq_zero'.mpr (le_of_lt hx_neg)
        rw [hsqrt_zero]
        calc (0 : ℝ) ≤ 1 := by norm_num
          _ ≤ max (sqrtRatUpperPrec I.hi : ℝ) 1 := le_max_right _ _
      · calc Real.sqrt x ≤ Real.sqrt I.hi := Real.sqrt_le_sqrt hx.2
          _ ≤ (sqrtRatUpperPrec I.hi : ℝ) := sqrt_le_sqrtRatUpperPrec hhi_neg sqrtScaleBits
          _ ≤ max (sqrtRatUpperPrec I.hi : ℝ) 1 := le_max_left _ _

/-- Helper: sqrt(x) ≤ max(x, 1) for x ≥ 0 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Transcendental/Variant08d437c195f3fc5ce798a0f177c71d84b4d92fffa41a833b6192cd9d2a02fca2.lean#L587).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `169edbfcc39677131ff0f1c11bc6349f9be14724` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
