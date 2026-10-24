# tendsto_norm_le_and_mk_eq_div_atTop_aux₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0745dbbe-49c8-1ba0-e2d0-def1e8439b0f",
  "kind": "theorem",
  "lexical_name": "tendsto_norm_le_and_mk_eq_div_atTop_aux₁",
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
  "slug": "tendsto-norm-le-and-mk-eq-div-attop-aux--11ed3300b7e68bcc84bfcf48",
  "source": {
    "blob": "c34e015583125883cadf99bd3cacc90826a4fdcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11ed3300b7e68bcc84bfcf486608ead6126d9bcb029581f68d38dec0acd91b31",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0745dbbe-49c8-1ba0-e2d0-def1e8439b0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem tendsto_norm_le_and_mk_eq_div_atTop_aux₁ (hJ : ClassGroup.mk0 J = C⁻¹) :
    Nat.card {I : (Ideal (𝓞 K))⁰ // absNorm (I : Ideal (𝓞 K)) ≤ s ∧ ClassGroup.mk0 I = C}
      = Nat.card {I : (Ideal (𝓞 K))⁰ // (J : Ideal (𝓞 K)) ∣ I ∧ IsPrincipal (I : Ideal (𝓞 K)) ∧
        absNorm (I : Ideal (𝓞 K)) ≤ s * absNorm (J : Ideal (𝓞 K))} := by
  simp_rw [← nonZeroDivisors_dvd_iff_dvd_coe]
  refine Nat.card_congr ?_
  refine ((Equiv.dvd J).subtypeEquiv fun I ↦ ?_).trans
    (Equiv.subtypeSubtypeEquivSubtypeInter (fun I : (Ideal (𝓞 K))⁰ ↦ J ∣ I) _)
  rw [← ClassGroup.mk0_eq_one_iff (SetLike.coe_mem _)]
  simp_rw [Equiv.dvd_apply, Submonoid.coe_mul, ← Submonoid.mul_def, _root_.map_mul, hJ,
    inv_mul_eq_one, Nat.cast_mul, mul_comm s, eq_comm, and_comm, and_congr_left_iff]
  exact fun _ ↦
    (mul_le_mul_iff_of_pos_left (Nat.cast_pos.mpr (absNorm_pos_of_nonZeroDivisors J))).symm

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ideal/Variant91e551f7e12b382b5374bdabf5cd7d4e0b8aa1c52eba81019e7c97fa8b54e278.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c34e015583125883cadf99bd3cacc90826a4fdcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
