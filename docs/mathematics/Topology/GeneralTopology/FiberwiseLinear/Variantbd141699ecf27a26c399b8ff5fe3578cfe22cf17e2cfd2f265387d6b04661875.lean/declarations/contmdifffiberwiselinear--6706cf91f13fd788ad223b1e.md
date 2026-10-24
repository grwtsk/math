# contMDiffFiberwiseLinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:755cc36fbe24e7b81f3656bbbc48c63056fe07c7a9829f7eb88754f70ec7082f",
  "kind": "def",
  "lexical_name": "contMDiffFiberwiseLinear",
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
  "slug": "contmdifffiberwiselinear--6706cf91f13fd788ad223b1e",
  "source": {
    "blob": "2f28b69cc1c51a2c2cad47e5969de84c560ea859",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 245,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6706cf91f13fd788ad223b1e173154a5b8130e559847a1b2a04f33b1b7409b5d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:755cc36fbe24e7b81f3656bbbc48c63056fe07c7a9829f7eb88754f70ec7082f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def contMDiffFiberwiseLinear (n : WithTop ℕ∞) : StructureGroupoid (B × F) where
  members :=
    ⋃ (φ : B → F ≃L[𝕜] F) (U : Set B) (hU : IsOpen U)
      (hφ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => φ x : B → F →L[𝕜] F) U)
      (h2φ : ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n (fun x => (φ x).symm : B → F →L[𝕜] F) U),
        {e | e.EqOnSource (FiberwiseLinear.partialHomeomorph φ hU hφ.continuousOn h2φ.continuousOn)}
  trans' := by
    simp only [mem_aux]
    rintro e e' ⟨φ, U, hU, hφ, h2φ, heφ⟩ ⟨φ', U', hU', hφ', h2φ', heφ'⟩
    refine ⟨fun b => (φ b).trans (φ' b), _, hU.inter hU', ?_, ?_,
      Setoid.trans (PartialHomeomorph.EqOnSource.trans' heφ heφ') ⟨?_, ?_⟩⟩
    · show
        ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n
          (fun x : B => (φ' x).toContinuousLinearMap ∘L (φ x).toContinuousLinearMap) (U ∩ U')
      exact (hφ'.mono inter_subset_right).clm_comp (hφ.mono inter_subset_left)
    · show
        ContMDiffOn IB 𝓘(𝕜, F →L[𝕜] F) n
          (fun x : B => (φ x).symm.toContinuousLinearMap ∘L (φ' x).symm.toContinuousLinearMap)
          (U ∩ U')
      exact (h2φ.mono inter_subset_left).clm_comp (h2φ'.mono inter_subset_right)
    · apply FiberwiseLinear.source_trans_partialHomeomorph
    · rintro ⟨b, v⟩ -; apply FiberwiseLinear.trans_partialHomeomorph_apply
  -- Porting note: without introducing `e` first, the first `simp only` fails
  symm' := fun e ↦ by
    simp only [mem_aux]
    rintro ⟨φ, U, hU, hφ, h2φ, heφ⟩
    refine ⟨fun b => (φ b).symm, U, hU, h2φ, ?_, PartialHomeomorph.EqOnSource.symm' heφ⟩
    simp_rw [ContinuousLinearEquiv.symm_symm]
    exact hφ
  id_mem' := by
    simp_rw [mem_aux]
    refine ⟨fun _ ↦ ContinuousLinearEquiv.refl 𝕜 F, univ, isOpen_univ, contMDiffOn_const,
      contMDiffOn_const, ⟨?_, fun b _hb ↦ rfl⟩⟩
    simp only [FiberwiseLinear.partialHomeomorph, PartialHomeomorph.refl_partialEquiv,
      PartialEquiv.refl_source, univ_prod_univ]
  locality' := by
    -- the hard work has been extracted to `locality_aux₁` and `locality_aux₂`
    simp only [mem_aux]
    intro e he
    obtain ⟨U, hU, h⟩ := ContMDiffFiberwiseLinear.locality_aux₁ n e he
    exact ContMDiffFiberwiseLinear.locality_aux₂ n e U hU h
  mem_of_eqOnSource' := by
    simp only [mem_aux]
    rintro e e' ⟨φ, U, hU, hφ, h2φ, heφ⟩ hee'
    exact ⟨φ, U, hU, hφ, h2φ, Setoid.trans hee' heφ⟩

@[deprecated (since := "2025-01-09")] alias smoothFiberwiseLinear := contMDiffFiberwiseLinear

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variantbd141699ecf27a26c399b8ff5fe3578cfe22cf17e2cfd2f265387d6b04661875.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f28b69cc1c51a2c2cad47e5969de84c560ea859` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
