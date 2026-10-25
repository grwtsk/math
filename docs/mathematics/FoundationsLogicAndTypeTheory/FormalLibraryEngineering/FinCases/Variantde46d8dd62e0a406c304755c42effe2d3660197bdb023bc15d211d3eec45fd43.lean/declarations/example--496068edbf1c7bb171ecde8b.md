# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f63fc2cd61a61551a84b0b1be8a163e663db545b4468db84658d1bbdaa6ef2b",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--496068edbf1c7bb171ecde8b",
  "source": {
    "blob": "78b5dfa7c9b2c0d85502b7c9e89f20ec7def1709",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:496068edbf1c7bb171ecde8b9c79f6a8eb01b626dd30ae86ce0f12c0b789d89d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f63fc2cd61a61551a84b0b1be8a163e663db545b4468db84658d1bbdaa6ef2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x2 : Fin 2) (x3 : Fin 3) (n : Nat) (y : Fin n) : x2.val * x3.val = x3.val * x2.val := by
  fin_cases x2 <;> fin_cases x3
  fail_if_success
    fin_cases y
  all_goals rfl

-- example (x : ℕ) (h : x ∈ [2,3,5,7]) : True := by
--   fail_if_success
--     fin_cases h with [3,3,5,7]
--   trivial

-- example (x : List Nat) (h : x ∈ [[1],[2]]) : x.length = 1 := by
--   fin_cases h with [[1],[1+1]]
--   · simp
--   · guard_target = [1 + 1].length = 1
--     simp

--  -- testing that `with` arguments are elaborated with respect to the expected type:
-- example (x : Int) (h : x ∈ ([2,3] : List Int)) : x = 2 ∨ x = 3 := by
--   fin_cases h with [2,3]
--   all_goals simp

-- example (n : ℕ) (h : n % 3 ∈ [0,1]) : True := by
--   fin_cases h
--   · guard_hyp h : n % 3 = 0
--     trivial
--   · guard_hyp h : n % 3 = 1
--     trivial

-- instance (n : ℕ) : Decidable (Nat.Prime n) := decidablePrime_1 n
-- example (x : ℕ) (h : x ∈ (List.range 10).filter Nat.prime) : x = 2 ∨ x = 3 ∨ x = 5 ∨ x = 7 := by
--   fin_cases h <;> decide

-- open Equiv.Perm
-- example (x : (Σ (a : Fin 4), Fin 4)) (h : x ∈ finPairsLT 4) : x.1.val < 4 := by
--   fin_cases h; simp
--   any_goals exact dec_trivial

-- /-
-- In some circumstances involving `let`,
-- the temporary hypothesis that `fin_cases` creates does not get deleted.
-- We test that this is correctly named and that the name can be changed.

-- Note: after `fin_cases`, we have `this : (a : Fin 3) = (0 : Fin (2 + 1))`
-- for some reason. I don't know why, and it complicates the test.
-- -/
-- example (f : ℕ → Fin 3) : true := by
--   let a := f 3
--   fin_cases a
--   guard_hyp a := f 3
--   guard_hyp this : a = (0 : Fin (2 + 1))
--   trivial; trivial

--   let b := f 2
--   fin_cases b using what
--   guard_hyp what : b = (0 : Fin (2 + 1))

--   all_goals trivial

-- /-
-- The behavior above can be worked around with `fin_cases with`.
-- -/
-- example (f : ℕ → Fin 3) : true := by
--   let a := f 3
--   fin_cases a with [0, 1, 2]
--   guard_hyp a := f 3
--   guard_hyp this : a = 0
--   trivial
--   guard_hyp this : a = 1
--   trivial
--   guard_hyp this : a = 2
--   let b := f 2
--   fin_cases b with [0, 1, 2] using what
--   guard_hyp what : b = 0
--   all_goals trivial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FinCases/Variantde46d8dd62e0a406c304755c42effe2d3660197bdb023bc15d211d3eec45fd43.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78b5dfa7c9b2c0d85502b7c9e89f20ec7def1709` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
