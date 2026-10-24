# mem_tanhInterval

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
      "line": 365,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27554f45-a610-aae8-461d-2ec2d35779b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e1a96b9-bc2c-f78d-4458-09f5c0ceafb4",
  "kind": "theorem",
  "lexical_name": "mem_tanhInterval",
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
  "slug": "mem-tanhinterval--70cc4ebc71b511a337b13e39",
  "source": {
    "blob": "32fb82ba8b8c36521ad64b9d2daf0848859eb61f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 365,
    "path": "GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70cc4ebc71b511a337b13e3959ed8837a772c92d55e3065aafb82ce9b33493be",
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

Occurrence: `result:2e1a96b9-bc2c-f78d-4458-09f5c0ceafb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_tanhInterval {x : ℝ} {I : IntervalRat} (_hx : x ∈ I) :
    Real.tanh x ∈ tanhInterval I := by
  simp only [IntervalRat.mem_def, tanhInterval, Rat.cast_neg, Rat.cast_one]
  constructor
  -- tanh x ≥ -1 for all x: use that tanh = sinh/cosh and cosh > 0
  · rw [Real.tanh_eq_sinh_div_cosh]
    have hcosh : Real.cosh x > 0 := Real.cosh_pos x
    -- -1 ≤ sinh/cosh iff -cosh ≤ sinh (since cosh > 0)
    rw [le_div_iff₀ hcosh, neg_one_mul]
    -- Need: -cosh x ≤ sinh x
    -- sinh x = (exp x - exp(-x))/2, cosh x = (exp x + exp(-x))/2
    -- sinh x + cosh x = exp x ≥ 0 ✓
    rw [Real.sinh_eq, Real.cosh_eq]
    have h1 : Real.exp x > 0 := Real.exp_pos x
    linarith
  -- tanh x ≤ 1 for all x: use that sinh ≤ cosh (since exp(-x) > 0)
  · rw [Real.tanh_eq_sinh_div_cosh]
    have hcosh : Real.cosh x > 0 := Real.cosh_pos x
    rw [div_le_one₀ hcosh]
    -- Need: sinh x ≤ cosh x
    rw [Real.sinh_eq, Real.cosh_eq]
    have h2 : Real.exp (-x) > 0 := Real.exp_pos (-x)
    linarith

/-- Interval enclosure for π.
    Uses tight bounds from Mathlib's pi_gt_d20 and pi_lt_d20 which give 20 decimal digits.
    3.14159265358979323846 < π < 3.14159265358979323847 -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Core/Variant52d6723d553310a97a959faf106835f4ae7690a9a4d4b7a153bf63f16b28b005.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32fb82ba8b8c36521ad64b9d2daf0848859eb61f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
