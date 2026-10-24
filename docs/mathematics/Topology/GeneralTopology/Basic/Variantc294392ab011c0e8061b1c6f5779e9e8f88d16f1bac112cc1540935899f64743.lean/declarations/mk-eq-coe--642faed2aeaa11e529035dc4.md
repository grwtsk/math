# mk'_eq_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c5de247-dcea-1567-46a2-e01dd0c48f20",
  "kind": "theorem",
  "lexical_name": "mk'_eq_coe",
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
  "slug": "mk-eq-coe--642faed2aeaa11e529035dc4",
  "source": {
    "blob": "4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 338,
    "line": 330,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:642faed2aeaa11e529035dc4adb216c91c55580ba787b821275a308a1a484274",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c5de247-dcea-1567-46a2-e01dd0c48f20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–338.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk'_eq_coe {l u : ι → ℝ} : mk' l u = I ↔ l = I.lower ∧ u = I.upper := by
  cases' I with lI uI hI; rw [mk']; split_ifs with h
  · simp [WithBot.coe_eq_coe]
  · suffices l = lI → u ≠ uI by simpa
    rintro rfl rfl
    exact h hI
#align box_integral.box.mk'_eq_coe BoxIntegral.Box.mk'_eq_coe

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc294392ab011c0e8061b1c6f5779e9e8f88d16f1bac112cc1540935899f64743.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d0401c8feeee1aec4f49e22c2ffde8a8520e9ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
