# continuousLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fffc3f80f1d1ec65def3c4686188b8eba8214ffbf0738fadb9d550630dccb213",
  "kind": "def",
  "lexical_name": "continuousLinearMap",
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
  "slug": "continuouslinearmap--5e4932a27366db1b511470f2",
  "source": {
    "blob": "3bcd60575268952101c9876171e5116af0dc10e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e4932a27366db1b511470f2b8ee4437c6318c7d68b21b40386355dfe957b0d3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fffc3f80f1d1ec65def3c4686188b8eba8214ffbf0738fadb9d550630dccb213`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousLinearMap :
    Pretrivialization (F₁ →SL[σ] F₂) (π (F₁ →SL[σ] F₂) (fun x ↦ E₁ x →SL[σ] E₂ x)) where
  toFun p := ⟨p.1, .comp (e₂.continuousLinearMapAt 𝕜₂ p.1) (p.2.comp (e₁.symmL 𝕜₁ p.1))⟩
  invFun p := ⟨p.1, .comp (e₂.symmL 𝕜₂ p.1) (p.2.comp (e₁.continuousLinearMapAt 𝕜₁ p.1))⟩
  source := Bundle.TotalSpace.proj ⁻¹' (e₁.baseSet ∩ e₂.baseSet)
  target := (e₁.baseSet ∩ e₂.baseSet) ×ˢ Set.univ
  map_source' := fun ⟨_, _⟩ h ↦ ⟨h, Set.mem_univ _⟩
  map_target' := fun ⟨_, _⟩ h ↦ h.1
  left_inv' := fun ⟨x, L⟩ ⟨h₁, h₂⟩ ↦ by
    simp only [TotalSpace.mk_inj]
    ext (v : E₁ x)
    dsimp only [comp_apply]
    rw [Trivialization.symmL_continuousLinearMapAt, Trivialization.symmL_continuousLinearMapAt]
    exacts [h₁, h₂]
  right_inv' := fun ⟨x, f⟩ ⟨⟨h₁, h₂⟩, _⟩ ↦ by
    simp only [Prod.mk_right_inj]
    ext v
    dsimp only [comp_apply]
    rw [Trivialization.continuousLinearMapAt_symmL, Trivialization.continuousLinearMapAt_symmL]
    exacts [h₁, h₂]
  open_target := (e₁.open_baseSet.inter e₂.open_baseSet).prod isOpen_univ
  baseSet := e₁.baseSet ∩ e₂.baseSet
  open_baseSet := e₁.open_baseSet.inter e₂.open_baseSet
  source_eq := rfl
  target_eq := rfl
  proj_toFun _ _ := rfl

-- Porting note (https://github.com/leanprover-community/mathlib4/issues/11215):
-- TODO: see if Lean 4 can generate this instance without a hint
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant5d29cc14b53bcbc5511c23a72d441b97a2325fddb40c74d031006749ede2ee9f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3bcd60575268952101c9876171e5116af0dc10e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
