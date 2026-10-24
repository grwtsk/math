# full_readout_upper_of_head_and_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f287211c3a4ae798dd4ddd92b13c71e6ba07e98a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f68d68c-ace7-7bde-cb59-82ea813ae588",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fab3d65-9aa5-f340-9c2e-3ac6390e041b",
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
  "slug": "full-readout-upper-of-head-and-tail--04ff3b8763e95a7e1b6d0aa5",
  "source": {
    "blob": "f287211c3a4ae798dd4ddd92b13c71e6ba07e98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04ff3b8763e95a7e1b6d0aa5f9be409cb5c1ef355c1c2144a1d4ba8a42824f1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fab3d65-9aa5-f340-9c2e-3ac6390e041b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–87.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransfer/Variant242eed3bc38a10ce9c6b8262ef1e17034aa4c549f471d45bca58d1be96e0d174.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f287211c3a4ae798dd4ddd92b13c71e6ba07e98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
