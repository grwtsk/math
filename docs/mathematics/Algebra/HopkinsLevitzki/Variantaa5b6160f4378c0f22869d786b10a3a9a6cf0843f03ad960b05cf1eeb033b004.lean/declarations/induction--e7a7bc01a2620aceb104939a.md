# induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce479ec4-70c0-551f-45ae-47451517cbac",
  "kind": "theorem",
  "lexical_name": "induction",
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
  "slug": "induction--e7a7bc01a2620aceb104939a",
  "source": {
    "blob": "adb55c158a43500dcfd8e59099e60caf61b406de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 42,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7a7bc01a2620aceb104939a047a057291386c151f72d621c703d8953e0b4241",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce479ec4-70c0-551f-45ae-47451517cbac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[elab_as_elim] protected theorem induction
    {P : ∀ (M : Type u) [AddCommGroup M] [Module R₀ M] [Module R M], Prop}
    (h0 : ∀ (M) [AddCommGroup M] [Module R₀ M] [Module R M] [IsScalarTower R₀ R M]
      [IsSemisimpleModule R M], Module.IsTorsionBySet R M (Ring.jacobson R) → P M)
    (h1 : ∀ (M) [AddCommGroup M] [Module R₀ M] [Module R M] [IsScalarTower R₀ R M],
      let N := Ring.jacobson R • (⊤ : Submodule R M); P N → P (M ⧸ N) → P M) :
    P M := by
  have ⟨ss, n, hn⟩ := (isSemiprimaryRing_iff R).mp ‹_›
  set Jac := Ring.jacobson R
  replace hn : Jac ^ n ≤ Module.annihilator R M := hn ▸ bot_le
  have {M} [AddCommGroup M] [Module R₀ M] [Module R M] [IsScalarTower R₀ R M] :
      Jac ≤ Module.annihilator R M → P M := by
    rw [← SetLike.coe_subset_coe, ← Module.isTorsionBySet_iff_subset_annihilator]
    intro h
    let _ := h.module
    have := (h.semilinearMap.isSemisimpleModule_iff_of_bijective Function.bijective_id).2
      inferInstance
    exact h0 _ h
  induction' n with n ih generalizing M
  · rw [Jac.pow_zero, Ideal.one_eq_top] at hn; exact this (le_top.trans hn)
  obtain _ | n := n
  · rw [Jac.pow_one] at hn; exact this hn
  refine h1 _ (ih _ ?_) (ih _ ?_)
  · rwa [← Submodule.annihilator_top, Submodule.le_annihilator_iff, Jac.pow_succ,
      Submodule.mul_smul, ← Submodule.le_annihilator_iff] at hn
  · rw [← SetLike.coe_subset_coe, ← Module.isTorsionBySet_iff_subset_annihilator,
      Module.isTorsionBySet_quotient_iff]
    exact fun m i hi ↦ Submodule.smul_mem_smul (Ideal.pow_le_self n.succ_ne_zero hi) trivial

section

variable [IsScalarTower R₀ R R] [Module.Finite R₀ (R ⧸ Ring.jacobson R)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variantaa5b6160f4378c0f22869d786b10a3a9a6cf0843f03ad960b05cf1eeb033b004.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adb55c158a43500dcfd8e59099e60caf61b406de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
