# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57e551305cfcce25dc795183759c8d59a03657f3d9e09d84e1991a05da6fd9f0",
  "kind": "example",
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
  "slug": "example--c518ba1bac38a10cc564effb",
  "source": {
    "blob": "c68c9a005f847f7584f0a64ec6632221c40c13f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 285,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant54a6bec3d9b49398c4499cc98f6965ca2860f7c7e489918df9650a378d2cdd6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c518ba1bac38a10cc564effb2bf4cbf99cc6c6b6451a1baa641a468b9008225e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant54a6bec3d9b49398c4499cc98f6965ca2860f7c7e489918df9650a378d2cdd6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:57e551305cfcce25dc795183759c8d59a03657f3d9e09d84e1991a05da6fd9f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x y z : ℚ) (hx : x < 5) (hy : y < 5000000000) (hz : z > 34 * y) : x ≤ 5 := by
  linarith only [hx]

/- The speed of `linarith` is very sensitive to how much typeclass inference is demanded by the
lemmas it orchestrates.

This example took 3318 heartbeats (and 110 ms on a good laptop) on an earlier implementation, which
in several places used off-the-shelf library lemmas requiring low-level typeclasses, e.g.
`Add{Left,Right}{Strict}Mono`.

After a tweak to rely only on custom `linarith` clones of these lemmas taking high-level typeclasses,
this now (November 2024) takes 1647 heartbeats (63 ms on a good laptop). -/
set_option maxHeartbeats 2000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant54a6bec3d9b49398c4499cc98f6965ca2860f7c7e489918df9650a378d2cdd6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linarith/Variant54a6bec3d9b49398c4499cc98f6965ca2860f7c7e489918df9650a378d2cdd6d.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c68c9a005f847f7584f0a64ec6632221c40c13f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
