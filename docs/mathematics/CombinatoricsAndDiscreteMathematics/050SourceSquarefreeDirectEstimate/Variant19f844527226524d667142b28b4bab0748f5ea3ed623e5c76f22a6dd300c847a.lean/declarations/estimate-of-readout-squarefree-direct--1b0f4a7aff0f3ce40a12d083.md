# estimate_of_readout_squarefree_direct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a43db7e6-7fd6-6ce1-31a7-25705a8a7783",
  "kind": "theorem",
  "lexical_name": "estimate_of_readout_squarefree_direct",
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
  "slug": "estimate-of-readout-squarefree-direct--1b0f4a7aff0f3ce40a12d083",
  "source": {
    "blob": "98f85e1574947295e552540ca28ffce2cfb0a59e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 62,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variant19f844527226524d667142b28b4bab0748f5ea3ed623e5c76f22a6dd300c847a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b0f4a7aff0f3ce40a12d0833a6ac6185b2795a97a4df0f1a655491c45ff2cc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variant19f844527226524d667142b28b4bab0748f5ea3ed623e5c76f22a6dd300c847a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a43db7e6-7fd6-6ce1-31a7-25705a8a7783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_readout_squarefree_direct (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q), ?_⟩
  exact all_real_lower_of_readout_squarefree D rho Q hQ hreadout

end RH16SquarefreeDirectEstimate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variant19f844527226524d667142b28b4bab0748f5ea3ed623e5c76f22a6dd300c847a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/050SourceSquarefreeDirectEstimate/Variant19f844527226524d667142b28b4bab0748f5ea3ed623e5c76f22a6dd300c847a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f85e1574947295e552540ca28ffce2cfb0a59e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
