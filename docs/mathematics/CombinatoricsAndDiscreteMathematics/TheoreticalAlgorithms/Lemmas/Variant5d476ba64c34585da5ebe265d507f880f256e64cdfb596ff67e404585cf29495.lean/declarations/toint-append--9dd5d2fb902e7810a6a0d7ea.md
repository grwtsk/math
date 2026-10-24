# toInt_append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2812,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1ab9d13f-85f0-4999-d160-57f8954518d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2f3e125-f874-9aaa-0107-165dba194859",
  "kind": "theorem",
  "lexical_name": "toInt_append",
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
  "slug": "toint-append--9dd5d2fb902e7810a6a0d7ea",
  "source": {
    "blob": "05610358a70a3b8d66b81c396a7fc44a13f11d3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2836,
    "line": 2812,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dd5d2fb902e7810a6a0d7eab69e11e368508254c04d315119a340ea1459983a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2f3e125-f874-9aaa-0107-165dba194859`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2812–2836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toInt_append {x : BitVec n} {y : BitVec m} :
    (x ++ y).toInt = if n == 0 then y.toInt else (2 ^ m) * x.toInt + y.toNat := by
  by_cases n0 : n = 0
  · subst n0
    simp [BitVec.eq_nil x, BitVec.toInt]
  · by_cases m0 : m = 0
    · subst m0
      simp [BitVec.eq_nil y, n0]
    · simp only [beq_iff_eq, n0, ↓reduceIte]
      by_cases x.msb
      case pos h =>
        rw [toInt_eq_msb_cond]
        simp only [show ((x ++ y).msb = true) by simp [msb_append, n0, h], ↓reduceIte, toNat_append,
          Nat.pow_add, ← Nat.shiftLeft_eq, toInt_eq_msb_cond, h]
        rw_mod_cast [← Nat.shiftLeft_add_eq_or_of_lt (by omega), Nat.shiftLeft_eq, Nat.shiftLeft_eq,
          Nat.mul_comm, Int.mul_sub]
        norm_cast
        rw [Int.natCast_add, Nat.mul_comm (n := 2 ^ n)]
        omega
      case neg h =>
        rw [Bool.not_eq_true] at h
        rw [toInt_eq_toNat_of_msb h, toInt_eq_toNat_of_msb (by simp [msb_append, n0, h])]
        rw_mod_cast [toNat_append, ← Nat.shiftLeft_add_eq_or_of_lt (by omega), Nat.shiftLeft_eq,
          Nat.mul_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant5d476ba64c34585da5ebe265d507f880f256e64cdfb596ff67e404585cf29495.lean#L2812).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05610358a70a3b8d66b81c396a7fc44a13f11d3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
