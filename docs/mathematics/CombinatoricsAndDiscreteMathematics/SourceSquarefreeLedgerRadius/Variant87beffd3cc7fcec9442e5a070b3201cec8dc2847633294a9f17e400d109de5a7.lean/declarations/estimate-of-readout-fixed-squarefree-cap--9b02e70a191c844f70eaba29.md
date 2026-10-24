# estimate_of_readout_fixed_squarefree_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80d0bf40-297f-929b-1d06-f6faee7f9671",
  "kind": "theorem",
  "lexical_name": "estimate_of_readout_fixed_squarefree_cap",
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
  "slug": "estimate-of-readout-fixed-squarefree-cap--9b02e70a191c844f70eaba29",
  "source": {
    "blob": "c3f2151bf4960eb8e8f1063f93704d82f657979f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 114,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant87beffd3cc7fcec9442e5a070b3201cec8dc2847633294a9f17e400d109de5a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b02e70a191c844f70eaba29828906b8b16fce5d257497c1a7b7eb07ebecdc0a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant87beffd3cc7fcec9442e5a070b3201cec8dc2847633294a9f17e400d109de5a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80d0bf40-297f-929b-1d06-f6faee7f9671`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_readout_fixed_squarefree_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1305)), ?_⟩
  exact all_real_lower_with_fixed_squarefree_cap D rho Q hQ hreadout

end RH16SquarefreeLedgerRadius
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant87beffd3cc7fcec9442e5a070b3201cec8dc2847633294a9f17e400d109de5a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceSquarefreeLedgerRadius/Variant87beffd3cc7fcec9442e5a070b3201cec8dc2847633294a9f17e400d109de5a7.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3f2151bf4960eb8e8f1063f93704d82f657979f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
