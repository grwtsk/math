# Polynomial.abc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79936cc1-8fe8-e268-2af4-8ba8db1605d4",
  "kind": "theorem",
  "lexical_name": "Polynomial.abc",
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
  "slug": "polynomial-abc--71cb968944dc7f3a818c8546",
  "source": {
    "blob": "967acca6b69e3b16b32665909d96def22f903a37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 63,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/MasonStothers/Variant19dbc47f853660e7a83e8764d8a11e066821d40e9af7ad34a5fbf01dbe853c47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71cb968944dc7f3a818c85460e20f1dc3d592356c6aee96816fc7bf903d7cd7f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/MasonStothers/Variant19dbc47f853660e7a83e8764d8a11e066821d40e9af7ad34a5fbf01dbe853c47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79936cc1-8fe8-e268-2af4-8ba8db1605d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Polynomial.abc
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (hsum : a + b + c = 0) :
    (natDegree a + 1 ≤ (radical (a * b * c)).natDegree ∧
      natDegree b + 1 ≤ (radical (a * b * c)).natDegree ∧
      natDegree c + 1 ≤ (radical (a * b * c)).natDegree) ∨
      derivative a = 0 ∧ derivative b = 0 ∧ derivative c = 0 := by
  set w := wronskian a b with wab
  have hbc : IsCoprime b c := by
    rw [add_eq_zero_iff_neg_eq] at hsum
    rw [← hsum, IsCoprime.neg_right_iff]
    convert! IsCoprime.add_mul_left_right hab.symm 1
    rw [mul_one]
  have hsum' : b + c + a = 0 := by rwa [add_rotate] at hsum
  have hca : IsCoprime c a := by
    rw [add_eq_zero_iff_neg_eq] at hsum'
    rw [← hsum', IsCoprime.neg_right_iff]
    convert! IsCoprime.add_mul_left_right hbc.symm 1
    rw [mul_one]
  have wbc : w = wronskian b c := wronskian_eq_of_sum_zero hsum
  have wca : w = wronskian c a := by
    rw [add_rotate] at hsum
    simpa only [← wbc] using wronskian_eq_of_sum_zero hsum
  -- have `divRadical x` dividing `w` for `x = a, b, c`, and use coprimality
  have abc_dr_dvd_w : divRadical (a * b * c) ∣ w := by
    have adr_dvd_w := divRadical_dvd_wronskian_left a b
    have bdr_dvd_w := divRadical_dvd_wronskian_right a b
    have cdr_dvd_w := divRadical_dvd_wronskian_right b c
    rw [← wab] at adr_dvd_w bdr_dvd_w
    rw [← wbc] at cdr_dvd_w
    rw [divRadical_mul (hca.symm.mul_left hbc), divRadical_mul hab]
    exact (hca.divRadical.symm.mul_left hbc.divRadical).mul_dvd
      (hab.divRadical.mul_dvd adr_dvd_w bdr_dvd_w) cdr_dvd_w
  by_cases hw : w = 0
  · right
    rw [hw] at wab wbc
    obtain ⟨ga, gb⟩ := hab.wronskian_eq_zero_iff.mp wab.symm
    obtain ⟨_, gc⟩ := hbc.wronskian_eq_zero_iff.mp wbc.symm
    exact ⟨ga, gb, gc⟩
  · left
    -- use `abc_subcall` three times, using the symmetry in `a, b, c`
    refine ⟨?_, ?_, ?_⟩
    · rw [mul_rotate] at abc_dr_dvd_w ⊢
      apply abc_subcall wbc <;> assumption
    · rw [← mul_rotate] at abc_dr_dvd_w ⊢
      apply abc_subcall wca <;> assumption
    · apply abc_subcall wab <;> assumption
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/MasonStothers/Variant19dbc47f853660e7a83e8764d8a11e066821d40e9af7ad34a5fbf01dbe853c47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/MasonStothers/Variant19dbc47f853660e7a83e8764d8a11e066821d40e9af7ad34a5fbf01dbe853c47.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `967acca6b69e3b16b32665909d96def22f903a37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
