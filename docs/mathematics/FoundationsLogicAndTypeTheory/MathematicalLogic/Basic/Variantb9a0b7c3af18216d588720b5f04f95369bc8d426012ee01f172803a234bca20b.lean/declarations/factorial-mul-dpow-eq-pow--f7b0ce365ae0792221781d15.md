# factorial_mul_dpow_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f81730247930e0610d38ca781b7cb541a7cfab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 213,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9a0b7c3af18216d588720b5f04f95369bc8d426012ee01f172803a234bca20b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f06e7c89-59d5-8c27-116c-a80e14656f54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c01c84f1-2359-acb7-3126-36a94e50fc94",
  "kind": "theorem",
  "lexical_name": "factorial_mul_dpow_eq_pow",
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
  "slug": "factorial-mul-dpow-eq-pow--f7b0ce365ae0792221781d15",
  "source": {
    "blob": "4f81730247930e0610d38ca781b7cb541a7cfab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9a0b7c3af18216d588720b5f04f95369bc8d426012ee01f172803a234bca20b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7b0ce365ae0792221781d15f42db7fd79be6ca19c674b4fe08994889832f227",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9a0b7c3af18216d588720b5f04f95369bc8d426012ee01f172803a234bca20b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c01c84f1-2359-acb7-3126-36a94e50fc94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factorial_mul_dpow_eq_pow {n : ℕ} (ha : a ∈ I) :
    (n ! : A) * hI.dpow n a = a ^ n := by
  induction n with
  | zero => rw [factorial_zero, cast_one, one_mul, pow_zero, hI.dpow_zero ha]
  | succ n ih =>
    rw [factorial_succ, mul_comm (n + 1)]
    nth_rewrite 1 [← (n + 1).choose_one_right]
    rw [← choose_symm_add, cast_mul, mul_assoc,
      ← hI.mul_dpow ha, ← mul_assoc, ih, hI.dpow_one ha, pow_succ, mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9a0b7c3af18216d588720b5f04f95369bc8d426012ee01f172803a234bca20b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantb9a0b7c3af18216d588720b5f04f95369bc8d426012ee01f172803a234bca20b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f81730247930e0610d38ca781b7cb541a7cfab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
