# prepareCarrierGeometryResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a631f148c4eb1e8841b7202a3f5918d86faf65925670dce6d9711e267fb93058",
  "kind": "def",
  "lexical_name": "prepareCarrierGeometryResult",
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
  "slug": "preparecarriergeometryresult--1ab8b6b5ee0fe954b4919001",
  "source": {
    "blob": "467af6b5ac8514af4fa63a820857d41925c50b62",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1926,
    "line": 1874,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ab8b6b5ee0fe954b49190015f062e0f598b14def4923d5acdfdea56e8d5b3cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a631f148c4eb1e8841b7202a3f5918d86faf65925670dce6d9711e267fb93058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1874–1926.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prepareCarrierGeometryResult {count : Nat}
    (raw : RawCarrierGeometry count) :
    RuntimeResult (PreparedCarrierGeometry count) :=
  if samplesZero : raw.samples = 0 then
    .error .invalidSampleCount
  else if thresholdNegative : raw.threshold < 0 then
    .error .invalidThreshold
  else if thresholdTooLarge : 1 < raw.threshold then
    .error .invalidThreshold
  else
    match ownershipEquation : raw.ownership with
    | none =>
        .ok
          { firstRegion := raw.firstRegion
            remainingRegions := raw.remainingRegions
            combination := raw.combination
            cells := raw.cells
            samples := raw.samples
            samplesPositive := Nat.pos_of_ne_zero samplesZero
            exactCoverage := raw.exactCoverage
            threshold := raw.threshold
            thresholdNonnegative := le_of_not_gt thresholdNegative
            thresholdAtMostOne := le_of_not_gt thresholdTooLarge
            scalar := raw.scalar
            policy := raw.policy
            ownershipPolicies := raw.ownershipPolicies
            ownership := none
            ownershipCoherent := by simp }
    | some ownership =>
        if coherent : ownership.Coherent then
          .ok
            { firstRegion := raw.firstRegion
              remainingRegions := raw.remainingRegions
              combination := raw.combination
              cells := raw.cells
              samples := raw.samples
              samplesPositive := Nat.pos_of_ne_zero samplesZero
              exactCoverage := raw.exactCoverage
              threshold := raw.threshold
              thresholdNonnegative := le_of_not_gt thresholdNegative
              thresholdAtMostOne := le_of_not_gt thresholdTooLarge
              scalar := raw.scalar
              policy := raw.policy
              ownershipPolicies := raw.ownershipPolicies
              ownership := some ownership
              ownershipCoherent := by
                intro ownershipValue provided
                cases provided
                exact coherent }
        else
          .error .invalidOwnership

/-- Complete raw success-or-failure semantics of the high-level operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Semantics/Variant03d73452c99c6fd35ae1a863c3996471a41a5f4244f819673595bd7c941a6eac.lean#L1874).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `467af6b5ac8514af4fa63a820857d41925c50b62` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
