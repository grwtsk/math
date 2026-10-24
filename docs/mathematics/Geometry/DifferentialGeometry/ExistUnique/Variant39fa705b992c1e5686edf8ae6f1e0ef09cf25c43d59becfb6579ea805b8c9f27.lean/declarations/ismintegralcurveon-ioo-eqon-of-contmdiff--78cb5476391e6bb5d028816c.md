# isMIntegralCurveOn_Ioo_eqOn_of_contMDiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c861888-ea9f-cd18-1ff4-f3527ce6c6e0",
  "kind": "theorem",
  "lexical_name": "isMIntegralCurveOn_Ioo_eqOn_of_contMDiff",
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
  "slug": "ismintegralcurveon-ioo-eqon-of-contmdiff--78cb5476391e6bb5d028816c",
  "source": {
    "blob": "179715f4ae536862360cdb2317e31067e8d7b50c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 197,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78cb5476391e6bb5d028816cb5cdea9ae28aa64c4328adf510c3023200efd01c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c861888-ea9f-cd18-1ff4-f3527ce6c6e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMIntegralCurveOn_Ioo_eqOn_of_contMDiff (ht₀ : t₀ ∈ Ioo a b)
    (hγt : ∀ t ∈ Ioo a b, I.IsInteriorPoint (γ t))
    (hv : CMDiff 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    (hγ : IsMIntegralCurveOn γ v (Ioo a b)) (hγ' : IsMIntegralCurveOn γ' v (Ioo a b))
    (h : γ t₀ = γ' t₀) : EqOn γ γ' (Ioo a b) := by
  set s := {t | γ t = γ' t} ∩ Ioo a b with hs
  -- since `Ioo a b` is connected, we get `s = Ioo a b` by showing that `s` is clopen in `Ioo a b`
  -- in the subtype topology (`s` is also non-empty by assumption)
  -- here we use a slightly weaker alternative theorem
  suffices hsub : Ioo a b ⊆ s from fun t ht ↦ mem_ofPred.mp ((subset_def ▸ hsub) t ht).1
  apply isPreconnected_Ioo.subset_of_closure_inter_subset (s := Ioo a b) (u := s) _
    ⟨t₀, ⟨ht₀, ⟨h, ht₀⟩⟩⟩
  · -- is this really the most convenient way to pass to subtype topology?
    -- TODO: shorten this when better API around subtype topology exists
    rw [hs, inter_comm, ← Subtype.image_preimage_val, inter_comm, ← Subtype.image_preimage_val,
      image_subset_image_iff Subtype.val_injective, preimage_ofPred_eq]
    intro t ht
    rw [mem_preimage, ← closure_subtype] at ht
    revert ht t
    apply IsClosed.closure_subset (isClosed_eq _ _)
    · rw [continuous_iff_continuousAt]
      rintro ⟨_, ht⟩
      apply ContinuousAt.comp _ continuousAt_subtype_val
      rw [Subtype.coe_mk]
      exact hγ.continuousWithinAt ht |>.continuousAt (Ioo_mem_nhds ht.1 ht.2)
    · rw [continuous_iff_continuousAt]
      rintro ⟨_, ht⟩
      apply ContinuousAt.comp _ continuousAt_subtype_val
      rw [Subtype.coe_mk]
      exact hγ'.continuousWithinAt ht |>.continuousAt (Ioo_mem_nhds ht.1 ht.2)
  · rw [isOpen_iff_mem_nhds]
    intro t₁ ht₁
    have hmem := Ioo_mem_nhds ht₁.2.1 ht₁.2.2
    have heq : γ =ᶠ[𝓝 t₁] γ' := isMIntegralCurveAt_eventuallyEq_of_contMDiffAt
      (hγt _ ht₁.2) hv.contMDiffAt (hγ.isMIntegralCurveAt hmem) (hγ'.isMIntegralCurveAt hmem) ht₁.1
    apply (heq.and hmem).mono
    exact fun _ ht ↦ ht

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ExistUnique/Variant39fa705b992c1e5686edf8ae6f1e0ef09cf25c43d59becfb6579ea805b8c9f27.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `179715f4ae536862360cdb2317e31067e8d7b50c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
