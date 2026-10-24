# sumPiLpEquivProdLpPiLp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e57de8e5b7a5f3a7cecc17f3717eb84505f2e70925d1398cbf9064ec79558ccc",
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
  "slug": "sumpilpequivprodlppilp--65620934b58108752bc9b5f3",
  "source": {
    "blob": "420a78e8247820dedd7afd4f54e25a610f48ade6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 851,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65620934b58108752bc9b5f37d19577ceccb7783d3def5407b076d823b1771ea",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e57de8e5b7a5f3a7cecc17f3717eb84505f2e70925d1398cbf9064ec79558ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 851–874.

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

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6d80183d1e8bc3aeecc6b26f91b8f735f78f7828d1f6facce14099ff2b75ac44.lean#L851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `420a78e8247820dedd7afd4f54e25a610f48ade6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
