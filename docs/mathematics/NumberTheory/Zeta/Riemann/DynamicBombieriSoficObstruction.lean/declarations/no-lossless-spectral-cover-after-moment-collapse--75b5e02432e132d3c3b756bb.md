# no_lossless_spectral_cover_after_moment_collapse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045d8081-4d21-f27c-db1a-e03ed789240d",
  "kind": "theorem",
  "lexical_name": "no_lossless_spectral_cover_after_moment_collapse",
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
  "slug": "no-lossless-spectral-cover-after-moment-collapse--75b5e02432e132d3c3b756bb",
  "source": {
    "blob": "4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 103,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75b5e02432e132d3c3b756bbc7b71e59da6f3d947784a0673cb98501a9c7fc56",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045d8081-4d21-f27c-db1a-e03ed789240d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_lossless_spectral_cover_after_moment_collapse
    {Obs : Type u} {State : Type v}
    {Spectral : Type*}
    [Fintype State] [AddCommGroup Spectral] [Module ℂ Spectral]
    (C : DynamicSpectralCover (Combination 2) Obs State Bool Spectral)
    (hMoments : MomentOnlyStages C.partitions)
    (hpost : FactorsThrough C.partitions.history C.labelTrace) :
    False := by
  have htrace :
      C.labelTrace correctedCoordinates = C.labelTrace 0 :=
    trace_collision_of_momentOnly_history C.partitions hMoments
      C.labelTrace hpost
  exact correctedCoordinates_ne_zero (C.trace_injective htrace)

end GRWTSK.NumberTheory.Zeta.Riemann.DynamicBombieriSoficObstruction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
