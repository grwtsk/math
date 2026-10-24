# instUnitizationNormedAlgebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b83c1b4fec36b33f54813863e05744c1d848df2b537be8a344d5c305e8e10bdf",
  "kind": "instance",
  "lexical_name": "instUnitizationNormedAlgebra",
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
  "slug": "instunitizationnormedalgebra--134e20cdf518690ab80b36e5",
  "source": {
    "blob": "f068958bab79cf4fe3926a031982ec5b25893a41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:134e20cdf518690ab80b36e5fbf040a6d750383c9a9a5ed90f7fa755be38528c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b83c1b4fec36b33f54813863e05744c1d848df2b537be8a344d5c305e8e10bdf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance instUnitizationNormedAlgebra :
    NormedAlgebra 𝕜 (WithLp 1 (Unitization 𝕜 A)) where
  norm_smul_le r x := by
    simp_rw [unitization_norm_def, ofLp_smul, fst_smul, snd_smul, norm_smul, mul_add]
    exact le_rfl

end WithLp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/UnitizationL1/Variant371202876a8351a2096bcc0be2d625893b48727af2a0edc9e03cfaa7bc98932c.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f068958bab79cf4fe3926a031982ec5b25893a41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
