# ascFactorial_mul_ascFactorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bc6fc9de9a8362da95f551c29d680ab5c17cdcd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:821acada-eb73-77c6-3763-94e382f5cf94",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:08b815e0-7982-6fce-f808-06aedc69497b",
  "kind": "theorem",
  "lexical_name": "ascFactorial_mul_ascFactorial",
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
  "slug": "ascfactorial-mul-ascfactorial--37bd432f44c2dcc8d13aeaaf",
  "source": {
    "blob": "0bc6fc9de9a8362da95f551c29d680ab5c17cdcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 246,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37bd432f44c2dcc8d13aeaaf445a0b68e2a71765236dc73afece6fa105b6cd6b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08b815e0-7982-6fce-f808-06aedc69497b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ascFactorial_mul_ascFactorial (n l k : ℕ) :
    n.ascFactorial l * (n + l).ascFactorial k = n.ascFactorial (l + k) := by
  cases n with
  | zero =>
    cases l
    · simp only [ascFactorial_zero, Nat.add_zero, Nat.one_mul, Nat.zero_add]
    · simp only [Nat.add_right_comm, zero_ascFactorial, Nat.zero_add, Nat.zero_mul]
  | succ n' =>
    apply Nat.mul_left_cancel (factorial_pos n')
    simp only [Nat.add_assoc, ← Nat.mul_assoc, factorial_mul_ascFactorial]
    rw [Nat.add_comm 1 l, ← Nat.add_assoc, factorial_mul_ascFactorial, Nat.add_assoc]

/-- Avoid in favor of `Nat.factorial_mul_ascFactorial` if you can. ℕ-division isn't worth it. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant7e74e5fe77931379299dc2f05ee98e7ede1cda2c58f3586cf5ef4884d989d6c3.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bc6fc9de9a8362da95f551c29d680ab5c17cdcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
