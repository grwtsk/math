# trace_collision_of_momentOnly_history

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e05ef072-c9c5-8486-8026-46bc5fcd26e4",
  "kind": "theorem",
  "lexical_name": "trace_collision_of_momentOnly_history",
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
  "slug": "trace-collision-of-momentonly-history--c1ecb1cb6fa052989eb268dc",
  "source": {
    "blob": "4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1ecb1cb6fa052989eb268dc945c0d23e63680f6630453573aa7edecced68b13",
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

Occurrence: `result:e05ef072-c9c5-8486-8026-46bc5fcd26e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trace_collision_of_momentOnly_history
    {Obs : Type u} {Trace : Type v}
    (R : DynamicRefinement (Combination 2) Obs)
    (hMoments : MomentOnlyStages R)
    (trace : Combination 2 → Trace)
    (htrace : FactorsThrough R.history trace) :
    trace correctedCoordinates = trace 0 :=
  eq_of_factorsThrough R.history trace htrace
    (momentOnly_history_collision R hMoments)

/-- Full *commuting left-invertible spectral cover* is impossible if
the only retained source measurements are the two Bombieri moments.
No sofic-language or zero-height conclusion is needed for this no-go. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DynamicBombieriSoficObstruction.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4490c3a65d8f1b44c2aa447c38c5b0445c6abbe3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
