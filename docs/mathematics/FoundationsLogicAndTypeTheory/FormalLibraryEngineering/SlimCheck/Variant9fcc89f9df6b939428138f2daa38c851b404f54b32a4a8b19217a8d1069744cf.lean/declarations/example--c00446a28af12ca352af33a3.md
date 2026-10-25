# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a414543e30954293ff70f56e11e640400b330bb1d635a218a7eaa208146989c1",
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
  "slug": "example--c00446a28af12ca352af33a3",
  "source": {
    "blob": "1a97f77bef376d6a5b262119fc3fa6a99f8d1322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c00446a28af12ca352af33a35fea5990ce9faffafe3986970299c0f82083d7be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a414543e30954293ff70f56e11e640400b330bb1d635a218a7eaa208146989c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–94.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a97f77bef376d6a5b262119fc3fa6a99f8d1322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
