# smoothFiberwiseLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e3ad8e99e911673730b2e20ea11d365be7a4f77c25e615c4cd5b1c29de3edc17",
  "kind": "def",
  "lexical_name": "smoothFiberwiseLinear",
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
  "slug": "smoothfiberwiselinear--8503bb91c6cc9fb01bff1122",
  "source": {
    "blob": "809580bde548bbb432f34084fe214a1b745c4c32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8503bb91c6cc9fb01bff112261e2ce128f135a265981389e0722a35b74281ad7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e3ad8e99e911673730b2e20ea11d365be7a4f77c25e615c4cd5b1c29de3edc17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothFiberwiseLinear : StructureGroupoid (B × F) where
  members :=
    ⋃ (φ : B → F ≃L[𝕜] F) (U : Set B) (hU : IsOpen U)
      (hφ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => φ x : B → F →L[𝕜] F) U)
      (h2φ : SmoothOn IB 𝓘(𝕜, F →L[𝕜] F) (fun x => (φ x).symm : B → F →L[𝕜] F) U),
        {e | e.EqOnSource (FiberwiseLinear.localHomeomorph φ hU hφ.continuousOn h2φ.continuousOn)}
  trans' := by
    simp only [mem_aux]
    rintro e e' ⟨φ, U, hU, hφ, h2φ, heφ⟩ ⟨φ', U', hU', hφ', h2φ', heφ'⟩
    refine' ⟨fun b => (φ b).trans (φ' b), _, hU.inter hU', _, _,
      Setoid.trans (LocalHomeomorph.EqOnSource.trans' heφ heφ') ⟨_, _⟩⟩
    · show
        SmoothOn IB 𝓘(𝕜, F →L[𝕜] F)
          (fun x : B => (φ' x).toContinuousLinearMap ∘L (φ x).toContinuousLinearMap) (U ∩ U')
      exact (hφ'.mono <| inter_subset_right _ _).clm_comp (hφ.mono <| inter_subset_left _ _)
    · show
        SmoothOn IB 𝓘(𝕜, F →L[𝕜] F)
          (fun x : B => (φ x).symm.toContinuousLinearMap ∘L (φ' x).symm.toContinuousLinearMap)
          (U ∩ U')
      exact (h2φ.mono <| inter_subset_left _ _).clm_comp (h2φ'.mono <| inter_subset_right _ _)
    · apply FiberwiseLinear.source_trans_localHomeomorph
    · rintro ⟨b, v⟩ -; apply FiberwiseLinear.trans_localHomeomorph_apply
  -- porting note: without introducing `e` first, the first `simp only` fails
  symm' := fun e ↦ by
    simp only [mem_iUnion]
    rintro ⟨φ, U, hU, hφ, h2φ, heφ⟩
    refine' ⟨fun b => (φ b).symm, U, hU, h2φ, _, LocalHomeomorph.EqOnSource.symm' heφ⟩
    simp_rw [ContinuousLinearEquiv.symm_symm]
    exact hφ
  id_mem' := by
    /- porting note: `simp_rw [mem_iUnion]` failed; expanding. Was:
    simp_rw [mem_iUnion]
    refine' ⟨fun b => ContinuousLinearEquiv.refl 𝕜 F, univ, isOpen_univ, _, _, ⟨_, fun b hb => _⟩⟩
    -/
    refine mem_iUnion.2 ⟨fun _ ↦ .refl 𝕜 F, mem_iUnion.2 ⟨univ, mem_iUnion.2 ⟨isOpen_univ, ?_⟩⟩⟩
    refine mem_iUnion.2 ⟨contMDiffOn_const, mem_iUnion.2 ⟨contMDiffOn_const, ?_, ?_⟩⟩
    · simp only [FiberwiseLinear.localHomeomorph, LocalHomeomorph.refl_localEquiv,
        LocalEquiv.refl_source, univ_prod_univ]
    · exact eqOn_refl id _
  locality' := by
    -- the hard work has been extracted to `locality_aux₁` and `locality_aux₂`
    simp only [mem_aux]
    intro e he
    obtain ⟨U, hU, h⟩ := SmoothFiberwiseLinear.locality_aux₁ e he
    exact SmoothFiberwiseLinear.locality_aux₂ e U hU h
  eq_on_source' := by
    simp only [mem_aux]
    rintro e e' ⟨φ, U, hU, hφ, h2φ, heφ⟩ hee'
    exact ⟨φ, U, hU, hφ, h2φ, Setoid.trans hee' heφ⟩
#align smooth_fiberwise_linear smoothFiberwiseLinear

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantfa13b1e0501a5e67d9c1fac92927fe682d1d551ad88a060168fe4c95bcf8d8ef.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `809580bde548bbb432f34084fe214a1b745c4c32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
