# dvd_appr_sub_appr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b53a3912-5bf2-eee3-fee3-0b5d97798e7e",
  "kind": "theorem",
  "lexical_name": "dvd_appr_sub_appr",
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
  "slug": "dvd-appr-sub-appr--62c404c453d8cf368b0636d1",
  "source": {
    "blob": "3d6e63e6774a1826ab35c35833354a3029a48d17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 338,
    "path": "GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62c404c453d8cf368b0636d13bce2d278a066b284d60b36507056b56b5dd3f36",
  "verification": {
    "reference": "docs/verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b53a3912-5bf2-eee3-fee3-0b5d97798e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 338–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_appr_sub_appr (x : ℤ_[p]) (m n : ℕ) (h : m ≤ n) : p ^ m ∣ x.appr n - x.appr m := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h; clear h
  induction k with
  | zero =>
    simp only [zero_eq, add_zero, le_refl, tsub_eq_zero_of_le, ne_eq, Nat.isUnit_iff, dvd_zero]
  | succ k ih =>
    rw [← add_assoc]
    dsimp [appr]
    split_ifs with h
    · exact ih
    rw [add_comm, add_tsub_assoc_of_le (appr_mono _ (Nat.le_add_right m k))]
    apply dvd_add _ ih
    apply dvd_mul_of_dvd_left
    apply pow_dvd_pow _ (Nat.le_add_right m k)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/RingHoms/Variant2c05b4f4231d06ddb38fd1c369b78cdef7c04be919f8aaef39442e9a52fbce31.lean#L338).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d6e63e6774a1826ab35c35833354a3029a48d17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
