# full_readout_upper_of_head_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35bcb4bc-ec1a-8a29-fd30-768a6790a982",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:727c6ca8-52d3-def3-444a-ae022ea8c9af",
  "kind": "theorem",
  "lexical_name": "full_readout_upper_of_head_and_tail",
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
  "slug": "full-readout-upper-of-head-and-tail--4bf8ad06faff0601f0e4b86e",
  "source": {
    "blob": "ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bf8ad06faff0601f0e4b86ed6533235096aa7f7552d5330a66d29b6c8a746ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:727c6ca8-52d3-def3-444a-ae022ea8c9af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_readout_upper_of_head_and_tail
    (full : ℝ → ℝ) (head : ℝ → ℝ → ℝ) {c Khead R : ℝ}
    (hc : c ∈ Ioo 1 5) (hR : 1 ≤ R) (hK : 0 ≤ rightLineTailConstant c)
    (hcontract : ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 1 ≤ T →
      |full A - head A T| ≤ rightLineTailConstant c * Real.exp ((2 * c - 1) * A) /
        (A ^ 9 * T ^ 5))
    (hhead : ∀ A : ℝ, R ≤ A → head A (movingHeight c A) ≤ Khead) :
    ∀ A : ℝ, R ≤ A → full A ≤ Khead + rightLineTailConstant c / R ^ 9 := by
  intro A hRA
  have hA := hR.trans hRA
  have ht := tail_at_movingHeight_of_rightLine_contract
    (fun A T => full A - head A T) hc hcontract A hA
  have hpow : R ^ 9 ≤ A ^ 9 := pow_le_pow_left₀ (by linarith) hRA 9
  have hmon : rightLineTailConstant c / A ^ 9 ≤ rightLineTailConstant c / R ^ 9 :=
    div_le_div_of_nonneg_left hK (by positivity) hpow
  have htail := (abs_le.mp ht).2
  have hheadA := hhead A hRA
  linarith

#print axioms movingHeight_ge_one
#print axioms movingHeight_tail_factor_eq
#print axioms tail_at_movingHeight_of_rightLine_contract
#print axioms full_readout_upper_of_head_and_tail
end
end FormalResearch.RiemannHypothesis.SourceMellinHeightTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
