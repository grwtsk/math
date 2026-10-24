# nnrpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8e30d8ea89d5dbb1195fa40123d9686d0f4c993e0059bd06bebe6b01d8de8f68",
  "kind": "def",
  "lexical_name": "nnrpow",
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
  "slug": "nnrpow--c8a1ee5405b96da9b812cb33",
  "source": {
    "blob": "f9a857bbea505af2f528e6dcd2db8cee73f66b50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8a1ee5405b96da9b812cb33e6a9f7d3658f9555a73e785ac80b7809d6dd64bc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8e30d8ea89d5dbb1195fa40123d9686d0f4c993e0059bd06bebe6b01d8de8f68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def nnrpow (a : A) (y : ℝ≥0) : A := cfcₙ (NNReal.nnrpow · y) a

/-- Enable `a ^ y` notation for `CFC.nnrpow`. This is a low-priority instance to make sure it does
not take priority over other instances when they are available. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant1388d5e891178cce17e394ed3565485a3fa2dbcd900920850b7b43946b7e3318.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9a857bbea505af2f528e6dcd2db8cee73f66b50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
