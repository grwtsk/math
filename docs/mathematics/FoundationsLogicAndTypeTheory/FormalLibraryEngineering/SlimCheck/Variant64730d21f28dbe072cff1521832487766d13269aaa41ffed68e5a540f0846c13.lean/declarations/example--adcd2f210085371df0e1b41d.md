# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:00cba13bbdf036ff74545ec369f8b9161b1feb53f2b0ae54a0c00602b85e8daa",
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
  "slug": "example--adcd2f210085371df0e1b41d",
  "source": {
    "blob": "9fa2cfe099ebe2d15eef07c2b19dda5f127d73e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant64730d21f28dbe072cff1521832487766d13269aaa41ffed68e5a540f0846c13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:adcd2f210085371df0e1b41da7fb201b683b9a2451d13cef3208f37808985866",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant64730d21f28dbe072cff1521832487766d13269aaa41ffed68e5a540f0846c13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:00cba13bbdf036ff74545ec369f8b9161b1feb53f2b0ae54a0c00602b85e8daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : true := by
  have : ∀ i j : ℕ, i < j → j < i
  success_if_fail_with_msg "
===================
Found problems!
i := 0
j := 1
guard: 0 < 1
issue: 1 < 0 does not hold
(0 shrinks)
-------------------
"
    slim_check (config := { randomSeed := some 257 })
  admit
  trivial

-- example : true := by
--   have : (∀ x : ℕ, 2 ∣ x → x < 100)
--   success_if_fail_with_msg
--   "
-- ===================
-- Found problems!

-- x := 104
-- issue: 104 < 100 does not hold
-- (2 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (xs : List ℕ) (w : ∃ x ∈ xs, x < 3) : true := by
--   have : ∀ y ∈ xs, y < 5
--   success_if_fail_with_msg
-- "
-- ===================
-- Found problems!

-- xs := [5, 5, 0, 1]
-- x := 0
-- y := 5
-- issue: 5 < 5 does not hold
-- (5 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (x : ℕ) (h : 2 ∣ x) : true := by
--   have : x < 100
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- x := 104
-- issue: 104 < 100 does not hold
-- (2 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (α : Type) (xs ys : List α) : true := by
--   have : xs ++ ys = ys ++ xs
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- α := ℤ
-- xs := [0]
-- ys := [1]
-- issue: [0, 1] = [1, 0] does not hold
-- (4 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant64730d21f28dbe072cff1521832487766d13269aaa41ffed68e5a540f0846c13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant64730d21f28dbe072cff1521832487766d13269aaa41ffed68e5a540f0846c13.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fa2cfe099ebe2d15eef07c2b19dda5f127d73e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
