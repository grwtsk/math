# IsTightMeasureSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:152688053b8d216320cad7d1d50e19799b594f109fcdb315e27948747abc7636",
  "kind": "def",
  "lexical_name": "IsTightMeasureSet",
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
  "slug": "istightmeasureset--dd79ba63a7af4c073d48b04b",
  "source": {
    "blob": "896e7fa8d0719152e950aef4bd6d21eba46451f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd79ba63a7af4c073d48b04bfc0b14739e2d625ee2ce5b99516188e51bee2042",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:152688053b8d216320cad7d1d50e19799b594f109fcdb315e27948747abc7636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsTightMeasureSet (S : Set (Measure 𝓧)) : Prop :=
  Tendsto (⨆ μ ∈ S, μ) (cocompact 𝓧).smallSets (𝓝 0)

/-- A set of measures `S` is tight if for all `0 < ε`, there exists a compact set `K` such that
for all `μ ∈ S`, `μ Kᶜ ≤ ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Tight/Variant06a6e154e75d033c663a99f735401b4af4650a4fce6b46abed03138c4d1f27e4.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `896e7fa8d0719152e950aef4bd6d21eba46451f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
