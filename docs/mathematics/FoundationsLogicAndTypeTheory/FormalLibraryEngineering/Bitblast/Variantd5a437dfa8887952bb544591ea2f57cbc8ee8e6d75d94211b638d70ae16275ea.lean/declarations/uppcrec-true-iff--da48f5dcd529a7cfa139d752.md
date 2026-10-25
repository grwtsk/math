# uppcRec_true_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2195,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f473bdb-9232-31f9-dc0c-39c4929fe81b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a050e397-9466-0c44-6451-6904d0db3636",
  "kind": "theorem",
  "lexical_name": "uppcRec_true_iff",
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
  "slug": "uppcrec-true-iff--da48f5dcd529a7cfa139d752",
  "source": {
    "blob": "50b69a68eefa1987f13d13b2f6ef1b1314e79981",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2230,
    "line": 2195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da48f5dcd529a7cfa139d752341674c5dad9bf9a3473b8c3f7d7e6471682f26a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a050e397-9466-0c44-6451-6904d0db3636`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2195–2230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uppcRec_true_iff (x : BitVec w) (s : Nat) (h : s < w) :
    uppcRec x s h ↔ 2 ^ (w - 1 - (s - 1)) ≤ x.toNat := by
  rcases w with _|w
  · omega
  · induction s
    · case succ.zero =>
      simp only [uppcRec, msb_eq_true_iff_two_mul_ge, Nat.pow_add, Nat.pow_one,
        Nat.mul_comm (2 ^ w) 2, ge_iff_le, Nat.add_one_sub_one, zero_le, Nat.sub_eq_zero_of_le,
        Nat.sub_zero]
      apply Nat.mul_le_mul_left_iff (by omega)
    · case succ.succ s ihs =>
      simp only [uppcRec, or_eq_true, ihs, Nat.add_one_sub_one]
      have := Nat.pow_le_pow_of_le (a := 2) ( n := (w - s)) (m := (w - (s - 1))) (by omega) (by omega)
      constructor
      · intro h'
        rcases h' with h'|h'
        · apply ge_two_pow_of_testBit h'
        · omega
      · intro h'
        by_cases hbit: x[w - s]
        · simp [hbit]
        · have := BitVec.le_toNat_iff_getLsbD_eq_true (x := x) (i := w - s) (by omega)
          simp only [h', true_iff] at this
          obtain ⟨k, hk⟩ := this
          by_cases hwk : w - s + k < w + 1
          · by_cases hk' : 0 < k
            · have hle := ge_two_pow_of_testBit hk
              have hpowle := Nat.pow_le_pow_of_le (a := 2) ( n := (w - (s - 1))) (m := (w - s + k)) (by omega) (by omega)
              omega
            · rw [getLsbD_eq_getElem (by omega)] at hk
              simp [hbit, show k = 0 by omega] at hk
          · simp_all

/--
  Conjunction for fast umulOverflow circuit
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bitblast/Variantd5a437dfa8887952bb544591ea2f57cbc8ee8e6d75d94211b638d70ae16275ea.lean#L2195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50b69a68eefa1987f13d13b2f6ef1b1314e79981` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
