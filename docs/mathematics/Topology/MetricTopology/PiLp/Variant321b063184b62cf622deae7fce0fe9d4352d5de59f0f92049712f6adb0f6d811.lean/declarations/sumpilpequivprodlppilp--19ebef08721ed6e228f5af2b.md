# sumPiLpEquivProdLpPiLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bcbdd9a7037422e9ef6e00c485ba596f70f9ec564108ecf25f957e3fd2325dae",
  "kind": "def",
  "lexical_name": "sumPiLpEquivProdLpPiLp",
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
  "slug": "sumpilpequivprodlppilp--19ebef08721ed6e228f5af2b",
  "source": {
    "blob": "a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 882,
    "line": 859,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:19ebef08721ed6e228f5af2b77742c9e8ed01de432c10c2209aba11518d4c5e5",
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

Occurrence: `declaration:bcbdd9a7037422e9ef6e00c485ba596f70f9ec564108ecf25f957e3fd2325dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 859–882.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumPiLpEquivProdLpPiLp :
    WithLp p (Π i, α i) ≃ₗᵢ[𝕜]
      WithLp p (WithLp p (Π i, α (.inl i)) × WithLp p (Π i, α (.inr i))) where
  toLinearEquiv :=
    WithLp.linearEquiv p _ _
      ≪≫ₗ LinearEquiv.sumPiEquivProdPi _ _ _ α
      ≪≫ₗ LinearEquiv.prodCongr (WithLp.linearEquiv p _ _).symm (WithLp.linearEquiv p _ _).symm
      ≪≫ₗ (WithLp.linearEquiv p _ _).symm
  norm_map' := (WithLp.equiv p _).symm.surjective.forall.2 fun x => by
    obtain rfl | hp := p.dichotomy
    · simp [← Finset.univ_disjSum_univ, Finset.sup_disjSum, Pi.norm_def]
    · have : 0 < p.toReal := by positivity
      have hpt : p ≠ ⊤ := (toReal_pos_iff_ne_top p).mp this
      simp_rw [← coe_nnnorm]; congr 1 -- convert to nnnorm to avoid needing positivity arguments
      simp [nnnorm_eq_sum hpt, WithLp.prod_nnnorm_eq_add hpt, NNReal.rpow_inv_rpow this.ne']

end sumPiLpEquivProdLpPiLp

section Single

variable (p)
variable [DecidableEq ι]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant321b063184b62cf622deae7fce0fe9d4352d5de59f0f92049712f6adb0f6d811.lean#L859).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3b0dbc4ef24118b6e84bb3063adf08f7cab9d2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
