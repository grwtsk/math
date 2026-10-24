# mem_invInterval_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 562,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a62687f-57bf-eefe-2785-13f7aaad6520",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcfb62be-89bd-19f2-73e2-dd7144f57ca9",
  "kind": "theorem",
  "lexical_name": "mem_invInterval_neg",
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
  "slug": "mem-invinterval-neg--639aba724bd2c45bdf5ec0bc",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 562,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639aba724bd2c45bdf5ec0bcdc4e47920b37490af8bec62e903ad0f14c7ec006",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcfb62be-89bd-19f2-73e2-dd7144f57ca9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 562–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_invInterval_neg {x : ℝ} {I : IntervalRat}
    (hx : x ∈ I) (hneg : I.hi < 0) :
    x⁻¹ ∈ invInterval I := by
  simp only [IntervalRat.mem_def] at hx ⊢
  -- I.lo ≤ 0 since I.lo ≤ I.hi < 0
  have hlo_le : ¬(I.lo > 0) := by
    have := I.le
    have hhi_neg : I.hi < 0 := hneg
    intro h
    have : (I.lo : ℚ) ≤ I.hi := this
    linarith
  simp only [invInterval, hlo_le, ↓reduceDIte, hneg]
  -- x < 0 since x ≤ I.hi < 0
  have hx_neg : (x : ℝ) < 0 := by
    have h1 : x ≤ I.hi := hx.2
    have h2 : (I.hi : ℝ) < 0 := by exact_mod_cast hneg
    linarith
  have hlo_neg : (I.lo : ℝ) < 0 := by
    have h1 : I.lo ≤ I.hi := I.le
    have h2 : (I.hi : ℝ) < 0 := by exact_mod_cast hneg
    have h3 : (I.lo : ℝ) ≤ I.hi := by exact_mod_cast h1
    linarith
  have hhi_neg' : (I.hi : ℝ) < 0 := by exact_mod_cast hneg
  -- For negative x: 1/x is still decreasing, so 1/b ≤ 1/x ≤ 1/a
  split_ifs with hle
  · simp only [Rat.cast_inv, one_div]
    constructor
    · -- (I.hi)⁻¹ ≤ x⁻¹ when x ≤ hi < 0 (since 1/x is decreasing for negatives)
      exact (inv_le_inv_of_neg hhi_neg' hx_neg).mpr hx.2
    · -- x⁻¹ ≤ (I.lo)⁻¹ when lo ≤ x < 0
      exact (inv_le_inv_of_neg hx_neg hlo_neg).mpr hx.1
  · -- Case: 1/lo < 1/hi (impossible for negative lo ≤ hi < 0)
    -- For negative numbers: lo ≤ hi < 0 implies 1/hi ≤ 1/lo
    -- Use: one_div_le_one_div_of_neg_of_le (hb : b < 0) (h : a ≤ b) : 1 / b ≤ 1 / a
    have hle' : (1 : ℚ) / I.hi ≤ 1 / I.lo :=
      one_div_le_one_div_of_neg_of_le hneg I.le
    exact absurd hle' hle

/-- Correctness of invInterval when denominator interval contains zero.
    Requires a bound on |x⁻¹| to be provable, since x can be arbitrarily close to 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L562).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
