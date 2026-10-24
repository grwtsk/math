# actual_archimedeanConstant_gt_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6564922-23a1-b313-656b-99ebcbb431d0",
  "kind": "theorem",
  "lexical_name": "actual_archimedeanConstant_gt_four",
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
  "slug": "actual-archimedeanconstant-gt-four--d9d34128c7846bffbbbe827d",
  "source": {
    "blob": "5168f744ff03c8c7a3a0c684799a4ec81ed17152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 61,
    "path": "GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9d34128c7846bffbbbe827d239e7979d3e99899d6215e4427b7c60b021a70cd",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6564922-23a1-b313-656b-99ebcbb431d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedeanConstant_gt_four : (4 : ℝ) < archimedeanConstant := by
  have hq := quarter_digamma_le_one_sub_three
  rw [Complex.digamma_one] at hq
  simp only [Complex.neg_re, Complex.ofReal_re] at hq
  have hg := Real.one_half_lt_eulerMascheroniConstant
  have hp : (1 : ℝ) < Real.log Real.pi := by
    apply (Real.lt_log_iff_exp_lt Real.pi_pos).2
    exact Real.exp_one_lt_three.trans Real.pi_gt_three
  unfold archimedeanConstant
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5168f744ff03c8c7a3a0c684799a4ec81ed17152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
