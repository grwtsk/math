# subsingleton_floorRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b603c83c-a497-4e66-0e1a-12facaab4ec3",
  "kind": "theorem",
  "lexical_name": "subsingleton_floorRing",
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
  "slug": "subsingleton-floorring--582eca8a2132c986159c6135",
  "source": {
    "blob": "e71b4f2fe8056cfbae8dc667b485a2eec3ca68fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1788,
    "line": 1723,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc84c474a34254d5685ebafff6a5883d9fc5f16edd259b3d9c7eec12b03d13216.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:582eca8a2132c986159c613562cc2dd659eec3fa0b0a811d269cb95c208873b7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc84c474a34254d5685ebafff6a5883d9fc5f16edd259b3d9c7eec12b03d13216.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b603c83c-a497-4e66-0e1a-12facaab4ec3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1723–1788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subsingleton_floorRing {α} [LinearOrderedRing α] : Subsingleton (FloorRing α) := by
  refine' ⟨fun H₁ H₂ => _⟩
  have : H₁.floor = H₂.floor :=
    funext fun a => (H₁.gc_coe_floor.u_unique H₂.gc_coe_floor) fun _ => rfl
  have : H₁.ceil = H₂.ceil := funext fun a => (H₁.gc_ceil_coe.l_unique H₂.gc_ceil_coe) fun _ => rfl
  cases H₁; cases H₂; congr
#align subsingleton_floor_ring subsingleton_floorRing

-- Porting note: the `positivity` extensions for `Int.floor`, `Int.ceil`, `ceil` are TODO for now

-- namespace Tactic

-- open Positivity

-- private theorem int_floor_nonneg [LinearOrderedRing α] [FloorRing α] {a : α} (ha : 0 ≤ a) :
--     0 ≤ ⌊a⌋ :=
--   Int.floor_nonneg.2 ha
-- #align tactic.int_floor_nonneg tactic.int_floor_nonneg

-- private theorem int_floor_nonneg_of_pos [LinearOrderedRing α] [FloorRing α] {a : α}
--     (ha : 0 < a) :
--     0 ≤ ⌊a⌋ :=
--   int_floor_nonneg ha.le
-- #align tactic.int_floor_nonneg_of_pos tactic.int_floor_nonneg_of_pos

-- /-- Extension for the `positivity` tactic: `Int.floor` is nonnegative if its input is. -/
-- @[positivity]
-- unsafe def positivity_floor : expr → tactic strictness
--   | q(⌊$(a)⌋) => do
--     let strictness_a ← core a
--     match strictness_a with
--       | positive p => nonnegative <$> mk_app `` int_floor_nonneg_of_pos [p]
--       | nonnegative p => nonnegative <$> mk_app `` int_floor_nonneg [p]
--       | _ => failed
--   | e => pp e >>= fail ∘ format.bracket "The expression `" "` is not of the form `⌊a⌋`"
-- #align tactic.positivity_floor tactic.positivity_floor

-- private theorem nat_ceil_pos [LinearOrderedSemiring α] [FloorSemiring α] {a : α} :
--     0 < a → 0 < ⌈a⌉₊ :=
--   Nat.ceil_pos.2
-- #align tactic.nat_ceil_pos tactic.nat_ceil_pos

-- private theorem int_ceil_pos [LinearOrderedRing α] [FloorRing α] {a : α} : 0 < a → 0 < ⌈a⌉ :=
--   Int.ceil_pos.2
-- #align tactic.int_ceil_pos tactic.int_ceil_pos

-- /-- Extension for the `positivity` tactic: `ceil` and `Int.ceil` are positive/nonnegative if
-- their input is. -/
-- @[positivity]
-- unsafe def positivity_ceil : expr → tactic strictness
--   | q(⌈$(a)⌉₊) => do
--     let positive p ← core a
--     -- We already know `0 ≤ n` for all `n : ℕ`
--         positive <$>
--         mk_app `` nat_ceil_pos [p]
--   | q(⌈$(a)⌉) => do
--     let strictness_a ← core a
--     match strictness_a with
--       | positive p => positive <$> mk_app `` int_ceil_pos [p]
--       | nonnegative p => nonnegative <$> mk_app `` Int.ceil_nonneg [p]
--       | _ => failed
--   | e => pp e >>=
--       fail ∘ format.bracket "The expression `" "` is not of the form `⌈a⌉₊` nor `⌈a⌉`"
-- #align tactic.positivity_ceil tactic.positivity_ceil

-- end Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc84c474a34254d5685ebafff6a5883d9fc5f16edd259b3d9c7eec12b03d13216.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Floor/Variantc84c474a34254d5685ebafff6a5883d9fc5f16edd259b3d9c7eec12b03d13216.lean#L1723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e71b4f2fe8056cfbae8dc667b485a2eec3ca68fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
