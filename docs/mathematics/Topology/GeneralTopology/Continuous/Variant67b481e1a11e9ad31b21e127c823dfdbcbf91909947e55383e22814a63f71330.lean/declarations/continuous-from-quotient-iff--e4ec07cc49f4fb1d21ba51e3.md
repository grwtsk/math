# continuous_from_quotient_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1966d539-61f7-ad66-9cf5-25060eb5430e",
  "kind": "theorem",
  "lexical_name": "continuous_from_quotient_iff",
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
  "slug": "continuous-from-quotient-iff--e4ec07cc49f4fb1d21ba51e3",
  "source": {
    "blob": "dd07c8110a77314a60e43b3f273cb82dea04a392",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 150,
    "path": "GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4ec07cc49f4fb1d21ba51e372b09f99b52b86510e86ffb054a0b7c3470c2002",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1966d539-61f7-ad66-9cf5-25060eb5430e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_from_quotient_iff
    {X : Type u} {Y : Type v} {Z : Type w}
    (TX : TopologicalSpaceLike X) (q : X → Y)
    (TZ : TopologicalSpaceLike Z) (f : Y → Z) :
    Continuous (quotientTopology TX q) TZ f ↔
      Continuous TX TZ (fun x => f (q x)) := by
  constructor
  · intro hf V hV
    exact hf V hV
  · intro hf V hV
    exact hf V hV

end FCRS.Topology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Continuous/Variant67b481e1a11e9ad31b21e127c823dfdbcbf91909947e55383e22814a63f71330.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd07c8110a77314a60e43b3f273cb82dea04a392` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
