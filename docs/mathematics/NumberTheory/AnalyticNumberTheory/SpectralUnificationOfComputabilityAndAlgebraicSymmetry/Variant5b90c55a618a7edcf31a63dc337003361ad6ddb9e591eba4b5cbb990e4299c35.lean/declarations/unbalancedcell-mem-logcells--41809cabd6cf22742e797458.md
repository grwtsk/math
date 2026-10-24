# unbalancedCell_mem_logCells

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89571160-9576-51bb-cce3-1abcc41866e6",
  "kind": "theorem",
  "lexical_name": "unbalancedCell_mem_logCells",
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
  "slug": "unbalancedcell-mem-logcells--41809cabd6cf22742e797458",
  "source": {
    "blob": "6c2c0a770235d3adc6e76252ad841135c5f2b206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 238,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41809cabd6cf22742e7974585222a181339b123e73feb102a8f4798a5741ce27",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89571160-9576-51bb-cce3-1abcc41866e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unbalancedCell_mem_logCells (A : ℝ) (hA : 64 ≤ A) :
    unbalancedCell A ∈ logCells A := by
  have ha : (⌊A⌋₊ : ℝ) ≤ A := Nat.floor_le (by linarith)
  have hj := unbalancedCell_second_le_half A hA
  have hs : (unbalancedCell A).1+(unbalancedCell A).2 ≤ logHeight A := by
    apply (Nat.le_floor_iff (by linarith : 0 ≤ 2*A)).2
    push_cast
    change (⌊A⌋₊ : ℝ) + (⌈2*Real.log A⌉₊ : ℝ) ≤ 2*A
    change (⌈2*Real.log A⌉₊ : ℝ) ≤ A/2 at hj
    linarith
  simp only [logCells, Finset.mem_filter, Finset.product_eq_sprod,
    Finset.mem_product, Finset.mem_Icc]
  exact ⟨⟨⟨Nat.zero_le _, by omega⟩, ⟨Nat.zero_le _, by omega⟩⟩, hs⟩

/-- Growth of the specified positive budget factor, not of the signed block. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5b90c55a618a7edcf31a63dc337003361ad6ddb9e591eba4b5cbb990e4299c35.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c2c0a770235d3adc6e76252ad841135c5f2b206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
