# CuspFormClass.petersson_bounded_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8582ad30-35b4-9e23-a302-327fd95cc600",
  "kind": "lemma",
  "lexical_name": "CuspFormClass.petersson_bounded_left",
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
  "slug": "cuspformclass-petersson-bounded-left--e8bd4ed371801712d2fc666d",
  "source": {
    "blob": "7798e860b352902c4209973f3f9536aa8d123544",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 204,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8bd4ed371801712d2fc666d00288b45bda634c7a29d732bdb2e2ca983f87c42",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8582ad30-35b4-9e23-a302-327fd95cc600`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma CuspFormClass.petersson_bounded_left
    (k : ℤ) (Γ : Subgroup (GL (Fin 2) ℝ)) [Γ.IsArithmetic] {F F' : Type*} (f : F) (f' : F')
    [FunLike F ℍ ℂ] [FunLike F' ℍ ℂ] [CuspFormClass F Γ k] [ModularFormClass F' Γ k] :
    ∃ C, ∀ τ, ‖petersson k f f' τ‖ ≤ C := by
  conv => enter [1, C, τ, 1]; rw [← norm_norm]
  refine ModularGroup.exists_bound_of_subgroup_invariant (by fun_prop) (fun g ↦ ?_)
    fun g hg τ ↦ SlashInvariantFormClass.norm_petersson_smul hg
  apply IsZeroAtImInfty.isBoundedAtImInfty
  rw [IsZeroAtImInfty, ZeroAtFilter, ← tendsto_zero_iff_norm_tendsto_zero]
  simp_rw [← UpperHalfPlane.petersson_slash_SL]
  have : ((toConjAct (g : GL (Fin 2) ℝ)⁻¹) • Γ).IsArithmetic := by
    simpa [(show Rat.castHom ℝ = algebraMap ℚ ℝ by rfl), map_inv, map_mapGL]
      using! Subgroup.IsArithmetic.conj Γ (mapGL ℚ g)⁻¹
  exact (zero_at_infty <| CuspForm.translate f g).petersson_isZeroAtImInfty_left k _
    (ModularForm.translate f' g)

/-- If `f` is a modular form and `f'` a cusp form, then `petersson k f f'` is bounded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteac9c314a32f28fbee86dcad4449d12b04e436d19cbae193ca3ebb3e9c7555b9.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7798e860b352902c4209973f3f9536aa8d123544` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
