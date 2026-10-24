# full_readout_upper_of_head_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a1be0636-907a-5ef6-d1eb-7addc252e0eb",
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
  "slug": "full-readout-upper-of-head-and-tail--f0e311f1de3af75bb255df98",
  "source": {
    "blob": "8b6e8adf09b2aaa61085bc3850d28df67ac05b29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 75,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variantf8b45516eb3a6a47681e4926133933fa1a6cdaaeed7bf4a067145f3c968ac287.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0e311f1de3af75bb255df98e51f6e2205e5a8291a75e218547cd8be3e883f4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variantf8b45516eb3a6a47681e4926133933fa1a6cdaaeed7bf4a067145f3c968ac287.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a1be0636-907a-5ef6-d1eb-7addc252e0eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–95.

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

end
end FormalResearch.RiemannHypothesis.SourceMellinHeightTransfer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variantf8b45516eb3a6a47681e4926133933fa1a6cdaaeed7bf4a067145f3c968ac287.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variantf8b45516eb3a6a47681e4926133933fa1a6cdaaeed7bf4a067145f3c968ac287.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6e8adf09b2aaa61085bc3850d28df67ac05b29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
