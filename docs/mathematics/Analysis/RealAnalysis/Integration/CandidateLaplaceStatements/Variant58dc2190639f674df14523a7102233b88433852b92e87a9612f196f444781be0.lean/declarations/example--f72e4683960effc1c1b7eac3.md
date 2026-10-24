# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16018f9f575996fb44e948bc4646090dea774aa0601b56fda508af9e37e07d6a",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--f72e4683960effc1c1b7eac3",
  "source": {
    "blob": "3fc49080214d1fd4d1118368de11e9dfe6a06866",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 424,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f72e4683960effc1c1b7eac363a98f91e39f6de5da8cffa1af7809660ec2a415",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16018f9f575996fb44e948bc4646090dea774aa0601b56fda508af9e37e07d6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (τ : ℝ) :
    (∫ x : ℝ, Complex.exp (-(τ : ℂ) * I * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) = candidate X ε h ((τ : ℂ) * I) :=
  candidate_boundaryInverse_fourier X hX ε h hε hh hh1 τ
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLaplaceStatements/Variant58dc2190639f674df14523a7102233b88433852b92e87a9612f196f444781be0.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fc49080214d1fd4d1118368de11e9dfe6a06866` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
