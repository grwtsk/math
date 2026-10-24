# _root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.ContDiffOn.absolutelyContinuousOnInterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:375d51d5-51e1-f865-ab4e-52ed4ecea02b",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.ContDiffOn.absolutelyContinuousOnInterval",
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
  "slug": "root-grwtsk-topology-generaltopology-totallengthfilter-variante70ff0aea2--7a8e040f7649f79177140797",
  "source": {
    "blob": "3403fb5738c0bcee2c8a0e9eda236acf69620a52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 358,
    "path": "GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a8e040f7649f791771407979d72be6885799ec5f533907744f10295b04cbdf2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:375d51d5-51e1-f865-ab4e-52ed4ecea02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.TotalLengthFilter.Variante70ff0aea2f3cdc2a4aa519c999679132a3a0c3e79b1447e09a03af1c36fdc9d.ContDiffOn.absolutelyContinuousOnInterval {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {f : ℝ → E} (hf : ContDiffOn ℝ 1 f (uIcc a b)) :
    AbsolutelyContinuousOnInterval f a b := by
  obtain ⟨K, hK⟩ := hf.exists_lipschitzOnWith (by decide) (convex_Icc _ _) isCompact_Icc
  exact hK.absolutelyContinuousOnInterval

/-- If `f` is absolutely continuous on `uIcc a b`, then `f` has bounded variation on `uIcc a b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AbsolutelyContinuous/Variant088ecb676a1c3226c4915ef6f4a74f991aa23738df0c20f501add346cc090ef3.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3403fb5738c0bcee2c8a0e9eda236acf69620a52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
