# estimate_of_readout_fixed_four_nine_cap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f36430e-c382-80b3-898f-e17d91f9a407",
  "kind": "theorem",
  "lexical_name": "estimate_of_readout_fixed_four_nine_cap",
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
  "slug": "estimate-of-readout-fixed-four-nine-cap--036b51c572bda2ef828391b7",
  "source": {
    "blob": "a5534fcf49af40dec5b9eeff3979df4690f50347",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 151,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantae59de6ca5620b30ffa2a943f6c578f192656ec471b8214e14e69988f006e49d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:036b51c572bda2ef828391b7c996554bfd30a819105cf580fa08cd9a76afc12a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantae59de6ca5620b30ffa2a943f6c578f192656ec471b8214e14e69988f006e49d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f36430e-c382-80b3-898f-e17d91f9a407`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem estimate_of_readout_fixed_four_nine_cap (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * max 0 (D + rho + 1168)), ?_⟩
  exact all_real_lower_with_fixed_four_nine_cap D rho Q hQ hreadout

end RH16FourNineLedger
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantae59de6ca5620b30ffa2a943f6c578f192656ec471b8214e14e69988f006e49d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceFourNineLedger/Variantae59de6ca5620b30ffa2a943f6c578f192656ec471b8214e14e69988f006e49d.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5534fcf49af40dec5b9eeff3979df4690f50347` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
