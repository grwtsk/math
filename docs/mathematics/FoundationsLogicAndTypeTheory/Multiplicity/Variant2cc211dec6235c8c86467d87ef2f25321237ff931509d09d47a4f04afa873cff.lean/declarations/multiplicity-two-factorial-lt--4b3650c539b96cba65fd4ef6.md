# multiplicity_two_factorial_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7dbb4a9f-616c-ee62-15d8-78d028d5bd3e",
  "kind": "theorem",
  "lexical_name": "multiplicity_two_factorial_lt",
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
  "slug": "multiplicity-two-factorial-lt--4b3650c539b96cba65fd4ef6",
  "source": {
    "blob": "655a6fa17411b215a1fad083676425307b8d9cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b3650c539b96cba65fd4ef6632d525739888909694d218382678ddcb1378f50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7dbb4a9f-616c-ee62-15d8-78d028d5bd3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multiplicity_two_factorial_lt : ∀ {n : ℕ} (_ : n ≠ 0), multiplicity 2 n ! < n := by
  have h2 := prime_two.prime
  refine' binaryRec _ _
  · exact fun h => False.elim <| h rfl
  · intro b n ih h
    by_cases hn : n = 0
    · subst hn
      simp only [ne_eq, bit_eq_zero, true_and, Bool.not_eq_false] at h
      simp only [h, bit_true, bit1_zero, factorial, mul_one, Nat.isUnit_iff, cast_one]
      rw [Prime.multiplicity_one]
      simp only [zero_lt_one]
      decide
    have : multiplicity 2 (2 * n)! < (2 * n : ℕ) := by
      rw [prime_two.multiplicity_factorial_mul]
      refine' (PartENat.add_lt_add_right (ih hn) (PartENat.natCast_ne_top _)).trans_le _
      rw [two_mul]
      norm_cast
    cases b
    · simpa [bit0_eq_two_mul n]
    · suffices multiplicity 2 (2 * n + 1) + multiplicity 2 (2 * n)! < ↑(2 * n) + 1 by
        simpa [succ_eq_add_one, multiplicity.mul, h2, prime_two, Nat.bit1_eq_succ_bit0,
          bit0_eq_two_mul n]
      rw [multiplicity_eq_zero.2 (two_not_dvd_two_mul_add_one n), zero_add]
      refine' this.trans _
      exact_mod_cast lt_succ_self _
#align nat.multiplicity_two_factorial_lt Nat.multiplicity_two_factorial_lt

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Multiplicity/Variant2cc211dec6235c8c86467d87ef2f25321237ff931509d09d47a4f04afa873cff.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `655a6fa17411b215a1fad083676425307b8d9cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
