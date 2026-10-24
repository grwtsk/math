# isAddHaarMeasure_volume_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ab8c48b5c32e59dc6acbda0da0dd2db74a33872f0b52bb9033c35b2deb9446ee",
  "kind": "instance",
  "lexical_name": "isAddHaarMeasure_volume_pi",
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
  "slug": "isaddhaarmeasure-volume-pi--083954e94669d6ca1afac95e",
  "source": {
    "blob": "0226abd034d26f7e28deaa6a97b3fe7cea4aed41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:083954e94669d6ca1afac95e5c5d29650dd705bc90f66396de960274fbec68fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ab8c48b5c32e59dc6acbda0da0dd2db74a33872f0b52bb9033c35b2deb9446ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAddHaarMeasure_volume_pi (ι : Type*) [Fintype ι] :
    IsAddHaarMeasure (volume : Measure (ι → ℝ)) :=
  inferInstance
#align measure_theory.is_add_haar_measure_volume_pi MeasureTheory.isAddHaarMeasure_volume_pi

namespace Measure

/-!
### Strict subspaces have zero measure
-/


/-- If a set is disjoint of its translates by infinitely many bounded vectors, then it has measure
zero. This auxiliary lemma proves this assuming additionally that the set is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant9491d8f55dc85cb6ce72c68e352fc91f9470e522a24124c4fcb6e3c5ccdc6cdc.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0226abd034d26f7e28deaa6a97b3fe7cea4aed41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
