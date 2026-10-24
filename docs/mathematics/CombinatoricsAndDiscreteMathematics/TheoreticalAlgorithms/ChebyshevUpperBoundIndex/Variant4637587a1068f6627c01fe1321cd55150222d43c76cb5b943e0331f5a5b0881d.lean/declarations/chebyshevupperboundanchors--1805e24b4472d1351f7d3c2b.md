# chebyshevUpperBoundAnchors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d98008d794da5e0e8dbb276a22b9716db448bc9209fe2276048f5b0c56c89a57",
  "kind": "def",
  "lexical_name": "chebyshevUpperBoundAnchors",
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
  "slug": "chebyshevupperboundanchors--1805e24b4472d1351f7d3c2b",
  "source": {
    "blob": "aa682e60538dc2bdc4f2e31edffe4852dc06195d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevUpperBoundIndex/Variant4637587a1068f6627c01fe1321cd55150222d43c76cb5b943e0331f5a5b0881d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1805e24b4472d1351f7d3c2bfb6c210f4a476eccdb15499671e52ce1cb5bf183",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevUpperBoundIndex/Variant4637587a1068f6627c01fe1321cd55150222d43c76cb5b943e0331f5a5b0881d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d98008d794da5e0e8dbb276a22b9716db448bc9209fe2276048f5b0c56c89a57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def chebyshevUpperBoundAnchors : List ClassicalAnchor :=
  [ thetaDyadicBinomialBridgeAnchor
  , psiDyadicBinomialBridgeAnchor
  , thetaLinearUpperBoundAnchor
  , psiLinearUpperBoundAnchor
  , primeCountingLinearUpperBoundAnchor
  , chebyshevTwoSidedBoundsStillTargetAnchor
  , pntStillTargetAfterUpperBoundAnchor
  ]

end Exposition
end Rebuild
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevUpperBoundIndex/Variant4637587a1068f6627c01fe1321cd55150222d43c76cb5b943e0331f5a5b0881d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ChebyshevUpperBoundIndex/Variant4637587a1068f6627c01fe1321cd55150222d43c76cb5b943e0331f5a5b0881d.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa682e60538dc2bdc4f2e31edffe4852dc06195d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
