# coe_valueGroupOrderIso_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46e95e96-55df-87b8-f4c0-da262aa45bf4",
  "kind": "theorem",
  "lexical_name": "coe_valueGroupOrderIso_coe",
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
  "slug": "coe-valuegrouporderiso-coe--68fbcaeeaea9dc72a1919578",
  "source": {
    "blob": "fc35879c144dcdc3a6ac3ea530c5869201a11449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 703,
    "path": "GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68fbcaeeaea9dc72a191957876d6e6f62ceea4e883cd8df0b53892f4e86ac0d2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46e95e96-55df-87b8-f4c0-da262aa45bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem coe_valueGroupOrderIso_coe (a : valueGroup (.ofClass (valuation K v))) :
    valueGroupOrderIso K v (a : ValueGroup₀ _) = (valueGroupEquiv K v a : ValueGroup₀ _) := by
  simp [valueGroupOrderIso]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AdicValuation/Variant22f9209d1ee533b59045033547640d3e5bc7e3454086b6f346c34783727b3385.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc35879c144dcdc3a6ac3ea530c5869201a11449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
