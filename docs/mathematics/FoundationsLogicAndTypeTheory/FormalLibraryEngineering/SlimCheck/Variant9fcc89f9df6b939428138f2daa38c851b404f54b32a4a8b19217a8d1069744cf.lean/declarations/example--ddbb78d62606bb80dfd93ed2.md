# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:50af3d4d5e6add83c2e1026acce0155cfbb1634ae0ecf00ace7b0fa8ebdefbc5",
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
  "slug": "example--ddbb78d62606bb80dfd93ed2",
  "source": {
    "blob": "1a97f77bef376d6a5b262119fc3fa6a99f8d1322",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 102,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ddbb78d62606bb80dfd93ed2ff3c976940769df8a44e1a2cc5a57245b7a3d523",
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

Occurrence: `declaration:50af3d4d5e6add83c2e1026acce0155cfbb1634ae0ecf00ace7b0fa8ebdefbc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : true := by
  have : ∀ n : ℕ, n = n
  · intro n
    cases n
    · slim_check (config := { randomSeed := some 257, quiet := true })
    · rfl
    -- success
  trivial

open Function SlimCheck

-- Porting note: the "small" functor provided in mathlib3's `Sampleable.lean` was not ported,
-- so we should not expect this to work.
-- example (f : ℤ → ℤ) (h : Injective f) : true := by
--   have : Monotone (f ∘ small.mk)
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- f := [2 ↦ 3, 3 ↦ 9, 4 ↦ 6, 5 ↦ 4, 6 ↦ 2, 8 ↦ 5, 9 ↦ 8, x ↦ x]
-- x := 3
-- y := 4
-- guard: 3 ≤ 4 (by construction)
-- issue: 9 ≤ 6 does not hold
-- (5 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (f : ℤ → ℤ) (h : Injective f) (g : ℤ → ℤ) (h : Injective g) (i) : true := by
--   have : f i = g i
--   success_if_fail_with_msg
-- "
-- ===================
-- Found problems!

-- f := [x ↦ x]
-- g := [1 ↦ 2, 2 ↦ 1, x ↦ x]
-- i := 1
-- issue: 1 = 2 does not hold
-- (5 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (f : ℤ → ℤ) (h : Injective f) : true := by
--   have : Monotone f
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- f := [2 ↦ 3, 3 ↦ 9, 4 ↦ 6, 5 ↦ 4, 6 ↦ 2, 8 ↦ 5, 9 ↦ 8, x ↦ x]
-- x := 3
-- y := 4
-- guard: 3 ≤ 4 (by construction)
-- issue: 9 ≤ 6 does not hold
-- (5 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (f : ℤ → ℤ) : true := by
--   have : Injective f
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- f := [_ ↦ 0]
-- x := 0
-- y := -1
-- guard: 0 = 0
-- issue: 0 = -1 does not hold
-- (0 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- example (f : ℤ → ℤ) : true := by
--   have : Monotone f
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- f := [-6 ↦ 97, 0 ↦ 0, _ ↦ 4]
-- x := -6
-- y := -2
-- guard: -6 ≤ -2 (by construction)
-- issue: 97 ≤ 4 does not hold
-- (5 shrinks)
-- -------------------
-- "
--     slim_check (config := { randomSeed := some 257 })
--   admit
--   trivial

-- Porting note: In Lean 4, we have Array.qsort, not List.qsort, so this test will need modifying.
-- example (xs ys : List ℤ) (h : xs ~ ys) : true := by
--   have : List.qsort (fun x y => x ≠ y) xs = List.qsort (fun x y => x ≠ y) ys
--   success_if_fail_with_msg
--     "
-- ===================
-- Found problems!

-- xs := [0, 1]
-- ys := [1, 0]
-- guard: [0, 1] ~ [1, 0] (by construction)
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SlimCheck/Variant9fcc89f9df6b939428138f2daa38c851b404f54b32a4a8b19217a8d1069744cf.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a97f77bef376d6a5b262119fc3fa6a99f8d1322` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
