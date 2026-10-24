# isLocalization_atPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da66677f-dd6a-6b26-7085-85103d028eaf",
  "kind": "lemma",
  "lexical_name": "isLocalization_atPrime",
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
  "slug": "islocalization-atprime--1b538a114dafdfff581badc0",
  "source": {
    "blob": "c6413c91e5acbaee81d56b987c765cce0d34c551",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 799,
    "line": 741,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b538a114dafdfff581badc0084ce18be8ef4c6c5efd95e61698991cc6ddca25",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da66677f-dd6a-6b26-7085-85103d028eaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 741–799.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocalization_atPrime (f) (x : pbo f) {m} (f_deg : f ∈ 𝒜 m) (hm : 0 < m) :
    @IsLocalization (Away 𝒜 f) _ ((toSpec 𝒜 f).base x).asIdeal.primeCompl
      (AtPrime 𝒜 x.1.asHomogeneousIdeal.toIdeal) _
      (mapId 𝒜 (Submonoid.powers_le.mpr x.2)).toAlgebra := by
  let : Algebra (Away 𝒜 f) (AtPrime 𝒜 x.1.asHomogeneousIdeal.toIdeal) :=
    (mapId 𝒜 (Submonoid.powers_le.mpr x.2)).toAlgebra
  constructor; constructor
  · rintro ⟨y, hy⟩
    obtain ⟨y, rfl⟩ := HomogeneousLocalization.mk_surjective y
    refine .of_mul_eq_one
      (.mk ⟨y.deg, y.den, y.num, (mk_mem_toSpec_base_apply _ _ _).not.mp hy⟩) <| val_injective _ ?_
    simp only [RingHom.algebraMap_toAlgebra, map_mk, GradedRingHom.id_apply, val_mul, val_mk,
      mk_eq_mk', val_one, IsLocalization.mk'_mul_mk'_eq_one']
  · intro z
    obtain ⟨⟨i, a, ⟨b, hb⟩, (hb' : b ∉ x.1.1)⟩, rfl⟩ := z.mk_surjective
    refine ⟨⟨HomogeneousLocalization.mk ⟨i * m, ⟨a * b ^ (m - 1), ?_⟩,
        ⟨f ^ i, SetLike.pow_mem_graded _ f_deg⟩, ⟨_, rfl⟩⟩,
      ⟨HomogeneousLocalization.mk ⟨i * m, ⟨b ^ m, mul_comm m i ▸ SetLike.pow_mem_graded _ hb⟩,
        ⟨f ^ i, SetLike.pow_mem_graded _ f_deg⟩, ⟨_, rfl⟩⟩,
        (mk_mem_toSpec_base_apply _ _ _).not.mpr <| x.1.1.toIdeal.primeCompl.pow_mem hb' m⟩⟩,
        val_injective _ ?_⟩
    · convert SetLike.mul_mem_graded a.2 (SetLike.pow_mem_graded (m - 1) hb)
      rw [← succ_nsmul', tsub_add_cancel_of_le (by lia), mul_comm, smul_eq_mul]
    · simp only [RingHom.algebraMap_toAlgebra, map_mk, GradedRingHom.id_apply, val_mul, val_mk,
        mk_eq_mk', ← IsLocalization.mk'_mul, Submonoid.mk_mul_mk, IsLocalization.mk'_eq_iff_eq]
      rw [mul_comm b, mul_mul_mul_comm, ← pow_succ', mul_assoc, tsub_add_cancel_of_le (by lia)]
  · intro y z e
    obtain ⟨y, rfl⟩ := HomogeneousLocalization.mk_surjective y
    obtain ⟨z, rfl⟩ := HomogeneousLocalization.mk_surjective z
    obtain ⟨i, c, hc, hc', e⟩ : ∃ i, ∃ c ∈ 𝒜 i, c ∉ x.1.asHomogeneousIdeal ∧
        c * (z.den.1 * y.num.1) = c * (y.den.1 * z.num.1) := by
      apply_fun HomogeneousLocalization.val at e
      simp only [RingHom.algebraMap_toAlgebra, map_mk, GradedRingHom.id_apply, val_mk, mk_eq_mk',
        IsLocalization.mk'_eq_iff_eq] at e
      obtain ⟨⟨c, hcx⟩, hc⟩ := IsLocalization.exists_of_eq (M := x.1.1.toIdeal.primeCompl) e
      obtain ⟨i, hi⟩ := not_forall.mp ((x.1.1.isHomogeneous.mem_iff _).not.mp hcx)
      refine ⟨i, _, (decompose 𝒜 c i).2, hi, ?_⟩
      apply_fun fun x ↦ (decompose 𝒜 x (i + z.deg + y.deg)).1 at hc
      conv_rhs at hc => rw [add_right_comm]
      rwa [← mul_assoc, coe_decompose_mul_add_of_right_mem, coe_decompose_mul_add_of_right_mem,
        ← mul_assoc, coe_decompose_mul_add_of_right_mem, coe_decompose_mul_add_of_right_mem,
        mul_assoc, mul_assoc] at hc
      exacts [y.den.2, z.num.2, z.den.2, y.num.2]
    refine ⟨⟨HomogeneousLocalization.mk ⟨m * i, ⟨c ^ m, SetLike.pow_mem_graded _ hc⟩,
      ⟨f ^ i, mul_comm m i ▸ SetLike.pow_mem_graded _ f_deg⟩, ⟨_, rfl⟩⟩,
      (mk_mem_toSpec_base_apply _ _ _).not.mpr <| x.1.1.toIdeal.primeCompl.pow_mem hc' _⟩,
      val_injective _ ?_⟩
    simp only [val_mul, val_mk, mk_eq_mk', ← IsLocalization.mk'_mul, Submonoid.mk_mul_mk,
      IsLocalization.mk'_eq_iff_eq, mul_assoc]
    congr 2
    rw [mul_left_comm, mul_left_comm y.den.1, ← tsub_add_cancel_of_le (show 1 ≤ m from hm),
      pow_succ, mul_assoc, mul_assoc, e]

set_option backward.isDefEq.respectTransparency.types false in
/--
For an element `f ∈ A` with positive degree and a homogeneous ideal in `D(f)`, we have that the
stalk of `Spec A⁰_ f` at `y` is isomorphic to `A⁰ₓ` where `y` is the point in `Proj` corresponding
to `x`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant3c65a6a57cf3ee7a690068a5ecb8721db8acd4ae7f1a40b01cde6b3122eb5b8c.lean#L741).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6413c91e5acbaee81d56b987c765cce0d34c551` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
