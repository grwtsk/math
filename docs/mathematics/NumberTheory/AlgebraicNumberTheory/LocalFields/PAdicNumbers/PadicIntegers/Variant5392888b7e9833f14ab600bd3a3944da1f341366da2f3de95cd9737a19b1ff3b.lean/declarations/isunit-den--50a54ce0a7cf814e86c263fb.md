# isUnit_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d96ac499b84ac998f26f2bb126553453aacba972",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 428,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5392888b7e9833f14ab600bd3a3944da1f341366da2f3de95cd9737a19b1ff3b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:587cd7f2-7066-c246-a2fa-addbf1e73773",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c34c4a1-754a-b254-dda8-34fb75b4aedb",
  "kind": "theorem",
  "lexical_name": "isUnit_den",
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
  "slug": "isunit-den--50a54ce0a7cf814e86c263fb",
  "source": {
    "blob": "d96ac499b84ac998f26f2bb126553453aacba972",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 428,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant5392888b7e9833f14ab600bd3a3944da1f341366da2f3de95cd9737a19b1ff3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50a54ce0a7cf814e86c263fb04c0d08643f8a750123f861814d5178817a94c62",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant5392888b7e9833f14ab600bd3a3944da1f341366da2f3de95cd9737a19b1ff3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c34c4a1-754a-b254-dda8-34fb75b4aedb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_den {p : ℕ} [hp_prime : Fact p.Prime] (r : ℚ) (h : ‖(r : ℚ_[p])‖ ≤ 1) :
    IsUnit (r.den : ℤ_[p]) := by
  rw [isUnit_iff]
  apply le_antisymm (r.den : ℤ_[p]).2
  rw [← not_lt, coe_natCast]
  intro norm_denom_lt
  have hr : ‖(r * r.den : ℚ_[p])‖ = ‖(r.num : ℚ_[p])‖ := by
    congr
    rw_mod_cast [@Rat.mul_den_eq_num r]
  rw [padicNormE.mul] at hr
  have key : ‖(r.num : ℚ_[p])‖ < 1 := by
    calc
      _ = _ := hr.symm
      _ < 1 * 1 := mul_lt_mul' h norm_denom_lt (norm_nonneg _) zero_lt_one
      _ = 1 := mul_one 1
  have : ↑p ∣ r.num ∧ (p : ℤ) ∣ r.den := by
    simp only [← norm_int_lt_one_iff_dvd, ← padic_norm_e_of_padicInt]
    exact ⟨key, norm_denom_lt⟩
  apply hp_prime.1.not_dvd_one
  rwa [← r.reduced.gcd_eq_one, Nat.dvd_gcd_iff, ← Int.natCast_dvd, ← Int.natCast_dvd_natCast]

end Units

section NormLeIff

/-! ### Various characterizations of open unit balls -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant5392888b7e9833f14ab600bd3a3944da1f341366da2f3de95cd9737a19b1ff3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant5392888b7e9833f14ab600bd3a3944da1f341366da2f3de95cd9737a19b1ff3b.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96ac499b84ac998f26f2bb126553453aacba972` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
