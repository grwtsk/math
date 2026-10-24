# complete_block_upper_implies_residual_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86316665-aafe-8cab-7939-3741c3d08b28",
  "kind": "theorem",
  "lexical_name": "complete_block_upper_implies_residual_upper",
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
  "slug": "complete-block-upper-implies-residual-upper--f5aa824059a3b6dc2b22c24c",
  "source": {
    "blob": "57092382e3bbaf0f1e534a6daaa1298e350da57d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 104,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5aa824059a3b6dc2b22c24c33866c202cb22d95676f1b03dd764d3493ca8007",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86316665-aafe-8cab-7939-3741c3d08b28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_block_upper_implies_residual_upper (A DX CD CF : ℝ) (hA : 1 ≤ A)
    (hb : completeSignedSamplingBlock A ≤ DX) (hd : |oldDiagonalError A| ≤ CD)
    (hf : finiteLedgerCorrection A ≤ CF) :
    mertensResidual A ≤ DX + CD + CF := by
  rw [residual_eq_complete_block_corrections A hA]
  have hl := (abs_le.mp hd).1
  linarith only [hb, hl, hf]

/-- No spatial-strip charge is introduced by the complete divisor cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceCompleteDivisorTailReturn/Variant5bb1a0dca6a50eed6c25f261d9422c6d1e4e78d72dd9212f8fee155bb9a89d09.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57092382e3bbaf0f1e534a6daaa1298e350da57d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
