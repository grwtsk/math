# ZMod.eq_one_or_isUnit_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f7d780c-ebfa-0562-f7b4-7656859c84e0",
  "kind": "theorem",
  "lexical_name": "ZMod.eq_one_or_isUnit_sub_one",
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
  "slug": "zmod-eq-one-or-isunit-sub-one--ec61a1ecefd9cc6d3383b781",
  "source": {
    "blob": "5f0deb70e94b83ab71368b55be6986c80e488573",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 668,
    "line": 646,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec61a1ecefd9cc6d3383b78128a3e592c9947c64afbf8599aa3552e8818c9486",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f7d780c-ebfa-0562-f7b4-7656859c84e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 646–668.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.eq_one_or_isUnit_sub_one {n p k : ℕ} [Fact p.Prime] (hn : n = p ^ k) (a : ZMod n)
    (ha : (orderOf a).Coprime n) : a = 1 ∨ IsUnit (a - 1) := by
  rcases eq_or_ne n 0 with rfl | hn0
  · exact Or.inl (orderOf_eq_one_iff.mp ((orderOf a).coprime_zero_right.mp ha))
  rcases eq_or_ne a 0 with rfl | ha0
  · exact Or.inr (zero_sub (1 : ZMod n) ▸ isUnit_neg_one)
  have : NeZero n := ⟨hn0⟩
  obtain ⟨a, rfl⟩ := ZMod.natCast_zmod_surjective a
  rw [← orderOf_eq_one_iff, or_iff_not_imp_right]
  refine fun h ↦ ha.eq_one_of_dvd ?_
  rw [orderOf_dvd_iff_pow_eq_one, ← Nat.cast_pow, ← Nat.cast_one, ZMod.eq_iff_modEq_nat, hn]
  replace ha0 : 1 ≤ a := by
    contrapose! ha0
    rw [Nat.lt_one_iff.mp ha0, Nat.cast_zero]
  rw [← Nat.cast_one, ← Nat.cast_sub ha0, ZMod.isUnit_iff_coprime, hn] at h
  obtain ⟨b, hb⟩ := not_imp_comm.mp (Nat.Prime.coprime_pow_of_not_dvd Fact.out) h
  rw [tsub_eq_iff_eq_add_of_le ha0, add_comm] at hb
  exact hb ▸ pow_pow_modEq_one p k b

section prime_subfield

variable {F : Type*} [Field F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant21c98b5058b02da3d055198396d1df5a4778f51d114a740afbc74a10f852eed4.lean#L646).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f0deb70e94b83ab71368b55be6986c80e488573` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
