# smul_mul_inv_trivial_or_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2b4f92c099e07a62923cab608512dad29a855750",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b82e9105-f944-e367-b343-8484b424bc29",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7d7c8f02-0985-330f-1b4c-61afce29ca2a",
  "kind": "theorem",
  "lexical_name": "smul_mul_inv_trivial_or_surjective",
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
  "slug": "smul-mul-inv-trivial-or-surjective--7037c047160b3537fa227d9a",
  "source": {
    "blob": "2b4f92c099e07a62923cab608512dad29a855750",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 187,
    "path": "GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7037c047160b3537fa227d9ade43e64cc573102950aa8c8ccefd8fd5699768e6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d7c8f02-0985-330f-1b4c-61afce29ca2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_mul_inv_trivial_or_surjective [IsCyclic G] (hG : IsPGroup p G)
    {K : Type*} [Group K] [MulDistribMulAction K G] (hGK : (Nat.card G).Coprime (Nat.card K)) :
    (∀ g : G, ∀ k : K, k • g * g⁻¹ = 1) ∨ (∀ g : G, ∃ k : K, ∃ q : G, k • q * q⁻¹ = g) := by
  by_cases hc : Nat.card G = 0
  · rw [hc, Nat.coprime_zero_left, Nat.card_eq_one_iff_unique] at hGK
    simp [← hGK.1.elim 1]
  have := Nat.finite_of_card_ne_zero hc
  let ϕ := MulDistribMulAction.toMonoidHomZModOfIsCyclic G K rfl
  have h (g : G) (k : K) (n : ℤ) (h : ϕ k - 1 = n) : k • g * g⁻¹ = g ^ n := by
    rw [sub_eq_iff_eq_add, ← Int.cast_one, ← Int.cast_add] at h
    rw [MulDistribMulAction.toMonoidHomZModOfIsCyclic_apply rfl k g (n + 1) h,
      zpow_add_one, mul_inv_cancel_right]
  replace hG k : ϕ k = 1 ∨ IsUnit (ϕ k - 1) := by
    obtain ⟨n, hn⟩ := hG.exists_card_eq
    exact ZMod.eq_one_or_isUnit_sub_one hn (ϕ k)
      (hGK.symm.coprime_dvd_left ((orderOf_map_dvd ϕ k).trans (orderOf_dvd_natCard k)))
  rcases forall_or_exists_not (fun k : K ↦ ϕ k = 1) with hϕ | ⟨k, hk⟩
  · exact Or.inl fun p k ↦ by rw [h p k 0 (by rw [hϕ, sub_self, Int.cast_zero]), zpow_zero]
  · obtain ⟨⟨u, v, -, hvu⟩, hu : u = ϕ k - 1⟩ := (hG k).resolve_left hk
    rw [← u.intCast_zmod_cast] at hu hvu
    rw [← v.intCast_zmod_cast, ← Int.cast_mul, ← Int.cast_one, ZMod.intCast_eq_intCast_iff] at hvu
    refine Or.inr fun p ↦ zpow_one p ▸ ⟨k, p ^ (v.cast : ℤ), ?_⟩
    rw [h (p ^ v.cast) k u.cast hu.symm, ← zpow_mul, zpow_eq_zpow_iff_modEq]
    exact hvu.of_dvd (Int.natCast_dvd_natCast.mpr (orderOf_dvd_natCard p))

/-- If a cyclic `p`-subgroup `P` acts by conjugation on a subgroup `K` of coprime order, then
  either `⁅K, P⁆ = ⊥` or `⁅K, P⁆ = P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/ZGroup/Variant597736170d13db269cd09f7e754ad557a7ea7e530b6a5b1dadda22e7cd2dd5ef.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b4f92c099e07a62923cab608512dad29a855750` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
