# tail_at_movingHeight_of_rightLine_contract

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
      "line": 55,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1fe54497-0009-9d2b-543c-091ab8a07f60",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4356dbe2-1a74-1a59-7290-fa1bf5507617",
  "kind": "theorem",
  "lexical_name": "tail_at_movingHeight_of_rightLine_contract",
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
  "slug": "tail-at-movingheight-of-rightline-contract--76426e331a3e47afd4b0bd65",
  "source": {
    "blob": "ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76426e331a3e47afd4b0bd650bdb09f19029b31ebda0884eed99a31b2441cb9b",
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

Occurrence: `result:4356dbe2-1a74-1a59-7290-fa1bf5507617`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tail_at_movingHeight_of_rightLine_contract
    (tail : ℝ → ℝ → ℝ) {c : ℝ} (hc : c ∈ Ioo 1 5)
    (hcontract : ∀ A : ℝ, 1 ≤ A → ∀ T : ℝ, 1 ≤ T →
      |tail A T| ≤ rightLineTailConstant c * Real.exp ((2 * c - 1) * A) /
        (A ^ 9 * T ^ 5)) :
    ∀ A : ℝ, 1 ≤ A → |tail A (movingHeight c A)| ≤ rightLineTailConstant c / A ^ 9 := by
  intro A hA
  have h := hcontract A hA (movingHeight c A) (movingHeight_ge_one hc hA)
  rw [movingHeight_tail_factor_eq (show A ≠ 0 by linarith)] at h
  exact h

/-- A signed head upper certificate transfers with the exact tail loss and the same real radius. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceMellinHeightTransferHistorical01/Variant2aef00501c5d38bb1697634e27de3f53ab2ab7e9c3bf93ae22477feb666f5dc1.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecfd1ef2d1ed2cdc2fd02f5d1aa4c8019c2ede63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
