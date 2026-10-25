# Nat.one_le_cast_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b171e6334c5a724645c05e9d1d0bec59fa079f64",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c3/c34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60ad0938-3789-b0a6-f0f1-ff739e17dabe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00b0f15d-ed5f-6451-ad63-d044d4354064",
  "kind": "lemma",
  "lexical_name": "Nat.one_le_cast_of_le",
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
  "slug": "nat-one-le-cast-of-le--0a8b4318268e4dcc5144ccb8",
  "source": {
    "blob": "b171e6334c5a724645c05e9d1d0bec59fa079f64",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 114,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a8b4318268e4dcc5144ccb8bada41a5f9a4b8b864b3ec888138b765864a0aad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00b0f15d-ed5f-6451-ad63-d044d4354064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Nat.one_le_cast_of_le {α : Type} [AddCommMonoidWithOne α] [PartialOrder α]
    [AddLeftMono α] [ZeroLEOneClass α]
    [CharZero α] {n : ℕ} : 1 ≤ n → 1 ≤ (n : α) :=
  Nat.one_le_cast.mpr

/-!
### Apply rules for `bound`

Most `bound` lemmas are registered in-place where the lemma is declared. These are only the lemmas
that do not require additional imports within this file.
-/

-- Reflexivity
attribute [bound] le_refl

-- 0 ≤, 0 <
attribute [bound] sq_nonneg Nat.cast_nonneg abs_nonneg Nat.zero_lt_succ pow_pos pow_nonneg
  sub_nonneg_of_le sub_pos_of_lt inv_nonneg_of_nonneg inv_pos_of_pos tsub_pos_of_lt mul_pos
  mul_nonneg div_pos div_nonneg add_nonneg

-- 1 ≤, ≤ 1
attribute [bound] Nat.one_le_cast_of_le one_le_mul_of_one_le_of_one_le

-- ≤
attribute [bound] le_abs_self neg_abs_le neg_le_neg tsub_le_tsub_right mul_le_mul_of_nonneg_left
  mul_le_mul_of_nonneg_right le_add_of_nonneg_right le_add_of_nonneg_left le_mul_of_one_le_right
  mul_le_of_le_one_right sub_le_sub add_le_add mul_le_mul

-- <
attribute [bound] Nat.cast_pos_of_pos neg_lt_neg sub_lt_sub_left sub_lt_sub_right add_lt_add_left
  add_lt_add_right mul_lt_mul_left_of_pos_of_lt mul_lt_mul_right_of_pos_of_lt

-- min and max
attribute [bound] min_le_right min_le_left le_max_left le_max_right le_min max_le lt_min max_lt

-- Memorize a few constants to avoid going to `norm_num`
attribute [bound] zero_le_one zero_lt_one zero_le_two zero_lt_two

/-!
### Forward rules for `bound`
-/

-- Bound applies `le_of_lt` to all hypotheses
attribute [bound_forward] le_of_lt

/-!
### Guessing rules: when we don't know how to recurse
-/

section Guessing

variable {α : Type} [LinearOrder α] {a b c : α}

-- `min` and `max` guessing lemmas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variantc34b92401c766120ae2a2c84ccff403e0d4a4b695e344fd2dcfef6e8e9f64a00.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b171e6334c5a724645c05e9d1d0bec59fa079f64` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
