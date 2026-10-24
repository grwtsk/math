# plainOff_one_eq_logRow_sub_residual_add_diagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d896597e-3232-02fd-3a99-a4ccc34fc1dc",
  "kind": "theorem",
  "lexical_name": "plainOff_one_eq_logRow_sub_residual_add_diagonal",
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
  "slug": "plainoff-one-eq-logrow-sub-residual-add-diagonal--819455d65fec6fb7da21063f",
  "source": {
    "blob": "a7fda095c6fb9c445890eee5930b296a4a816560",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Variantdcc0821821d4417db7dc2f0bca6399e66bebe6125b3c9f3ac79d7f68ec10645c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819455d65fec6fb7da21063f2ff784fe9f0b1e327662af57ff0018d3a87a181f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Variantdcc0821821d4417db7dc2f0bca6399e66bebe6125b3c9f3ac79d7f68ec10645c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d896597e-3232-02fd-3a99-a4ccc34fc1dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem plainOff_one_eq_logRow_sub_residual_add_diagonal (A : ℝ) (hA : 1 ≤ A) :
    plainOffAt A 1 (sourceKernelCutoff A) =
      sourceMobiusKernel A 1 - mertensResidual A + cutoffOneDiagonal A := by
  rw [plainOff_one_eq_rows_sub_residual_add_diagonal A hA,
    completeRows_eq_logKernel_one A hA]

/-- The existing independent main formula retains every row and endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Variantdcc0821821d4417db7dc2f0bca6399e66bebe6125b3c9f3ac79d7f68ec10645c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/09SourceWholePlainConvolution/Variantdcc0821821d4417db7dc2f0bca6399e66bebe6125b3c9f3ac79d7f68ec10645c.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7fda095c6fb9c445890eee5930b296a4a816560` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
