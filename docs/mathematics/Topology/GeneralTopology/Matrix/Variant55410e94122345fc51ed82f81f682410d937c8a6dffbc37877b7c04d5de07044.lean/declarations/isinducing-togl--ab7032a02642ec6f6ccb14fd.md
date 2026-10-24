# isInducing_toGL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b51c9a15-9835-97f8-877c-ccc870eff426",
  "kind": "lemma",
  "lexical_name": "isInducing_toGL",
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
  "slug": "isinducing-togl--ab7032a02642ec6f6ccb14fd",
  "source": {
    "blob": "6b34c7c137126a28c4a6ed9c414feb26d8479d0a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 153,
    "path": "GRWTSK/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7032a02642ec6f6ccb14fd8ae8cc0966f6b0e60afaf17ac5e7c26ddec78e13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b51c9a15-9835-97f8-877c-ccc870eff426`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isInducing_toGL : IsInducing (toGL : SL n R → GL n R) :=
  .of_comp continuous_toGL Units.continuous_val (IsInducing.induced _)

/-- The natural map from `SL n A` in `GL n A` is an embedding, i.e. it is an injection and
the topology on `SL n A` coincides with the subspace topology from `GL n A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Matrix/Variant55410e94122345fc51ed82f81f682410d937c8a6dffbc37877b7c04d5de07044.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b34c7c137126a28c4a6ed9c414feb26d8479d0a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
