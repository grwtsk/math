# lt_of_testBit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e8b670b-7e82-0340-e95b-3d34af8aa095",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dd5c271d-e6c3-ba19-71c4-d677a3f4945f",
  "kind": "theorem",
  "lexical_name": "lt_of_testBit",
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
  "slug": "lt-of-testbit--1562e37abab22c4ea6d0d6ed",
  "source": {
    "blob": "4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1562e37abab22c4ea6d0d6ed74b4a681a882db1c6ffb5ca66a97d7c6162ec4c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd5c271d-e6c3-ba19-71c4-d677a3f4945f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lt_of_testBit {n m : ℕ} (i : ℕ) (hn : testBit n i = false) (hm : testBit m i = true)
    (hnm : ∀ j, i < j → testBit n j = testBit m j) : n < m := by
  induction' n using Nat.binaryRec with b n hn' generalizing i m
  · contrapose! hm
    rw [le_zero_iff] at hm
    simp [hm]
  induction' m using Nat.binaryRec with b' m hm' generalizing i
  · exact False.elim (Bool.ff_ne_tt ((zero_testBit i).symm.trans hm))
  by_cases hi : i = 0
  · subst hi
    simp only [testBit_zero] at hn hm
    have : n = m :=
      eq_of_testBit_eq fun i => by convert hnm (i + 1) (Nat.zero_lt_succ _) using 1
      <;> rw [testBit_succ]
    rw [hn, hm, this, bit_false, bit_true, bit0_val, bit1_val]
    exact lt_add_one _
  · obtain ⟨i', rfl⟩ := exists_eq_succ_of_ne_zero hi
    simp only [testBit_succ] at hn hm
    have :=
      hn' _ hn hm fun j hj => by convert hnm j.succ (succ_lt_succ hj) using 1 <;> rw [testBit_succ]
    cases b <;> cases b'
    <;> simp only [bit_false, bit_true, bit0_val n, bit1_val n, bit0_val m, bit1_val m]
    <;> linarith only [this]
#align nat.lt_of_test_bit Nat.lt_of_testBit

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Bitwise/Variant553df2be8eb6e7d695676bc030b689948ff389b4e0dada0ad2cbcc9fb7fc98cd.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4883bdbf3c6ad75ad0bc3373a00b481e3ecdac3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
