# ratio_le_opNorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87a851fe-3fc7-99b5-54fe-cac45eef278c",
  "kind": "theorem",
  "lexical_name": "ratio_le_opNorm",
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
  "slug": "ratio-le-opnorm--6912e0420be3a9c0dfb7c0c2",
  "source": {
    "blob": "99c54afef0043a93d86986320aa79171a7001433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 413,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6912e0420be3a9c0dfb7c0c25977f72e327685e757e804636fa4d52f075a05d6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87a851fe-3fc7-99b5-54fe-cac45eef278c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ratio_le_opNorm (f : ContinuousMultilinearMap 𝕜 E G) (m : ∀ i, E i) :
    (‖f m‖ / ∏ i, ‖m i‖) ≤ ‖f‖ :=
  div_le_of_le_mul₀ (by positivity) (opNorm_nonneg _) (f.le_opNorm m)

/-- The image of the unit ball under a continuous multilinear map is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c54afef0043a93d86986320aa79171a7001433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
