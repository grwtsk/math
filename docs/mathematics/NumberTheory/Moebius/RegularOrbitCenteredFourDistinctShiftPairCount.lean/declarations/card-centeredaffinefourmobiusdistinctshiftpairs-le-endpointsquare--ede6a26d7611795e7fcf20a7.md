# card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66d7cff1-6f92-2c63-8e4c-d2b1db9945a9",
  "kind": "theorem",
  "lexical_name": "card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare",
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
  "slug": "card-centeredaffinefourmobiusdistinctshiftpairs-le-endpointsquare--ede6a26d7611795e7fcf20a7",
  "source": {
    "blob": "3e31ee91675cf5035b0476cb412ae1c477ac1bb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ede6a26d7611795e7fcf20a79eb2d45fc6070e995ffd9020a5d182aa436ebc91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66d7cff1-6f92-2c63-8e4c-d2b1db9945a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_centeredAffineFourMobiusDistinctShiftPairs_le_endpointSquare
    {b r c ell : ℕ} (H : Finset ℕ)
    (hc : c < b + 1)
    (hcell : c + ell < b + 1) :
    (centeredAffineFourMobiusDistinctShiftPairs b r c ell H).card ≤
      (b + 1) * (b + 1) := by
  unfold centeredAffineFourMobiusDistinctShiftPairs
  exact
    (Finset.card_filter_le _ _).trans
      (card_admissibleShiftPairProduct_le_endpointSquare H hc hcell)

/-- Safe total number of center/shift-pair configurations at one positive lag:
at most (b+1)^3. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctShiftPairCount.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e31ee91675cf5035b0476cb412ae1c477ac1bb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
