# condition_two_mul_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e1bedb312fd4d399921a0ffeb0cf1d01b7304df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 43,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13bd5eef-d5a9-7da9-0757-452b093928a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bbe380c6-f298-eb9f-bdba-59a9e6ffbd92",
  "kind": "lemma",
  "lexical_name": "condition_two_mul_int",
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
  "slug": "condition-two-mul-int--be8b0e628cf1acb3c06f1b48",
  "source": {
    "blob": "4e1bedb312fd4d399921a0ffeb0cf1d01b7304df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 43,
    "path": "GRWTSK/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be8b0e628cf1acb3c06f1b489a3d40caa7d90fba67037078bc9033e48cf6936f",
  "verification": {
    "reference": "docs/verification/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbe380c6-f298-eb9f-bdba-59a9e6ffbd92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma condition_two_mul_int (m : ℤ) : Condition (2 * m) := by
  rintro n -
  suffices (n : ℤ) ∣ ∑ i ∈ Finset.Icc 0 n, ⌊((i * (2 * m) : ℤ) : ℝ)⌋ by
    rw [← insert_Icc_add_one_left_eq_Icc n.zero_le, sum_insert_zero (by simp)] at this
    exact_mod_cast this
  simp_rw [Int.floor_intCast, ← sum_mul, ← Ico_succ_right_eq_Icc, ← range_eq_Ico, ← mul_assoc]
  apply dvd_mul_of_dvd_left
  rw [← Nat.cast_sum, ← Nat.cast_ofNat (n := 2), ← Nat.cast_mul, Finset.sum_range_id_mul_two]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Imo2024Q1/Variantdd5df898216b403c4fc8dfbac2f35306b1bddde4ab3e733f47f874ee9252b3e7.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e1bedb312fd4d399921a0ffeb0cf1d01b7304df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
