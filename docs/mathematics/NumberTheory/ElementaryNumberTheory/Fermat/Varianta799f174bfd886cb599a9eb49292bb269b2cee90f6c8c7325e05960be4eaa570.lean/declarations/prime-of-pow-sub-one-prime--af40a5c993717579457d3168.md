# prime_of_pow_sub_one_prime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88758ac0-0543-ab24-ecb6-baa742d65bcb",
  "kind": "theorem",
  "lexical_name": "prime_of_pow_sub_one_prime",
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
  "slug": "prime-of-pow-sub-one-prime--af40a5c993717579457d3168",
  "source": {
    "blob": "0a4cc10eaec9d5557201350faaf5ce9cbc315c11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 206,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af40a5c993717579457d31680a5e925344395d10c14c4f12f3464019c82e5570",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88758ac0-0543-ab24-ecb6-baa742d65bcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_of_pow_sub_one_prime {a n : ℕ} (hn1 : n ≠ 1) (hP : (a ^ n - 1).Prime) :
    a = 2 ∧ n.Prime := by
  have han1 : 1 < a ^ n := tsub_pos_iff_lt.mp hP.pos
  have hn0 : n ≠ 0 := fun h ↦ (h ▸ han1).ne' rfl
  have ha1 : 1 < a := (Nat.one_lt_pow_iff hn0).mp han1
  have ha0 : 0 < a := one_pos.trans ha1
  have ha2 : a = 2 := by
    contrapose! hn1
    let h := nat_sub_dvd_pow_sub_pow a 1 n
    rw [one_pow, hP.dvd_iff_eq (mt (Nat.sub_eq_iff_eq_add ha1.le).mp hn1), eq_comm] at h
    exact (pow_eq_self_iff ha1).mp (Nat.sub_one_cancel ha0 (pow_pos ha0 n) h).symm
  subst ha2
  refine ⟨rfl, Nat.prime_def.mpr ⟨(two_le_iff n).mpr ⟨hn0, hn1⟩, fun d hdn ↦ ?_⟩⟩
  have hinj : ∀ x y, 2 ^ x - 1 = 2 ^ y - 1 → x = y :=
    fun x y h ↦ Nat.pow_right_injective le_rfl (sub_one_cancel (pow_pos ha0 x) (pow_pos ha0 y) h)
  let h := nat_sub_dvd_pow_sub_pow (2 ^ d) 1 (n / d)
  rw [one_pow, ← pow_mul, Nat.mul_div_cancel' hdn] at h
  exact (hP.eq_one_or_self_of_dvd (2 ^ d - 1) h).imp (hinj d 1) (hinj d n)

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Fermat/Varianta799f174bfd886cb599a9eb49292bb269b2cee90f6c8c7325e05960be4eaa570.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a4cc10eaec9d5557201350faaf5ce9cbc315c11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
