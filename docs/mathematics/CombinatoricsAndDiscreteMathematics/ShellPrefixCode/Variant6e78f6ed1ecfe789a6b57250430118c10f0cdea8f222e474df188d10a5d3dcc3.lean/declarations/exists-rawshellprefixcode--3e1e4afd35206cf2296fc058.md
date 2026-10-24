# exists_rawShellPrefixCode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cb7b1437-6acd-be61-a87b-987d1e90125a",
  "kind": "theorem",
  "lexical_name": "exists_rawShellPrefixCode",
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
  "slug": "exists-rawshellprefixcode--3e1e4afd35206cf2296fc058",
  "source": {
    "blob": "e8ca1b1143fb8c5e71226c2db770e9b721ee383f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 95,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3e1e4afd35206cf2296fc05877892fd538540d3a9e9807ad79cf873ea4858e4f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cb7b1437-6acd-be61-a87b-987d1e90125a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_rawShellPrefixCode (depth block x : ℕ)
    (hlower : block * 2 ^ depth ≤ x)
    (hupper : x ≤ (block + 1) * 2 ^ depth) :
    Nonempty (RawShellPrefixCode depth block x) := by
  induction depth generalizing block x with
  | zero =>
      have hx : x = block ∨ x = block + 1 := by
        simp only [pow_zero, mul_one] at hlower hupper
        omega
      rcases hx with rfl | rfl
      · refine ⟨{
          intervals := ∅
          contained := by simp
          scale_le := by simp
          pairwise_disjoint := by simp
          exact_cover := by simp
          card_le := by simp }⟩
      · let I : RawProductDyadicInterval := ⟨0, block⟩
        refine ⟨{
          intervals := {I}
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := ?_
          exact_cover := ?_
          card_le := ?_ }⟩
        · intro J hJ
          have hJI : J = I := by simpa using hJ
          subst J
          simp [I, RawProductDyadicInterval.lower,
            RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width]
        · intro J hJ
          have hJI : J = I := by simpa using hJ
          subst J
          simp [I]
        · simp
        · simp [I, RawProductDyadicInterval.carrier,
            RawProductDyadicInterval.lower,
            RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width]
        · simp
  | succ depth ih =>
      let leftBlock : ℕ := 2 * block
      let rightBlock : ℕ := 2 * block + 1
      let midpoint : ℕ := rightBlock * 2 ^ depth
      have hbase :
          block * 2 ^ (depth + 1) = leftBlock * 2 ^ depth := by
        simp [leftBlock, pow_succ']
        ring
      have hmid : midpoint = (leftBlock + 1) * 2 ^ depth := by
        simp [midpoint, rightBlock, leftBlock]
      have htop :
          (block + 1) * 2 ^ (depth + 1) =
            (rightBlock + 1) * 2 ^ depth := by
        simp [rightBlock, pow_succ']
        ring
      by_cases hxmid : x ≤ midpoint
      · have hlower' : leftBlock * 2 ^ depth ≤ x := by
          rwa [← hbase]
        have hupper' : x ≤ (leftBlock + 1) * 2 ^ depth := by
          rwa [← hmid]
        obtain ⟨code⟩ := ih leftBlock x hlower' hupper'
        refine ⟨{
          intervals := code.intervals
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := code.pairwise_disjoint
          exact_cover := ?_
          card_le := code.card_le.trans (by omega) }⟩
        · intro I hI
          have h := code.contained I hI
          rwa [hbase]
        · intro I hI
          exact (code.scale_le I hI).trans (Nat.le_succ _)
        · simpa [hbase] using code.exact_cover
      · have hmid_le_x : midpoint ≤ x := by omega
        have hupper' : x ≤ (rightBlock + 1) * 2 ^ depth := by
          rwa [← htop]
        obtain ⟨rightCode⟩ := ih rightBlock x hmid_le_x hupper'
        let leftInterval : RawProductDyadicInterval := ⟨depth, leftBlock⟩
        have hleftLower : leftInterval.lower = block * 2 ^ (depth + 1) := by
          simp [leftInterval, RawProductDyadicInterval.lower,
            RawProductDyadicInterval.width, hbase]
        have hleftUpper : leftInterval.upper = midpoint := by
          simp [leftInterval, RawProductDyadicInterval.upper,
            RawProductDyadicInterval.width, hmid]
        have hnotmem : leftInterval ∉ rightCode.intervals := by
          intro hmem
          have hcontained := rightCode.contained leftInterval hmem
          rw [hleftLower] at hcontained
          have hstrict : block * 2 ^ (depth + 1) < midpoint := by
            have h := leftInterval.lower_lt_upper
            rwa [hleftLower, hleftUpper] at h
          omega
        have hdisjoint :
            ∀ J ∈ (↑rightCode.intervals : Set RawProductDyadicInterval),
              Disjoint leftInterval.carrier J.carrier := by
          intro J hJ
          have hcontained := rightCode.contained J hJ
          have hJlower : midpoint ≤ J.lower := by
            simpa [midpoint] using hcontained.1
          rw [Finset.disjoint_left]
          intro n hnleft hnright
          have hnleft' := leftInterval.mem_carrier_iff n |>.mp hnleft
          have hnright' := J.mem_carrier_iff n |>.mp hnright
          omega
        refine ⟨{
          intervals := insert leftInterval rightCode.intervals
          contained := ?_
          scale_le := ?_
          pairwise_disjoint := ?_
          exact_cover := ?_
          card_le := ?_ }⟩
        · intro I hI
          simp only [Finset.mem_insert] at hI
          rcases hI with rfl | hI
          · exact ⟨hleftLower.ge, hleftUpper.le.trans hmid_le_x⟩
          · have h := rightCode.contained I hI
            have hbase_mid : block * 2 ^ (depth + 1) ≤ midpoint := by
              have h := leftInterval.lower_lt_upper
              rw [hleftLower, hleftUpper] at h
              exact Nat.le_of_lt h
            have hmid_I : midpoint ≤ I.lower := by
              simpa [midpoint] using h.1
            exact ⟨hbase_mid.trans hmid_I, h.2⟩
        · intro I hI
          simp only [Finset.mem_insert] at hI
          rcases hI with rfl | hI
          · exact Nat.le_succ _
          · exact (rightCode.scale_le I hI).trans (Nat.le_succ _)
        · rw [Finset.coe_insert,
            Set.pairwiseDisjoint_insert_of_notMem]
          exact ⟨rightCode.pairwise_disjoint, hdisjoint⟩
          simpa using hnotmem
        · rw [Finset.biUnion_insert, rightCode.exact_cover]
          ext n
          simp only [Finset.mem_union,
            RawProductDyadicInterval.mem_carrier_iff,
            Finset.mem_Ioc, hleftLower, hleftUpper]
          change
            (block * 2 ^ (depth + 1) < n ∧ n ≤ midpoint) ∨
                (midpoint < n ∧ n ≤ x) ↔
              block * 2 ^ (depth + 1) < n ∧ n ≤ x
          have hbase_mid_strict :
              block * 2 ^ (depth + 1) < midpoint := by
            have h := leftInterval.lower_lt_upper
            rwa [hleftLower, hleftUpper] at h
          constructor
          · rintro (h | h)
            · exact ⟨h.1, h.2.trans hmid_le_x⟩
            · exact ⟨hbase_mid_strict.trans h.1, h.2⟩
          · intro h
            by_cases hn : n ≤ midpoint
            · exact Or.inl ⟨h.1, hn⟩
            · exact Or.inr ⟨by omega, h.2⟩
        · rw [Finset.card_insert_of_notMem hnotmem]
          exact Nat.succ_le_succ rightCode.card_le

/-! ## Conversion to the bounded product-shell interval type -/

/-- Convert one raw interval known to lie in the requested shell into the
finite canonical interval type. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ShellPrefixCode/Variant6e78f6ed1ecfe789a6b57250430118c10f0cdea8f222e474df188d10a5d3dcc3.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ca1b1143fb8c5e71226c2db770e9b721ee383f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
