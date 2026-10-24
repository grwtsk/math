# range_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bdf560a6f0c96199621f3b2aefe3660906c0d81f9d55891bea2554639763ed2",
  "kind": "instance",
  "lexical_name": "range_Ioi",
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
  "slug": "range-ioi--afd9773a0b99e2574e53d17c",
  "source": {
    "blob": "30b54ebeb8b2bbb8ea7a7e37486f25a1b1824050",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afd9773a0b99e2574e53d17cd94ad585227c0593be94d12fd13463259466ed18",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bdf560a6f0c96199621f3b2aefe3660906c0d81f9d55891bea2554639763ed2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance range_Ioi : HasCountableSeparatingOn X (· ∈ range Ioi) s :=
  .range_Iio (X := Xᵒᵈ)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableSeparating/Variantb1223fc24c749c5380fedc8f9ce1097e093b5a1a0fbba31ec97f52bfc5eff8a4.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30b54ebeb8b2bbb8ea7a7e37486f25a1b1824050` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
