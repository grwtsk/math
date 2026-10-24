# native_signed_head_of_exact_corrected_rational

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44439159-e2c3-fcef-5f70-8d0a449322f2",
  "kind": "theorem",
  "lexical_name": "native_signed_head_of_exact_corrected_rational",
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
  "slug": "native-signed-head-of-exact-corrected-rational--2cb041a136ba638fe93e93f3",
  "source": {
    "blob": "45eec24c861036a12c2a5a66111466948c032704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteExactBudget/Variant006f6fd250d8c41b9d9f81410827a9e253b540422ca17ad633d030f884c0ac8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cb041a136ba638fe93e93f3925f6ae179cd5f9df501888983140a12ced380cc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteExactBudget/Variant006f6fd250d8c41b9d9f81410827a9e253b540422ca17ad633d030f884c0ac8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44439159-e2c3-fcef-5f70-8d0a449322f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem native_signed_head_of_exact_corrected_rational
    (h : CorrectedRationalHeadTailUpperBound) : SignedNativeHeadTailUpperBound := by
  obtain ⟨K, R, hR, hhead⟩ := h
  refine ⟨rightLineMajorant 2 - (1 + halfEnergyValue R) * dirichletMoment 1 + K,
    R, hR, ?_⟩
  intro A hA
  rw [correctedRationalHead_real_readout A (growingHeight A) (hR.trans hA)]
  exact add_le_add (rationalBaseline_upper_at_radius hR hA) (hhead A hA)

end
end FormalResearch.RiemannHypothesis.SourceRationalFiniteExactBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteExactBudget/Variant006f6fd250d8c41b9d9f81410827a9e253b540422ca17ad633d030f884c0ac8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteExactBudget/Variant006f6fd250d8c41b9d9f81410827a9e253b540422ca17ad633d030f884c0ac8b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45eec24c861036a12c2a5a66111466948c032704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
