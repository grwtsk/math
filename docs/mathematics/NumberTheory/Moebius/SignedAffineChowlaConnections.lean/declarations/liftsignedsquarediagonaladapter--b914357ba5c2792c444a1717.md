# liftSignedSquareDiagonalAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50a7c5d8a3bd4290087bf5d26c603d8c2bbcbfb5889d7a4c56dd52536f7e208d",
  "kind": "def",
  "lexical_name": "liftSignedSquareDiagonalAdapter",
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
  "slug": "liftsignedsquarediagonaladapter--b914357ba5c2792c444a1717",
  "source": {
    "blob": "d3124a5dff6d9db62f7784fc747c31a99905a24b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAffineChowlaConnections.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b914357ba5c2792c444a17172cdf15fd71f8b099723271e01e18230c4e2dab0d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAffineChowlaConnections.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:50a7c5d8a3bd4290087bf5d26c603d8c2bbcbfb5889d7a4c56dd52536f7e208d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftSignedSquareDiagonalAdapter
    {source : Prop}
    (bridge : ToSignedSquareDiagonalBudgetAdapter source) :
    ToGrowingShiftAffineChowlaBudgetAdapter source where
  toAffineBudget := by
    intro hsource
    have hNonzero : DyadicNaturalScaleNonzeroParityFourierBudget :=
      bridge.toExactNonzeroBudget hsource
    have hSigned : DyadicNaturalScaleSignedResidueConvolutionBudget :=
      dyadicNaturalScaleSignedResidueConvolutionBudget_iff_nonzeroParityFourier.mpr
        hNonzero
    exact
      dyadicNaturalScaleGrowingShiftAffineChowlaBudget_iff_signedResidueConvolution.mpr
        hSigned

/-- Generic downstream transport from an actual affine-family adapter and the
separate pointwise-Mertens zero-mode premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAffineChowlaConnections.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAffineChowlaConnections.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3124a5dff6d9db62f7784fc747c31a99905a24b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
