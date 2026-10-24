# two_div_sqrt_pi_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1971,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d481c2c7-4d56-2bc7-5c99-7d7116f5e3fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10f71cca-ed11-d3a2-dc6b-b00e8f4ea5ef",
  "kind": "theorem",
  "lexical_name": "two_div_sqrt_pi_mem",
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
  "slug": "two-div-sqrt-pi-mem--44cb25f806dcc21387c64b87",
  "source": {
    "blob": "a6c6829e8730fc564ee9c4c8215bb55539bae25a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2012,
    "line": 1971,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44cb25f806dcc21387c64b87bc0eeb57e5c6fc4949bdcb2c335f3f61028a1409",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f71cca-ed11-d3a2-dc6b-b00e8f4ea5ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1971–2012.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_div_sqrt_pi_mem : 2 / Real.sqrt Real.pi ∈ two_div_sqrt_pi := by
  simp only [two_div_sqrt_pi, mem_def]
  -- From π bounds: 3.1415 < π < 3.1416 (Real.pi_gt_d4, Real.pi_lt_d4)
  -- So √π is between √3.1415 ≈ 1.7724 and √3.1416 ≈ 1.7725
  -- Thus 2/√π is between 2/1.7725 ≈ 1.1283 and 2/1.7724 ≈ 1.1285
  have hpi_lo : (3.1415 : ℝ) < Real.pi := Real.pi_gt_d4
  have hpi_hi : Real.pi < (3.1416 : ℝ) := Real.pi_lt_d4
  have hsqrt_lo : (1.7724 : ℝ) < Real.sqrt Real.pi := by
    have h1 : (1.7724 : ℝ) ^ 2 < Real.pi := by
      have : (1.7724 : ℝ) ^ 2 = 3.14140176 := by ring
      linarith
    have h2 : (0 : ℝ) ≤ 1.7724 := by norm_num
    have h3 : (0 : ℝ) ≤ 1.7724 ^ 2 := by positivity
    calc (1.7724 : ℝ) = Real.sqrt (1.7724 ^ 2) := (Real.sqrt_sq h2).symm
      _ < Real.sqrt Real.pi := Real.sqrt_lt_sqrt h3 h1
  have hsqrt_hi : Real.sqrt Real.pi < (1.7725 : ℝ) := by
    have h1 : Real.pi < (1.7725 : ℝ) ^ 2 := by
      have : (1.7725 : ℝ) ^ 2 = 3.14175625 := by ring
      linarith
    have hpi_pos : (0 : ℝ) < Real.pi := Real.pi_pos
    rw [← Real.sqrt_sq (le_of_lt (by norm_num : (0 : ℝ) < 1.7725))]
    exact Real.sqrt_lt_sqrt (le_of_lt hpi_pos) h1
  constructor
  · -- Goal: ↑(1128 / 1000) ≤ 2 / √π
    have h1 : ((1128 / 1000 : ℚ) : ℝ) < 2 / 1.7725 := by norm_num
    have h2 : (2 : ℝ) / 1.7725 < 2 / Real.sqrt Real.pi := by
      apply div_lt_div_of_pos_left (by norm_num : (0 : ℝ) < 2)
      · exact Real.sqrt_pos.mpr Real.pi_pos
      · exact hsqrt_hi
    exact le_of_lt (lt_trans h1 h2)
  · -- Goal: 2 / √π ≤ ↑(1129 / 1000)
    have h1 : 2 / Real.sqrt Real.pi < (2 : ℝ) / 1.7724 := by
      apply div_lt_div_of_pos_left (by norm_num : (0 : ℝ) < 2)
      · norm_num
      · exact hsqrt_lo
    have h2 : (2 : ℝ) / 1.7724 < ((1129 / 1000 : ℚ) : ℝ) := by norm_num
    exact le_of_lt (lt_trans h1 h2)

/-- The "inner" erf function without the 2/√π factor:
    erfInner(x) = ∫₀ˣ exp(-t²) dt = (√π/2) * erf(x)

    This is the function whose Taylor series coefficients are erfTaylorCoeffs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant9f5d55776c9b353656498a97b0569cac6621456c550427c8ca5d5a57da8db252.lean#L1971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6c6829e8730fc564ee9c4c8215bb55539bae25a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
