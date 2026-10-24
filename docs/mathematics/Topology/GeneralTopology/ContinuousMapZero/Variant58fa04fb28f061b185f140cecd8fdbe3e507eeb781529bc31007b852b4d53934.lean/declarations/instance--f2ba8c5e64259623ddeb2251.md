# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d776a0a0dc8305233220a648a8b8e1785329549f2799bce790610672dc1b0178",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--f2ba8c5e64259623ddeb2251",
  "source": {
    "blob": "dba3ff124acba0d76d7c945eba80379fb8982fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 376,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2ba8c5e64259623ddeb2251c73f8e21ba6c86ead74233ce4957fc598d0afdc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d776a0a0dc8305233220a648a8b8e1785329549f2799bce790610672dc1b0178`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 376–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [NormedCommRing R] [StarRing R] [CStarRing R] : CStarRing C(α, R)₀ where
  norm_mul_self_le f := CStarRing.norm_mul_self_le (f : C(α, R))

end Norm

end ContinuousMapZero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousMapZero/Variant58fa04fb28f061b185f140cecd8fdbe3e507eeb781529bc31007b852b4d53934.lean#L376).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dba3ff124acba0d76d7c945eba80379fb8982fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
