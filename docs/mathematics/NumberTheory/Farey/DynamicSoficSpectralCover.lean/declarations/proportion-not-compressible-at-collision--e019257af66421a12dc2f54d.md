# proportion_not_compressible_at_collision

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b4fb112-c102-bfff-1627-ff805dec0f95",
  "kind": "theorem",
  "lexical_name": "proportion_not_compressible_at_collision",
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
  "slug": "proportion-not-compressible-at-collision--e019257af66421a12dc2f54d",
  "source": {
    "blob": "5881a2f2caf1aa0b1ec9267376cecb5895327afe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e019257af66421a12dc2f54df4987708dcc0b439a4fa961b5e9c9f17f678c9a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b4fb112-c102-bfff-1627-ff805dec0f95`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem proportion_not_compressible_at_collision
    {X : Type uX} {Cell : Type uCell} [Fintype Cell]
    {Ratio : Type uRatio}
    (partition : DynamicPartition X Cell)
    (proportion : X → Ratio) (n : ℕ)
    (x y : X)
    (hcell : partition.cell n x = partition.cell n y)
    (hproportion : proportion x ≠ proportion y) :
    ¬ ProportionRecoverableAtStage partition proportion n :=
  not_recoverableAtStage_of_collision
    partition proportion n x y hcell hproportion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5881a2f2caf1aa0b1ec9267376cecb5895327afe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
