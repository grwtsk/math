# compProd_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdad9452-6a8c-d9a1-ff29-694413a1668f",
  "kind": "theorem",
  "lexical_name": "compProd_apply",
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
  "slug": "compprod-apply--72e78f5b2ae535cac4e8a349",
  "source": {
    "blob": "e47ac10926d54b4cf16ca43559edc7d80d5bc714",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 97,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variant88e3d38733dde7787cda936301eadea7417ac2d3758f054ed58289b920178f14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72e78f5b2ae535cac4e8a349ba97f1d8b711b45a2311160cfd7ffbceec609c52",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CompProd/Variant88e3d38733dde7787cda936301eadea7417ac2d3758f054ed58289b920178f14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdad9452-6a8c-d9a1-ff29-694413a1668f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compProd_apply (hs : MeasurableSet s) (κ : Kernel α β) [IsSFiniteKernel κ]
    (η : Kernel (α × β) γ) [IsSFiniteKernel η] (a : α) :
    (κ ⊗ₖ η) a s = ∫⁻ b, η (a, b) (Prod.mk b ⁻¹' s) ∂κ a := by
  rw [compProd, comp_apply, copy_apply, Measure.dirac_bind (by fun_prop), comp_apply,
    parallelComp_apply, Kernel.id_apply, Measure.bind_apply hs (by fun_prop),
    lintegral_prod _ (Kernel.measurable_coe _ hs).aemeasurable, lintegral_dirac']
  swap
  · suffices Measurable fun p : α × β ↦
      (swap γ β ∘ₖ (η ∥ₖ Kernel.id)
        ∘ₖ deterministic MeasurableEquiv.prodAssoc.symm (MeasurableEquiv.measurable _)
        ∘ₖ (Kernel.id ∥ₖ copy β)) p s by fun_prop
    exact Kernel.measurable_coe _ hs
  congr with b
  rw [comp_apply, parallelComp_apply, Kernel.id_apply, copy_apply, Measure.dirac_prod_dirac,
    Measure.dirac_bind (by fun_prop), comp_apply, deterministic_apply (by fun_prop),
    Measure.dirac_bind (by fun_prop), comp_apply]
  simp only [MeasurableEquiv.prodAssoc, MeasurableEquiv.symm_mk, MeasurableEquiv.coe_mk,
    Equiv.prodAssoc_symm_apply]
  rw [parallelComp_apply, Kernel.id_apply, Measure.bind_apply hs (by fun_prop),
    lintegral_prod _ (Kernel.measurable_coe _ hs).aemeasurable]
  classical
  have h_int x : ∫⁻ y, swap γ β (x, y) s ∂Measure.dirac b = (Prod.mk b ⁻¹' s).indicator 1 x := by
    rw [lintegral_dirac']
    · simp [swap_apply' _ hs, Set.indicator_apply]
    · simpa [swap_apply' _ hs, Prod.swap_prod_mk] using!
        measurable_const.indicator (measurable_prodMk_right hs)
  simp_rw [h_int]
  rw [lintegral_indicator_one]
  exact measurable_prodMk_left hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CompProd/Variant88e3d38733dde7787cda936301eadea7417ac2d3758f054ed58289b920178f14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variant88e3d38733dde7787cda936301eadea7417ac2d3758f054ed58289b920178f14.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47ac10926d54b4cf16ca43559edc7d80d5bc714` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
