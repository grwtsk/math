# isUnit_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c977722e-c487-f578-e35a-acd2348a01e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0b5dfae-1bdc-c8e6-3360-ce0173dabc1d",
  "kind": "theorem",
  "lexical_name": "isUnit_iff",
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
  "slug": "isunit-iff--0e601619e3c6c4e407f4e96d",
  "source": {
    "blob": "26358e0f31a6cc6d91351d74b6dea1561a123a0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 232,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e601619e3c6c4e407f4e96db4b5f295882ea15e821e34970b6ab4edc1cf338c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0b5dfae-1bdc-c8e6-3360-ce0173dabc1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isUnit_iff : IsUnit p ↔ ∃ r : R, IsUnit r ∧ C r = p :=
  ⟨fun hp =>
    ⟨p.coeff 0,
      let h := eq_C_of_natDegree_eq_zero (natDegree_eq_zero_of_isUnit hp)
      ⟨isUnit_C.1 (h ▸ hp), h.symm⟩⟩,
    fun ⟨_, hr, hrp⟩ => hrp ▸ isUnit_C.2 hr⟩
#align polynomial.is_unit_iff Polynomial.isUnit_iff

variable [CharZero R]

-- Porting note: bit0/bit1 are deprecated
-- @[simp, deprecated]
-- theorem degree_bit0_eq (p : R[X]) : degree (bit0 p) = degree p := by
--   rw [bit0_eq_two_mul, degree_mul, (by simp : (2 : R[X]) = C 2),
--     @Polynomial.degree_C R _ _ two_ne_zero, zero_add]
-- #align polynomial.degree_bit0_eq Polynomial.degree_bit0_eq
--
-- @[simp]
-- theorem natDegree_bit0_eq (p : R[X]) : natDegree (bit0 p) = natDegree p :=
--   natDegree_eq_of_degree_eq <| degree_bit0_eq p
-- #align polynomial.nat_degree_bit0_eq Polynomial.natDegree_bit0_eq
--
-- @[simp]
-- theorem natDegree_bit1_eq (p : R[X]) : natDegree (bit1 p) = natDegree p := by
--   rw [bit1]
--   apply le_antisymm
--   convert natDegree_add_le _ _
--   · simp
--   by_cases h : p.natDegree = 0
--   · simp [h]
--   apply le_natDegree_of_ne_zero
--   intro hh
--   apply h
--   simp_all [coeff_one, if_neg (Ne.symm h)]
-- #align polynomial.nat_degree_bit1_eq Polynomial.natDegree_bit1_eq
--
-- theorem degree_bit1_eq {p : R[X]} (hp : 0 < degree p) : degree (bit1 p) = degree p := by
--   rw [bit1, degree_add_eq_left_of_degree_lt, degree_bit0_eq]
--   rwa [degree_one, degree_bit0_eq]
-- #align polynomial.degree_bit1_eq Polynomial.degree_bit1_eq

end NoZeroDivisors

section NoZeroDivisors

variable [CommSemiring R] [NoZeroDivisors R] {p q : R[X]}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/RingDivision/Variant5e6ab66a96f2e1bfa17369139d2093524ca27ab583be17e9288876711d70d865.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26358e0f31a6cc6d91351d74b6dea1561a123a0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
