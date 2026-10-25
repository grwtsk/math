# extend_function_of_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2ca8f23-90f4-7145-77d4-b5d1511bb296",
  "kind": "theorem",
  "lexical_name": "extend_function_of_lt",
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
  "slug": "extend-function-of-lt--ad5c34a45a3403c2bcba9ad3",
  "source": {
    "blob": "d113b35b3d19c5d27cea94671fea561b0543b5e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1456,
    "line": 1218,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad5c34a45a3403c2bcba9ad32c4a57d992310371b9cf2a3c9c196a57c3198e4a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ca8f23-90f4-7145-77d4-b5d1511bb296`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1456.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem extend_function_of_lt {α β : Type*} {s : Set α} (f : s ↪ β) (hs : #s < #α)
    (h : Nonempty (α ≃ β)) : ∃ g : α ≃ β, ∀ x : s, g x = f x := by
  cases fintypeOrInfinite α
  · exact extend_function_finite f h
  · apply extend_function f
    cases' id h with g
    haveI := Infinite.of_injective _ g.injective
    rw [← lift_mk_eq'] at h ⊢
    rwa [mk_compl_of_infinite s hs, mk_compl_of_infinite]
    rwa [← lift_lt, mk_range_eq_of_injective f.injective, ← h, lift_lt]
#align cardinal.extend_function_of_lt Cardinal.extend_function_of_lt


--Porting note: we no longer express literals as `bit0` and `bit1` in Lean 4, so we can't use this
-- section Bit

-- /-!
-- This section proves inequalities for `bit0` and `bit1`, enabling `simp` to solve inequalities
-- for numeral cardinals. The complexity of the resulting algorithm is not good, as in some cases
-- `simp` reduces an inequality to a disjunction of two situations, depending on whether a cardinal
-- is finite or infinite. Since the evaluation of the branches is not lazy, this is bad. It is good
-- enough for practical situations, though.

-- For specific numbers, these inequalities could also be deduced from the corresponding
-- inequalities of natural numbers using `norm_cast`:
-- ```
-- example : (37 : cardinal) < 42 :=
-- by { norm_cast, norm_num }
-- ```
-- -/


-- theorem bit0_ne_zero (a : Cardinal) : ¬bit0 a = 0 ↔ ¬a = 0 := by simp [bit0]
-- #align cardinal.bit0_ne_zero Cardinal.bit0_ne_zero

-- @[simp]
-- theorem bit1_ne_zero (a : Cardinal) : ¬bit1 a = 0 := by simp [bit1]
-- #align cardinal.bit1_ne_zero Cardinal.bit1_ne_zero

-- @[simp]
-- theorem zero_lt_bit0 (a : Cardinal) : 0 < bit0 a ↔ 0 < a := by
--   rw [← not_iff_not]
--   simp [bit0]
-- #align cardinal.zero_lt_bit0 Cardinal.zero_lt_bit0

-- @[simp]
-- theorem zero_lt_bit1 (a : Cardinal) : 0 < bit1 a :=
--   zero_lt_one.trans_le (self_le_add_left _ _)
-- #align cardinal.zero_lt_bit1 Cardinal.zero_lt_bit1

-- @[simp]
-- theorem one_le_bit0 (a : Cardinal) : 1 ≤ bit0 a ↔ 0 < a :=
--   ⟨fun h => (zero_lt_bit0 a).mp (zero_lt_one.trans_le h), fun h =>
--     (one_le_iff_pos.mpr h).trans (self_le_add_left a a)⟩
-- #align cardinal.one_le_bit0 Cardinal.one_le_bit0

-- @[simp]
-- theorem one_le_bit1 (a : Cardinal) : 1 ≤ bit1 a :=
--   self_le_add_left _ _
-- #align cardinal.one_le_bit1 Cardinal.one_le_bit1

-- theorem bit0_eq_self {c : Cardinal} (h : ℵ₀ ≤ c) : bit0 c = c :=
--   add_eq_self h
-- #align cardinal.bit0_eq_self Cardinal.bit0_eq_self

-- @[simp]
-- theorem bit0_lt_aleph0 {c : Cardinal} : bit0 c < ℵ₀ ↔ c < ℵ₀ :=
--   by simp [bit0, add_lt_aleph_0_iff]
-- #align cardinal.bit0_lt_aleph_0 Cardinal.bit0_lt_aleph0

-- @[simp]
-- theorem aleph0_le_bit0 {c : Cardinal} : ℵ₀ ≤ bit0 c ↔ ℵ₀ ≤ c := by
--   rw [← not_iff_not]
--   simp
-- #align cardinal.aleph_0_le_bit0 Cardinal.aleph0_le_bit0

-- @[simp]
-- theorem bit1_eq_self_iff {c : Cardinal} : bit1 c = c ↔ ℵ₀ ≤ c := by
--   by_cases h : ℵ₀ ≤ c
--   · simp only [bit1, bit0_eq_self h, h, eq_self_iff_true, add_one_of_aleph_0_le]
--   · refine' iff_of_false (ne_of_gt _) h
--     rcases lt_aleph_0.1 (not_le.1 h) with ⟨n, rfl⟩
--     norm_cast
--     dsimp [bit1, bit0]
--     linarith
-- #align cardinal.bit1_eq_self_iff Cardinal.bit1_eq_self_iff

-- @[simp]
-- theorem bit1_lt_aleph0 {c : Cardinal} : bit1 c < ℵ₀ ↔ c < ℵ₀ := by
--   simp [bit1, bit0, add_lt_aleph_0_iff, one_lt_aleph_0]
-- #align cardinal.bit1_lt_aleph_0 Cardinal.bit1_lt_aleph0

-- @[simp]
-- theorem aleph0_le_bit1 {c : Cardinal} : ℵ₀ ≤ bit1 c ↔ ℵ₀ ≤ c := by
--   rw [← not_iff_not]
--   simp
-- #align cardinal.aleph_0_le_bit1 Cardinal.aleph0_le_bit1

-- @[simp]
-- theorem bit0_le_bit0 {a b : Cardinal} : bit0 a ≤ bit0 b ↔ a ≤ b := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · rw [bit0_eq_self ha, bit0_eq_self hb]
--   · rw [bit0_eq_self ha]
--     refine' iff_of_false (fun h => _) (hb.trans_le ha).not_le
--     have A : bit0 b < ℵ₀ := by simpa using hb
--     exact lt_irrefl _ ((A.trans_le ha).trans_le h)
--   · rw [bit0_eq_self hb]
--     exact iff_of_true ((bit0_lt_aleph_0.2 ha).le.trans hb) (ha.le.trans hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     exact bit0_le_bit0
-- #align cardinal.bit0_le_bit0 Cardinal.bit0_le_bit0

-- @[simp]
-- theorem bit0_le_bit1 {a b : Cardinal} : bit0 a ≤ bit1 b ↔ a ≤ b := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · rw [bit0_eq_self ha, bit1_eq_self_iff.2 hb]
--   · rw [bit0_eq_self ha]
--     refine' iff_of_false (fun h => _) (hb.trans_le ha).not_le
--     have A : bit1 b < ℵ₀ := by simpa using hb
--     exact lt_irrefl _ ((A.trans_le ha).trans_le h)
--   · rw [bit1_eq_self_iff.2 hb]
--     exact iff_of_true ((bit0_lt_aleph_0.2 ha).le.trans hb) (ha.le.trans hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     exact Nat.bit0_le_bit1_iff
-- #align cardinal.bit0_le_bit1 Cardinal.bit0_le_bit1

-- @[simp]
-- theorem bit1_le_bit1 {a b : Cardinal} : bit1 a ≤ bit1 b ↔ a ≤ b :=
--   ⟨fun h => bit0_le_bit1.1 ((self_le_add_right (bit0 a) 1).trans h), fun h =>
--     (add_le_add_right (add_le_add_left h a) 1).trans (add_le_add_right (add_le_add_right h b) 1)⟩
-- #align cardinal.bit1_le_bit1 Cardinal.bit1_le_bit1

-- @[simp]
-- theorem bit1_le_bit0 {a b : Cardinal} : bit1 a ≤ bit0 b ↔ a < b ∨ a ≤ b ∧ ℵ₀ ≤ a := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · simp only [bit1_eq_self_iff.mpr ha, bit0_eq_self hb, ha, and_true_iff]
--     refine' ⟨fun h => Or.inr h, fun h => _⟩
--     cases h
--     · exact le_of_lt h
--     · exact h
--   · rw [bit1_eq_self_iff.2 ha]
--     refine' iff_of_false (fun h => _) fun h => _
--     · have A : bit0 b < ℵ₀ := by simpa using hb
--       exact lt_irrefl _ ((A.trans_le ha).trans_le h)
--     · exact not_le_of_lt (hb.trans_le ha) (h.elim le_of_lt And.left)
--   · rw [bit0_eq_self hb]
--     exact iff_of_true ((bit1_lt_aleph_0.2 ha).le.trans hb) (Or.inl <| ha.trans_le hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     simp [not_le.mpr ha]
-- #align cardinal.bit1_le_bit0 Cardinal.bit1_le_bit0

-- @[simp]
-- theorem bit0_lt_bit0 {a b : Cardinal} : bit0 a < bit0 b ↔ a < b := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · rw [bit0_eq_self ha, bit0_eq_self hb]
--   · rw [bit0_eq_self ha]
--     refine' iff_of_false (fun h => _) (hb.le.trans ha).not_lt
--     have A : bit0 b < ℵ₀ := by simpa using hb
--     exact lt_irrefl _ ((A.trans_le ha).trans h)
--   · rw [bit0_eq_self hb]
--     exact iff_of_true ((bit0_lt_aleph_0.2 ha).trans_le hb) (ha.trans_le hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     exact bit0_lt_bit0
-- #align cardinal.bit0_lt_bit0 Cardinal.bit0_lt_bit0

-- @[simp]
-- theorem bit1_lt_bit0 {a b : Cardinal} : bit1 a < bit0 b ↔ a < b := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · rw [bit1_eq_self_iff.2 ha, bit0_eq_self hb]
--   · rw [bit1_eq_self_iff.2 ha]
--     refine' iff_of_false (fun h => _) (hb.le.trans ha).not_lt
--     have A : bit0 b < ℵ₀ := by simpa using hb
--     exact lt_irrefl _ ((A.trans_le ha).trans h)
--   · rw [bit0_eq_self hb]
--     exact iff_of_true ((bit1_lt_aleph_0.2 ha).trans_le hb) (ha.trans_le hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     exact Nat.bit1_lt_bit0_iff
-- #align cardinal.bit1_lt_bit0 Cardinal.bit1_lt_bit0

-- @[simp]
-- theorem bit1_lt_bit1 {a b : Cardinal} : bit1 a < bit1 b ↔ a < b := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · rw [bit1_eq_self_iff.2 ha, bit1_eq_self_iff.2 hb]
--   · rw [bit1_eq_self_iff.2 ha]
--     refine' iff_of_false (fun h => _) (hb.le.trans ha).not_lt
--     have A : bit1 b < ℵ₀ := by simpa using hb
--     exact lt_irrefl _ ((A.trans_le ha).trans h)
--   · rw [bit1_eq_self_iff.2 hb]
--     exact iff_of_true ((bit1_lt_aleph_0.2 ha).trans_le hb) (ha.trans_le hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     exact bit1_lt_bit1
-- #align cardinal.bit1_lt_bit1 Cardinal.bit1_lt_bit1

-- @[simp]
-- theorem bit0_lt_bit1 {a b : Cardinal} : bit0 a < bit1 b ↔ a < b ∨ a ≤ b ∧ a < ℵ₀ := by
--   cases' le_or_lt ℵ₀ a with ha ha <;> cases' le_or_lt ℵ₀ b with hb hb
--   · simp [bit0_eq_self ha, bit1_eq_self_iff.2 hb, not_lt.mpr ha]
--   · rw [bit0_eq_self ha]
--     refine' iff_of_false (fun h => _) fun h => _
--     · have A : bit1 b < ℵ₀ := by simpa using hb
--       exact lt_irrefl _ ((A.trans_le ha).trans h)
--     · exact (hb.trans_le ha).not_le (h.elim le_of_lt And.left)
--   · rw [bit1_eq_self_iff.2 hb]
--     exact iff_of_true ((bit0_lt_aleph_0.2 ha).trans_le hb) (Or.inl <| ha.trans_le hb)
--   · rcases lt_aleph_0.1 ha with ⟨m, rfl⟩
--     rcases lt_aleph_0.1 hb with ⟨n, rfl⟩
--     norm_cast
--     simp only [ha, and_true_iff, Nat.bit0_lt_bit1_iff, or_iff_right_of_imp le_of_lt]
-- #align cardinal.bit0_lt_bit1 Cardinal.bit0_lt_bit1

-- theorem one_lt_two : (1 : Cardinal) < 2 := by
--   -- This strategy works generally to prove inequalities between numerals in `cardinality`.
--   norm_cast
--   norm_num
-- #align cardinal.one_lt_two Cardinal.one_lt_two

-- @[simp]
-- theorem one_lt_bit0 {a : Cardinal} : 1 < bit0 a ↔ 0 < a := by simp [← bit1_zero]
-- #align cardinal.one_lt_bit0 Cardinal.one_lt_bit0

-- @[simp]
-- theorem one_lt_bit1 (a : Cardinal) : 1 < bit1 a ↔ 0 < a := by simp [← bit1_zero]
-- #align cardinal.one_lt_bit1 Cardinal.one_lt_bit1

-- end Bit

end Cardinal
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant5ef4db0e57d183e5eb1e8823b334e9a877a248260e12671b785d35bd45df7026.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d113b35b3d19c5d27cea94671fea561b0543b5e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
