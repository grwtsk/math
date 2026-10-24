# mem_invInterval_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b73f2d4d-030e-0e4f-94a1-65273e3bd608",
  "kind": "theorem",
  "lexical_name": "mem_invInterval_pos",
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
  "slug": "mem-invinterval-pos--28c2117b0d1e20bdb5454d66",
  "source": {
    "blob": "2b96b531ddc90394a51239f94d95d32fd3e40739",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 569,
    "line": 530,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28c2117b0d1e20bdb5454d66aea1190caa40f47b8df37315fefe63882a9d3535",
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

Occurrence: `result:b73f2d4d-030e-0e4f-94a1-65273e3bd608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 530–569.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_invInterval_pos {x : ℝ} {I : IntervalRat}
    (hx : x ∈ I) (hpos : I.lo > 0) :
    x⁻¹ ∈ invInterval I := by
  simp only [IntervalRat.mem_def] at hx ⊢
  simp only [invInterval, hpos, ↓reduceDIte]
  -- x > 0 since x ≥ I.lo > 0
  have hx_pos : (x : ℝ) > 0 := by
    have h1 : (I.lo : ℝ) ≤ x := hx.1
    have h2 : (0 : ℝ) < I.lo := by exact_mod_cast hpos
    linarith
  have hx_ne : x ≠ 0 := ne_of_gt hx_pos
  -- For positive x: 1/b ≤ 1/x ≤ 1/a when a ≤ x ≤ b
  have hlo_pos : (0 : ℝ) < I.lo := by exact_mod_cast hpos
  have hlo_ne : (I.lo : ℝ) ≠ 0 := ne_of_gt hlo_pos
  have hhi_pos : (0 : ℝ) < I.hi := by
    have := I.le
    have h : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast this
    linarith
  have hhi_ne : (I.hi : ℝ) ≠ 0 := ne_of_gt hhi_pos
  split_ifs with hle
  · -- Case: 1/hi ≤ 1/lo (normal ordering)
    simp only [Rat.cast_inv, one_div]
    constructor
    · -- (I.hi)⁻¹ ≤ x⁻¹ follows from x ≤ I.hi
      exact (inv_le_inv₀ hhi_pos hx_pos).mpr hx.2
    · -- x⁻¹ ≤ (I.lo)⁻¹ follows from I.lo ≤ x
      exact (inv_le_inv₀ hx_pos hlo_pos).mpr hx.1
  · -- Case: 1/lo < 1/hi (impossible for positive lo ≤ hi, but we prove the goal anyway)
    -- 1/hi ≤ 1/lo is always true when lo ≤ hi and both positive
    have hhi_pos_q : (0 : ℚ) < I.hi := by
      have := I.le
      linarith
    have hle' : (1 : ℚ) / I.hi ≤ 1 / I.lo := by
      rw [div_le_div_iff₀ hhi_pos_q hpos]
      simp only [one_mul]
      exact I.le
    exact absurd hle' hle

/-- Correctness of invInterval when denominator interval is negative.
    For x ∈ [a,b] with b < 0, we have 1/x ∈ [1/b, 1/a] -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant2cb4e9e72e7e6f2e159d87cfd50951aa1b6621ce7239783d7354077720f86fbb.lean#L530).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b96b531ddc90394a51239f94d95d32fd3e40739` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
