# isAbsoluteValueNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b679416e6db5449d4623addb47034f6695fc45e12b2b7cdcfd589621d92f2891",
  "kind": "instance",
  "lexical_name": "isAbsoluteValueNorm",
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
  "slug": "isabsolutevaluenorm--7a0fe4d9a6f5aadb002762b2",
  "source": {
    "blob": "74f469ce5551f0ff17e2123b164c3ab0079d7be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 90,
    "path": "GRWTSK/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a0fe4d9a6f5aadb002762b208afa7f616e3fe344cba480434dccde7debba402",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b679416e6db5449d4623addb47034f6695fc45e12b2b7cdcfd589621d92f2891`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isAbsoluteValueNorm : IsAbsoluteValue (‖·‖ : ℂ → ℝ) where
  abv_nonneg' := norm_nonneg
  abv_eq_zero' := Complex.norm_eq_zero_iff
  abv_add' := norm_add_le
  abv_mul' := Complex.norm_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Norm/Variant2f0908710c863c76917626b6951031d208183358ff716d68eb76b117a5b76ea8.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74f469ce5551f0ff17e2123b164c3ab0079d7be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
