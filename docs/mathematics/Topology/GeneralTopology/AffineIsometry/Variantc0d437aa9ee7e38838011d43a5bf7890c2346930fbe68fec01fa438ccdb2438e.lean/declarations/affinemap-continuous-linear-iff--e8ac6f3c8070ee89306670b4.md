# AffineMap.continuous_linear_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df394e86378880aa3d6ad65238b686d436e20d1f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 842,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:daa985ab-f794-df7c-612f-ec6f606a518b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c0c53913-1535-e6a5-b5e7-8653e6839793",
  "kind": "theorem",
  "lexical_name": "AffineMap.continuous_linear_iff",
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
  "slug": "affinemap-continuous-linear-iff--e8ac6f3c8070ee89306670b4",
  "source": {
    "blob": "df394e86378880aa3d6ad65238b686d436e20d1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 857,
    "line": 842,
    "path": "GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8ac6f3c8070ee89306670b40b1258be76f14a2af732c685906a9b42a542c5a9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c0c53913-1535-e6a5-b5e7-8653e6839793`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 842–857.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AffineMap.continuous_linear_iff {f : P →ᵃ[𝕜] P₂} : Continuous f.linear ↔ Continuous f := by
  inhabit P
  have :
    (f.linear : V → V₂) =
      (AffineIsometryEquiv.vaddConst 𝕜 <| f default).toHomeomorph.symm ∘
        f ∘ (AffineIsometryEquiv.vaddConst 𝕜 default).toHomeomorph := by
    ext v
    -- Porting note: was just `simp`
    simp only [(AffineIsometryEquiv.coe_toHomeomorph), Function.comp_apply, (AffineMap.map_vadd),
      eq_self_iff_true, (AffineIsometryEquiv.toHomeomorph_symm),
      (AffineIsometryEquiv.coe_vaddConst), (vadd_vsub), (AffineIsometryEquiv.coe_vaddConst_symm)]
  rw [this]
  simp only [Homeomorph.comp_continuous_iff, Homeomorph.comp_continuous_iff']
#align affine_map.continuous_linear_iff AffineMap.continuous_linear_iff

/-- If `f` is an affine map, then its linear part is an open map iff `f` is an open map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AffineIsometry/Variantc0d437aa9ee7e38838011d43a5bf7890c2346930fbe68fec01fa438ccdb2438e.lean#L842).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df394e86378880aa3d6ad65238b686d436e20d1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
