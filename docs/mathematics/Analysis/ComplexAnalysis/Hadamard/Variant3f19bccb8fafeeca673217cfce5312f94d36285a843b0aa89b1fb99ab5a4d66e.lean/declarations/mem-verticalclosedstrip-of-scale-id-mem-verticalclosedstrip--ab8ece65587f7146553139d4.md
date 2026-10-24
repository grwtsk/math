# mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2435a30c-0cce-b2ca-d82b-a0b9688c38da",
  "kind": "lemma",
  "lexical_name": "mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip",
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
  "slug": "mem-verticalclosedstrip-of-scale-id-mem-verticalclosedstrip--ab8ece65587f7146553139d4",
  "source": {
    "blob": "374ba20fd7fa61465130ea23d60d0cfbf2b56112",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 588,
    "line": 571,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab8ece65587f7146553139d4208157bf63d6d28d62b21b6c4912ba1f54e5ef07",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2435a30c-0cce-b2ca-d82b-a0b9688c38da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 571–588.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip {z : ℂ} {l u : ℝ} (hul : l < u)
    (hz : z ∈ verticalClosedStrip l u) : z / (u - l) - l / (u - l) ∈ verticalClosedStrip 0 1 := by
  simp only [verticalClosedStrip, Complex.div_re, mem_preimage, sub_re, mem_Icc,
    sub_nonneg, tsub_le_iff_right, ofReal_re, ofReal_im, sub_im, sub_self, mul_zero, zero_div,
    add_zero]
  simp only [verticalClosedStrip] at hz
  norm_cast
  simp_rw [Complex.normSq_ofReal, mul_div_assoc, div_mul_eq_div_div_swap,
    div_self (by linarith : u - l ≠ 0), ← div_eq_mul_one_div]
  constructor
  · gcongr
    · apply le_of_lt; simp [hul]
    · exact hz.1
  · rw [← sub_le_sub_iff_right (l / (u - l)), add_sub_assoc, sub_self, add_zero, div_sub_div_same,
      div_le_one (by simp[hul]), sub_le_sub_iff_right l]
    exact hz.2

/-- The function `scale f l u` is `diffContOnCl`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant3f19bccb8fafeeca673217cfce5312f94d36285a843b0aa89b1fb99ab5a4d66e.lean#L571).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `374ba20fd7fa61465130ea23d60d0cfbf2b56112` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
