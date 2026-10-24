# _root_.GRWTSK.Topology.MetricTopology.PiLp.Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.LinearIsometryEquiv.piLpCurry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:773cdec22738a4c701c63587f488e3b54435b86770489c384c4ea4c1696706ce",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Topology.MetricTopology.PiLp.Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.LinearIsometryEquiv.piLpCurry",
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
  "slug": "root-grwtsk-topology-metrictopology-pilp-variant6d80183d1e8bc3aeecc6b26f--c2c53b149f84e514b452e5b9",
  "source": {
    "blob": "a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 819,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c2c53b149f84e514b452e5b9ab83b0cbe610d739b854e53f2700059877de8a6b",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:773cdec22738a4c701c63587f488e3b54435b86770489c384c4ea4c1696706ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 819–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Topology.MetricTopology.PiLp.Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.LinearIsometryEquiv.piLpCurry :
    PiLp p (fun i : Sigma _ => α i.1 i.2) ≃ₗᵢ[𝕜] PiLp p (fun i => PiLp p (α i)) where
  toLinearEquiv :=
    WithLp.linearEquiv _ _ _
      ≪≫ₗ LinearEquiv.piCurry 𝕜 α
      ≪≫ₗ (LinearEquiv.piCongrRight fun _ => (WithLp.linearEquiv _ _ _).symm)
      ≪≫ₗ (WithLp.linearEquiv _ _ _).symm
  norm_map' := (WithLp.equiv p _).symm.surjective.forall.2 fun x => by
    simp_rw [← coe_nnnorm, NNReal.coe_inj]
    obtain rfl | hp := eq_or_ne p ⊤
    · simp_rw [← PiLp.nnnorm_equiv, Pi.nnnorm_def, ← PiLp.nnnorm_equiv, Pi.nnnorm_def]
      dsimp [Sigma.curry]
      rw [← Finset.univ_sigma_univ, Finset.sup_sigma]
    · have : 0 < p.toReal := (toReal_pos_iff_ne_top _).mpr hp
      simp_rw [PiLp.nnnorm_eq_sum hp, WithLp.equiv_symm_pi_apply]
      dsimp [Sigma.curry]
      simp_rw [one_div, NNReal.rpow_inv_rpow this.ne', ← Finset.univ_sigma_univ, Finset.sum_sigma]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean#L819).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
