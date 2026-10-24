# continuousLinearMapCoordChange_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b0bafab-1d96-6679-5541-48fcd5a7cd7b",
  "kind": "theorem",
  "lexical_name": "continuousLinearMapCoordChange_apply",
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
  "slug": "continuouslinearmapcoordchange-apply--aff2cf2e0e9c94bb770cd4d5",
  "source": {
    "blob": "bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 198,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aff2cf2e0e9c94bb770cd4d58a78cdbc2232cfcaab33665cf0f6b805a03e3bf4",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b0bafab-1d96-6679-5541-48fcd5a7cd7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousLinearMapCoordChange_apply (b : B)
    (hb : b ∈ e₁.baseSet ∩ e₂.baseSet ∩ (e₁'.baseSet ∩ e₂'.baseSet)) (L : F₁ →SL[σ] F₂) :
    continuousLinearMapCoordChange σ e₁ e₁' e₂ e₂' b L =
      (continuousLinearMap σ e₁' e₂' ⟨b, (continuousLinearMap σ e₁ e₂).symm b L⟩).2 := by
  ext v
  simp_rw [continuousLinearMapCoordChange, ContinuousLinearEquiv.coe_coe,
    ContinuousLinearEquiv.arrowCongrSL_apply, continuousLinearMap_apply,
    continuousLinearMap_symm_apply' σ e₁ e₂ hb.1, comp_apply, ContinuousLinearEquiv.coe_coe,
    ContinuousLinearEquiv.symm_symm, Trivialization.continuousLinearMapAt_apply,
    Trivialization.symmL_apply]
  rw [e₂.coordChangeL_apply e₂', e₁'.coordChangeL_apply e₁, e₁.coe_linearMapAt_of_mem hb.1.1,
    e₂'.coe_linearMapAt_of_mem hb.2.2]
  exacts [⟨hb.2.1, hb.1.1⟩, ⟨hb.1.2, hb.2.2⟩]
#align pretrivialization.continuous_linear_map_coord_change_apply Pretrivialization.continuousLinearMapCoordChange_apply

end Pretrivialization

open Pretrivialization

variable (F₁ E₁ F₂ E₂)

variable [∀ x : B, TopologicalSpace (E₁ x)] [FiberBundle F₁ E₁] [VectorBundle 𝕜₁ F₁ E₁]

variable [∀ x : B, TopologicalSpace (E₂ x)] [FiberBundle F₂ E₂] [VectorBundle 𝕜₂ F₂ E₂]

variable [∀ x, TopologicalAddGroup (E₂ x)] [∀ x, ContinuousSMul 𝕜₂ (E₂ x)]

/-- The continuous `σ`-semilinear maps between two topological vector bundles form a
`VectorPrebundle` (this is an auxiliary construction for the
`VectorBundle` instance, in which the pretrivializations are collated but no topology
on the total space is yet provided). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variantf5bd36efa4893753f917f0561f0da577b448180bbfc882025c64fa6235376d39.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb69b3d9ddd5ba8ce6fb3fee212d0de9eaa41ce6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
