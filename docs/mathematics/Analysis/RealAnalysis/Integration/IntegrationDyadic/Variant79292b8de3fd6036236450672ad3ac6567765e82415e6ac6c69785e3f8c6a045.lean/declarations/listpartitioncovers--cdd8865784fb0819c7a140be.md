# ListPartitionCovers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b6d679b960a945fa7d959d9bcdb683ce53a01ee7a626fa3005797fe3f80f9fa",
  "kind": "structure",
  "lexical_name": "ListPartitionCovers",
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
  "slug": "listpartitioncovers--cdd8865784fb0819c7a140be",
  "source": {
    "blob": "21dc0ee17918724bacc9ee2a78d079fc5730702c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 295,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdd8865784fb0819c7a140be2cedfcc7c721068a14223d4658342fb60c0cc908",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b6d679b960a945fa7d959d9bcdb683ce53a01ee7a626fa3005797fe3f80f9fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ListPartitionCovers (parts : List IntervalRat) (I : IntervalRat) : Prop where
  nonempty : parts ≠ []
  head_lo : (parts.head nonempty).lo = I.lo
  last_hi : (parts.getLast nonempty).hi = I.hi
  adjacent : ∀ k (hk : k + 1 < parts.length),
    (parts[k]'(by omega)).hi = (parts[k + 1]'hk).lo

/-- Domain validity for all subintervals in a list-based partition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrationDyadic/Variant79292b8de3fd6036236450672ad3ac6567765e82415e6ac6c69785e3f8c6a045.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21dc0ee17918724bacc9ee2a78d079fc5730702c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
