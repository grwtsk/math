# MultilinearMap.mkContinuous_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:431c2835-26cd-86b5-8bdc-abd28fe91b32",
  "kind": "theorem",
  "lexical_name": "MultilinearMap.mkContinuous_norm_le",
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
  "slug": "multilinearmap-mkcontinuous-norm-le--9e81b6fc087db6d94cc0b94c",
  "source": {
    "blob": "99c54afef0043a93d86986320aa79171a7001433",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 683,
    "line": 677,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e81b6fc087db6d94cc0b94cceb2fb3ce20959d2aaa0d058af8b423937ce1a26",
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

Occurrence: `result:431c2835-26cd-86b5-8bdc-abd28fe91b32`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 677–683.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MultilinearMap.mkContinuous_norm_le (f : MultilinearMap 𝕜 E G) {C : ℝ} (hC : 0 ≤ C)
    (H : ∀ m, ‖f m‖ ≤ C * ∏ i, ‖m i‖) : ‖f.mkContinuous C H‖ ≤ C :=
  ContinuousMultilinearMap.opNorm_le_bound hC fun m => H m

/-- If a continuous multilinear map is constructed from a multilinear map via the constructor
`mkContinuous`, then its norm is bounded by the bound given to the constructor if it is
nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4d04e9347d1041bd154728879a14092443918ca60c43a4ac55d4c0129f01b328.lean#L677).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `99c54afef0043a93d86986320aa79171a7001433` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
