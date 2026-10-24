# actualEulerMellinSlope_norm_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ca74b11-86f0-cd8a-1252-dabc9fc12dad",
  "kind": "theorem",
  "lexical_name": "actualEulerMellinSlope_norm_intervalIntegrable",
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
  "slug": "actualeulermellinslope-norm-intervalintegrable--f1d7b42dfd9216cf0b2b8244",
  "source": {
    "blob": "fdc6d062cde1c661dd1981fa7d0107d82dd77e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 37,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1d7b42dfd9216cf0b2b82444f4b087c8a9c1dba86cec0b3d54d88a9d856cdc0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ca74b11-86f0-cd8a-1252-dabc9fc12dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualEulerMellinSlope_norm_intervalIntegrable (A c a b : ℝ) :
    IntervalIntegrable (fun t : ℝ =>
      ‖actualEulerMellinSlope A ((c : ℂ) + (t : ℂ) * I)‖) volume a b := by
  have hs := slope_continuous A
  exact (by fun_prop : Continuous _).intervalIntegrable _ _

/-- Finite FTC pays the real lower transform and the complete true upper endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualEulerDerivativeVariation/Variant493ce6c6f7235ddc04cc919dafb4121ca6bd01113fce02de9b70eb0c7c73bff4.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdc6d062cde1c661dd1981fa7d0107d82dd77e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
