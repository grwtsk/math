# advance_at_success

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b53ce5278fbe4aaa23bda292ebffcedde8b0f4c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 143,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransactionOrchestration/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0803fee9-da5f-0490-8507-6b1861c4fa66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:13d754b4-9f53-0d16-27d4-3df998b4a463",
  "kind": "theorem",
  "lexical_name": "advance_at_success",
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
  "slug": "advance-at-success--1ba36a9cafe80d31b65bb347",
  "source": {
    "blob": "b53ce5278fbe4aaa23bda292ebffcedde8b0f4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 143,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ba36a9cafe80d31b65bb34757af51c1d37fbb18fdc4e7c846558003e951a444",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13d754b4-9f53-0d16-27d4-3df998b4a463`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem advance_at_success (directories writes completed : Nat)
    (before : completed < budget directories writes) :
    advance (cursorAt directories writes completed) true = cursorAt directories writes (completed + 1) := by
  unfold budget at before
  by_cases zero : completed = 0
  · subst completed
    by_cases dirs : 0 < directories
    · have next : 1 ≤ directories := by omega
      simp_all [cursorAt, advance, terminal, start]
    · have noDirs : directories = 0 := by omega
      subst directories
      by_cases copies : 0 < writes
      · have next : 1 ≤ writes := by omega
        simp_all [cursorAt, advance, terminal, start]
      · have noWrites : writes = 0 := by omega
        subst writes
        rfl
  · by_cases dirs : completed ≤ directories
    · have left : cursorAt directories writes completed =
          ⟨.directory, completed - 1, 0, directories, writes⟩ := by
        simp only [cursorAt, if_neg zero, if_pos dirs]
      rw [left]
      by_cases last : completed = directories
      · subst completed
        have previous : directories - 1 + 1 = directories := by omega
        have next : ¬directories + 1 ≤ directories := by omega
        by_cases copies : 0 < writes
        · have nextWrite : directories + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
        · have noWrites : writes = 0 := by omega
          subst writes
          simp_all [cursorAt, advance, terminal]
      · have next : completed + 1 ≤ directories := by omega
        have previous : completed - 1 + 1 = completed := by omega
        simp_all [cursorAt, advance, terminal]
    · by_cases copies : completed ≤ directories + writes
      · have left : cursorAt directories writes completed =
            ⟨.write, directories, completed - directories - 1, directories, writes⟩ := by
          simp only [cursorAt, if_neg zero, if_neg dirs, if_pos copies]
        rw [left]
        by_cases last : completed = directories + writes
        · subst completed
          have previous : writes - 1 + 1 = writes := by omega
          have nextDirs : ¬directories + writes + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega
        · have nextDirs : ¬completed + 1 ≤ directories := by omega
          have nextCopies : completed + 1 ≤ directories + writes := by omega
          have previous : completed - directories - 1 + 1 ≠ writes := by omega
          have nextIndex : completed + 1 - directories - 1 = completed - directories - 1 + 1 := by omega
          simp_all [cursorAt, advance, terminal]
      · by_cases readback : completed = directories + writes + 1
        · have left : cursorAt directories writes completed =
              ⟨.readback, directories, writes, directories, writes⟩ := by
            simp only [cursorAt, if_neg zero, if_neg dirs, if_neg copies, if_pos readback]
          rw [left]
          subst completed
          have nextDirs : ¬directories + writes + 1 + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 1 + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega
        · have certificate : completed = directories + writes + 2 := by omega
          have left : cursorAt directories writes completed =
              ⟨.certificate, directories, writes, directories, writes⟩ := by
            simp only [cursorAt, if_neg zero, if_neg dirs, if_neg copies, if_neg readback, if_pos certificate]
          rw [left]
          subst completed
          have nextDirs : ¬directories + writes + 2 + 1 ≤ directories := by omega
          have nextCopies : ¬directories + writes + 2 + 1 ≤ directories + writes := by omega
          simp_all [cursorAt, advance, terminal]
          all_goals split_ifs
          all_goals simp_all
          all_goals omega


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant6005deb756b6e95916063c305a0c448f4a8c980b9b6bc6786f523d84890fc5d9.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b53ce5278fbe4aaa23bda292ebffcedde8b0f4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
