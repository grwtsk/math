# StratifiedResolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c2460125ede4fa9c2a5438a6c343ac18a663d203dadfcdc7a1e3db8481c3cab",
  "kind": "inductive",
  "lexical_name": "StratifiedResolution",
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
  "slug": "stratifiedresolution--8d681911f850a492c4b43907",
  "source": {
    "blob": "f9f18dae0b4ae3a77ad4c29d0bd2b4d3f81e6127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 70,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant2f9749dc30c61fbf1d35d2c8e5aa4cc4d82187b3ec788596fc7ec356ef2f3bee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d681911f850a492c4b439075fafef8f55ccceae713ff5f958424e7a45f4ac6d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant2f9749dc30c61fbf1d35d2c8e5aa4cc4d82187b3ec788596fc7ec356ef2f3bee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c2460125ede4fa9c2a5438a6c343ac18a663d203dadfcdc7a1e3db8481c3cab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive StratifiedResolution
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (FiniteResult LimitWitness : Type v)
  | finite
      (result : FiniteResult)
      (stratum : CanonicalOrdinalTally profile)
      (localRank : Option Nat)
      (ordinalIndex : Option (CanonicalOrdinalTally profile))
  | limitBoundary
      (stratum : CanonicalOrdinalTally profile)
      (fundamentalSequence : FundamentalSequenceId)
      (witness : LimitWitness)
  | unknown
      (nearestCut : CutId)
      (unknowns : Finset StratifiedUnknownKind)
  | rejected
      (reason : StratifiedRejection)

end Mathematics.StratifiedBoundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant2f9749dc30c61fbf1d35d2c8e5aa4cc4d82187b3ec788596fc7ec356ef2f3bee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant2f9749dc30c61fbf1d35d2c8e5aa4cc4d82187b3ec788596fc7ec356ef2f3bee.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9f18dae0b4ae3a77ad4c29d0bd2b4d3f81e6127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
