# eq_of_mem_weylGroup_of_forall_apply_sRoot_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75876e4e-3900-c16d-b99d-051820023a8d",
  "kind": "lemma",
  "lexical_name": "eq_of_mem_weylGroup_of_forall_apply_sRoot_eq",
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
  "slug": "eq-of-mem-weylgroup-of-forall-apply-sroot-eq--e99d5476f1c119ac0d162992",
  "source": {
    "blob": "48b70d9ca47fc2bca74198387059bd39e4994868",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 341,
    "line": 317,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e99d5476f1c119ac0d16299297f6077d4d466bd63cdfe9db4bcd19885f70d20d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75876e4e-3900-c16d-b99d-051820023a8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–341.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_of_mem_weylGroup_of_forall_apply_sRoot_eq [CharZero R] [IsDomain R]
    {w₁ w₂ : (M ≃ₗ[R] M) × (N ≃ₗ[R] N)} (hw₁ : w₁ ∈ rl.weylGroup) (hw₂ : w₂ ∈ rl.weylGroup)
    (h : ∀ i, w₁.1 (rl.sRoot i) = w₂.1 (rl.sRoot i)) :
    w₁ = w₂ := by
  suffices ∀ w ∈ rl.weylGroup, (∀ i, w.1 (rl.sRoot i) = rl.sRoot i) → w = 1 from
    (inv_mul_eq_one.mp <| this (w₂⁻¹ * w₁) (mul_mem (inv_mem hw₂) hw₁) <| by simp [h]).symm
  clear! w₁ w₂
  intro w hw
  have key (y : N) : w.2 y - y ∈ span R (range rl.sCoroot) := by
    induction hw using weylGroup.induction generalizing y with
    | mem i =>
      rw [rl.coreflection_apply, sub_sub_cancel_left, neg_mem_iff]
      exact Submodule.smul_mem _ _ <| subset_span <| mem_range_self i
    | one => simp
    | mul a b _ _ ha hb => simpa using add_mem (ha <| b.2 y) (hb y)
  intro hw'
  replace hw' (y : N) : w.2 y = y := by
    simp_rw [rl.eq_iff_forall_pairing_sRoot_eq (key y),
      ← rl.pairing_apply_apply_of_mem_weyl hw (rl.sRoot _) y]
    aesop
  have hw'' (x : M) : w.1 x = x := by
    refine (LinearMap.IsPerfPair.bijective_left rl.pairing).injective <| LinearMap.ext fun y ↦ ?_
    simpa [hw' y] using rl.pairing_apply_apply_of_mem_weyl hw x y
  exact Prod.ext (LinearEquiv.ext hw'') (LinearEquiv.ext hw')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant0d2632e8d19b4c002ab58e07564d6b723651ad89c6dee99ef789b9eb15bbafca.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b70d9ca47fc2bca74198387059bd39e4994868` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
