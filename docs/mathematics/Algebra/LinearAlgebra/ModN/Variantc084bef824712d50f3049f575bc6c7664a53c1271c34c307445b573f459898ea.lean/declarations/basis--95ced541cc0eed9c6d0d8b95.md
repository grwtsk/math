# basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35a913724b0d2d383f1586b3777a34d9d94ef666e49d0b64b41b72b3b85664fb",
  "kind": "def",
  "lexical_name": "basis",
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
  "slug": "basis--95ced541cc0eed9c6d0d8b95",
  "source": {
    "blob": "a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:95ced541cc0eed9c6d0d8b953dd86c5157d7dd5903ab85336d8140f05eea80e7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35a913724b0d2d383f1586b3777a34d9d94ef666e49d0b64b41b72b3b85664fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def basis {ι : Type*} (b : Basis ι ℤ G) : Basis ι (ZMod n) (ModN G n) := by
  set nG := LinearMap.range (LinearMap.lsmul ℤ G n)
  set H := G ⧸ nG
  set φ : G →ₗ[ℤ] H := nG.mkQ
  let mod : (ι →₀ ℤ) →ₗ[ℤ] (ι →₀ ZMod n) := mapRange.linearMap (Int.castAddHom _).toIntLinearMap
  let f : G →ₗ[ℤ] (ι →₀ ℤ) := b.repr
  have hker : nG ≤ LinearMap.ker (mod.comp f) := by
    rintro _ ⟨x, rfl⟩
    ext b
    simp [mod, f]
  let g : H →ₗ[ℤ] (ι →₀ ZMod n) := nG.liftQ (mod.comp f) hker
  refine ⟨.ofBijective (g.toAddMonoidHom.toZModLinearMap n) ⟨?_, ?_⟩⟩
  · rw [AddMonoidHom.coe_toZModLinearMap, LinearMap.toAddMonoidHom_coe, injective_iff_map_eq_zero,
      nG.mkQ_surjective.forall]
    intro x hx
    simp only [Submodule.mkQ_apply, g] at hx
    rw [Submodule.liftQ_apply] at hx
    replace hx : ∀ b, ↑n ∣ f x b := by
      simpa [mod, DFunLike.ext_iff, ZMod.intCast_zmod_eq_zero_iff_dvd] using! hx
    simp only [Submodule.mkQ_apply]
    rw [Submodule.Quotient.mk_eq_zero]
    choose c hc using hx
    refine ⟨b.repr.symm ⟨(f x).support, c, by simp [hc, NeZero.ne]⟩, b.repr.injective ?_⟩
    simpa [DFunLike.ext_iff, eq_comm] using! hc
  · suffices mod ∘ b.repr = g ∘ nG.mkQ by
      exact (this ▸ (mapRange_surjective _ (map_zero _) ZMod.intCast_surjective).comp
        b.repr.surjective).of_comp
    ext x b
    simp [mod, g, f, H]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ModN/Variantc084bef824712d50f3049f575bc6c7664a53c1271c34c307445b573f459898ea.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4890d423fea7ba5259746d0a8ba4e5f50bb2f0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
