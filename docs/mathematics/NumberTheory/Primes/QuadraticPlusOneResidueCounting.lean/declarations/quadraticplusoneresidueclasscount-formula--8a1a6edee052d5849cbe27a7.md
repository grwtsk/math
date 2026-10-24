# quadraticPlusOneResidueClassCount_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe98649b-d204-cb39-0cb9-fa5269a6ad8a",
  "kind": "theorem",
  "lexical_name": "quadraticPlusOneResidueClassCount_formula",
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
  "slug": "quadraticplusoneresidueclasscount-formula--8a1a6edee052d5849cbe27a7",
  "source": {
    "blob": "bbe7c3452218ba2df97fb4086c983e0a1bbcd741",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 74,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a1a6edee052d5849cbe27a73e664db30b954746aad7fc94bd240d1ee991d04b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe98649b-d204-cb39-0cb9-fa5269a6ad8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticPlusOneResidueClassCount_formula
    {d X a : ℕ} (hd : 0 < d) (ha : a < d) :
    quadraticPlusOneResidueClassCount d X a =
      X / d + quadraticPlusOneRootEndpointTerm d X a := by
  classical
  have hset :
      (Finset.Ioc 0 X).filter (fun n => n ≡ a [MOD d]) =
        ((Finset.range (X + 1)).filter
          (fun n => n ≡ a [MOD d])).erase 0 := by
    ext n
    simp only [Finset.mem_filter, Finset.mem_Ioc,
      Finset.mem_erase, Finset.mem_range, Nat.lt_succ_iff]
    constructor
    · rintro ⟨⟨hn0, hnX⟩, hmod⟩
      exact ⟨by omega, ⟨hnX, hmod⟩⟩
    · rintro ⟨hn0, hnX, hmod⟩
      exact ⟨⟨by omega, hnX⟩, hmod⟩
  have hsuccmod : (X + 1) % d = (X % d + 1) % d :=
    ((Nat.mod_modEq X d).add_right 1).symm
  unfold quadraticPlusOneResidueClassCount
  rw [hset]
  by_cases ha0 : a = 0
  · subst a
    have hmem :
        0 ∈ (Finset.range (X + 1)).filter
          (fun n => n ≡ 0 [MOD d]) := by
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), rfl⟩
    rw [Finset.card_erase_of_mem hmem,
      ← Nat.count_eq_card_filter_range,
      Nat.count_modEq_card (b := X + 1) (r := d) hd]
    unfold quadraticPlusOneRootEndpointTerm
    simp only [lt_self_iff_false, false_and, if_false, Nat.zero_mod]
    have hdiv := Nat.div_add_mod X d
    have hmodlt := Nat.mod_lt X hd
    by_cases hlast : X % d + 1 = d
    · have hrem : (X + 1) % d = 0 := by
        rw [hsuccmod, hlast, Nat.mod_self]
      have hquot : (X + 1) / d = X / d + 1 :=
        Nat.succ_div_of_mod_eq_zero hrem
      simp [hquot, hrem]
    · have hrem : (X + 1) % d = X % d + 1 := by
        rw [hsuccmod, Nat.mod_eq_of_lt (by omega)]
      have hquot : (X + 1) / d = X / d :=
        Nat.succ_div_of_mod_ne_zero (by rw [hrem]; omega)
      simp [hquot, hrem]
  · have hnotmem :
        0 ∉ (Finset.range (X + 1)).filter
          (fun n => n ≡ a [MOD d]) := by
      simp [Nat.ModEq, Nat.mod_eq_of_lt ha, Ne.symm ha0]
    rw [Finset.erase_eq_self.mpr hnotmem,
      ← Nat.count_eq_card_filter_range,
      Nat.count_modEq_card (b := X + 1) (r := d) hd]
    have hdiv := Nat.div_add_mod X d
    have hmodlt := Nat.mod_lt X hd
    have haPos : 0 < a := Nat.pos_of_ne_zero ha0
    unfold quadraticPlusOneRootEndpointTerm
    by_cases hlast : X % d + 1 = d
    · have hrem : (X + 1) % d = 0 := by
        rw [hsuccmod, hlast, Nat.mod_self]
      have hquot : (X + 1) / d = X / d + 1 :=
        Nat.succ_div_of_mod_eq_zero hrem
      have haRem : a ≤ X % d := by omega
      simp [Nat.mod_eq_of_lt ha, hquot, hrem, haPos, haRem]
    · have hrem : (X + 1) % d = X % d + 1 := by
        rw [hsuccmod, Nat.mod_eq_of_lt (by omega)]
      have hquot : (X + 1) / d = X / d :=
        Nat.succ_div_of_mod_ne_zero (by rw [hrem]; omega)
      by_cases haRem : a ≤ X % d
      · have halt : a < X % d + 1 := by omega
        simp [Nat.mod_eq_of_lt ha, hquot, hrem,
          haPos, haRem, halt]
      · have hnlt : ¬ a < X % d + 1 := by omega
        simp [Nat.mod_eq_of_lt ha, hquot, hrem,
          haPos, haRem, hnlt]

/-- The divisor condition is the disjoint sum of its root residue classes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticPlusOneResidueCounting.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe7c3452218ba2df97fb4086c983e0a1bbcd741` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
