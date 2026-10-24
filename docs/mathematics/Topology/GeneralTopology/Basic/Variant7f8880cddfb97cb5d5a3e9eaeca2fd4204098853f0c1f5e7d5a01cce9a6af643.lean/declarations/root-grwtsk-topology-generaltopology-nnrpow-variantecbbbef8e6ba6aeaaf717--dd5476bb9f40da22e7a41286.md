# _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.nonneg_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daba3ccf-3a5a-cd90-1419-bee50113b1db",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.nonneg_TFAE",
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
  "slug": "root-grwtsk-topology-generaltopology-nnrpow-variantecbbbef8e6ba6aeaaf717--dd5476bb9f40da22e7a41286",
  "source": {
    "blob": "3ec5dbefe8609409fed35b3e004162817c4bfc78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 381,
    "line": 360,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd5476bb9f40da22e7a41286ed00ca112b8b89ac49109bf4bc3a35090269d5a4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daba3ccf-3a5a-cd90-1419-bee50113b1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–381.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Topology.GeneralTopology.Nnrpow.Variantecbbbef8e6ba6aeaaf717fb0abca348192d97c6064f8279f5f7bab7e0d2d24dd.CStarAlgebra.nonneg_TFAE {a : A} :
    [ 0 ≤ a,
      a = sqrt a * sqrt a,
      ∃ b : A, 0 ≤ b ∧ a = b * b,
      ∃ b : A, IsSelfAdjoint b ∧ a = b * b,
      ∃ b : A, a = star b * b,
      ∃ b : A, a = b * star b,
      a = a⁺,
      IsSelfAdjoint a ∧ a⁻ = 0,
      IsSelfAdjoint a ∧ QuasispectrumRestricts a ContinuousMap.realToNNReal ].TFAE := by
  tfae_have 1 ↔ 9 := nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts
  tfae_have 1 ↔ 7 := eq_comm.eq ▸ (CFC.posPart_eq_self a).symm
  tfae_have 1 ↔ 8 := ⟨fun h => ⟨h.isSelfAdjoint, negPart_eq_zero_iff a |>.mpr h⟩,
    fun h => negPart_eq_zero_iff a |>.mp h.2⟩
  tfae_have 1 → 2 := fun h => sqrt_mul_sqrt_self a |>.symm
  tfae_have 2 → 3 := fun h => ⟨sqrt a, sqrt_nonneg a, h⟩
  tfae_have 3 → 4 := fun ⟨b, hb⟩ => ⟨b, hb.1.isSelfAdjoint, hb.2⟩
  tfae_have 4 → 5 := fun ⟨b, hb⟩ => ⟨b, hb.1.symm ▸ hb.2⟩
  tfae_have 5 → 6 := fun ⟨b, hb⟩ => ⟨star b, star_star b |>.symm ▸ hb⟩
  tfae_have 6 → 1 := fun ⟨b, hb⟩ => hb ▸ mul_star_self_nonneg _
  tfae_finish

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant7f8880cddfb97cb5d5a3e9eaeca2fd4204098853f0c1f5e7d5a01cce9a6af643.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec5dbefe8609409fed35b3e004162817c4bfc78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
