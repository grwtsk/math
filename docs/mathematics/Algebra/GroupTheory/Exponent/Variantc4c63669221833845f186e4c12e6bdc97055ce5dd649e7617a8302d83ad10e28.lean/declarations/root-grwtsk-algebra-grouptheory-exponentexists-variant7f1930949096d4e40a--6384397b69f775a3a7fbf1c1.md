# _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3a99f1b-ad8e-57e1-5dab-913785eec68c",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent",
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
  "slug": "root-grwtsk-algebra-grouptheory-exponentexists-variant7f1930949096d4e40a--6384397b69f775a3a7fbf1c1",
  "source": {
    "blob": "fb2c7ab393bc6e1ed051576f052d90ffee4b2f06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 197,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6384397b69f775a3a7fbf1c1d82c55bb25ca2598434995793288d2f65a86df51",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a99f1b-ad8e-57e1-5dab-913785eec68c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.GroupTheory.ExponentExists.Variant7f1930949096d4e40a74e3e7dc6a1b10b47cd8acf5cf91cab4f4635d400c0c2a.Nat.Prime.exists_orderOf_eq_pow_factorization_exponent {p : ℕ} (hp : p.Prime) :
    ∃ g : G, orderOf g = p ^ (exponent G).factorization p := by
  haveI := Fact.mk hp
  rcases eq_or_ne ((exponent G).factorization p) 0 with (h | h)
  · refine' ⟨1, by rw [h, pow_zero, orderOf_one]⟩
  have he : 0 < exponent G :=
    Ne.bot_lt fun ht => by
      rw [ht] at h
      apply h
      rw [bot_eq_zero, Nat.factorization_zero, Finsupp.zero_apply]
  rw [← Finsupp.mem_support_iff] at h
  obtain ⟨g, hg⟩ : ∃ g : G, g ^ (exponent G / p) ≠ 1 := by
    suffices key : ¬exponent G ∣ exponent G / p
    · simpa using mt (exponent_dvd_of_forall_pow_eq_one G (exponent G / p)) key
    exact fun hd =>
      hp.one_lt.not_le
        ((mul_le_iff_le_one_left he).mp <|
          Nat.le_of_dvd he <| Nat.mul_dvd_of_dvd_div (Nat.dvd_of_mem_factorization h) hd)
  obtain ⟨k, hk : exponent G = p ^ _ * k⟩ := Nat.ord_proj_dvd _ _
  obtain ⟨t, ht⟩ := Nat.exists_eq_succ_of_ne_zero (Finsupp.mem_support_iff.mp h)
  refine' ⟨g ^ k, _⟩
  rw [ht]
  apply orderOf_eq_prime_pow
  · rwa [hk, mul_comm, ht, pow_succ', ← mul_assoc, Nat.mul_div_cancel _ hp.pos, pow_mul] at hg
  · rw [← Nat.succ_eq_add_one, ← ht, ← pow_mul, mul_comm, ← hk]
    exact pow_exponent_eq_one g
#align nat.prime.exists_order_of_eq_pow_factorization_exponent Nat.Prime.exists_orderOf_eq_pow_factorization_exponent
#align nat.prime.exists_order_of_eq_pow_padic_val_nat_add_exponent Nat.Prime.exists_addOrderOf_eq_pow_padic_val_nat_add_exponent

variable {G}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variantc4c63669221833845f186e4c12e6bdc97055ce5dd649e7617a8302d83ad10e28.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb2c7ab393bc6e1ed051576f052d90ffee4b2f06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
