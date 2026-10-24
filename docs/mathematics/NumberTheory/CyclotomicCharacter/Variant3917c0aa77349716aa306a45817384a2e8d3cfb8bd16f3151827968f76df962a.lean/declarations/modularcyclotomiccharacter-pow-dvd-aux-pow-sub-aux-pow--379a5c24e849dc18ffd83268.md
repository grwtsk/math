# modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed7c31e9-e133-332b-ccf8-e44c3506b4ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51454cf1-fd2b-aee5-9bbe-16c657971304",
  "kind": "theorem",
  "lexical_name": "modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow",
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
  "slug": "modularcyclotomiccharacter-pow-dvd-aux-pow-sub-aux-pow--379a5c24e849dc18ffd83268",
  "source": {
    "blob": "54ea476741d5a3beee9d20d12c30433e4ebc3040",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 97,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:379a5c24e849dc18ffd832689816eb9060be0df273a448fec2d022bc3ad5b7da",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51454cf1-fd2b-aee5-9bbe-16c657971304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modularCyclotomicCharacter.pow_dvd_aux_pow_sub_aux_pow
    (g : L ≃+* L) (p : ℕ) [Fact p.Prime] [∀ i, HasEnoughRootsOfUnity L (p ^ i)]
    {i k : ℕ} (hi : k ≤ i) : (p : ℤ) ^ k ∣ aux g (p ^ i) - aux g (p ^ k) := by
  obtain ⟨i, rfl⟩ := exists_add_of_le hi
  obtain ⟨ζ, hζ⟩ := HasEnoughRootsOfUnity.exists_primitiveRoot L (p ^ (k + i))
  have h := hζ.pow (a := p ^ i) (Nat.pos_of_neZero _) (Nat.pow_add' _ _ _)
  have h_unit : (h.isUnit (Nat.pos_of_neZero _)).unit =
      (hζ.isUnit (Nat.pos_of_neZero _)).unit ^ (p ^ i) := by ext; rfl
  have H₁ := aux_spec g (p ^ (k + i))
    ⟨_, (hζ.isUnit_unit (Nat.pos_of_neZero _)).mem_rootsOfUnity⟩
  have H₂ := aux_spec g (p ^ k)
    ⟨_, (h.isUnit_unit (Nat.pos_of_neZero _)).mem_rootsOfUnity⟩
  simp only [IsUnit.unit_spec, map_pow] at H₁ H₂
  rw [H₁, ← Units.val_pow_eq_pow_val, ← Units.ext_iff, h_unit, ← div_eq_one] at H₂
  simp only [← zpow_natCast, ← zpow_mul, div_eq_mul_inv, ← zpow_sub] at H₂
  rw [(hζ.isUnit_unit (Nat.pos_of_neZero _)).zpow_eq_one_iff_dvd, mul_comm, ← mul_sub] at H₂
  conv_lhs at H₂ => rw [Nat.pow_add', Nat.cast_mul]
  rwa [mul_dvd_mul_iff_left (by simp [NeZero.ne p]), Nat.cast_pow] at H₂

/-- If `g` is a ring automorphism of `L`, and `n : ℕ+`, then
  `modularCyclotomicCharacter.toFun n g` is the `j : ZMod d` such that `g(ζ)=ζ^j` for all
  `n`'th roots of unity. Here `d` is the number of `n`th roots of unity in `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant3917c0aa77349716aa306a45817384a2e8d3cfb8bd16f3151827968f76df962a.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54ea476741d5a3beee9d20d12c30433e4ebc3040` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
