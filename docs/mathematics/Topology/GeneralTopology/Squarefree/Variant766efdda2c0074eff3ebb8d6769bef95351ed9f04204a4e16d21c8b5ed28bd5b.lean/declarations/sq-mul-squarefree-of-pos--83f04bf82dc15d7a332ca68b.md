# sq_mul_squarefree_of_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8301ea52-f2dc-08a8-a93e-654169aa6ccd",
  "kind": "theorem",
  "lexical_name": "sq_mul_squarefree_of_pos",
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
  "slug": "sq-mul-squarefree-of-pos--83f04bf82dc15d7a332ca68b",
  "source": {
    "blob": "fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 365,
    "line": 337,
    "path": "GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83f04bf82dc15d7a332ca68beb922dafddbacc25b9ef2f5d79ce068890e0d736",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8301ea52-f2dc-08a8-a93e-654169aa6ccd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–365.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_mul_squarefree_of_pos {n : ℕ} (hn : 0 < n) :
    ∃ a b : ℕ, 0 < a ∧ 0 < b ∧ b ^ 2 * a = n ∧ Squarefree a := by
  classical -- Porting note: This line is not needed in Lean 3
  set S := (Finset.range (n + 1)).filter (fun s => s ∣ n ∧ ∃ x, s = x ^ 2)
  have hSne : S.Nonempty := by
    use 1
    have h1 : 0 < n ∧ ∃ x : ℕ, 1 = x ^ 2 := ⟨hn, ⟨1, (one_pow 2).symm⟩⟩
    simp [h1]
  let s := Finset.max' S hSne
  have hs : s ∈ S := Finset.max'_mem S hSne
  simp only [Finset.mem_filter, Finset.mem_range] at hs
  obtain ⟨-, ⟨a, hsa⟩, ⟨b, hsb⟩⟩ := hs
  rw [hsa] at hn
  obtain ⟨hlts, hlta⟩ := CanonicallyOrderedCommSemiring.mul_pos.mp hn
  rw [hsb] at hsa hn hlts
  refine' ⟨a, b, hlta, (pow_pos_iff zero_lt_two).mp hlts, hsa.symm, _⟩
  rintro x ⟨y, hy⟩
  rw [Nat.isUnit_iff]
  by_contra hx
  refine' lt_le_antisymm _ (Finset.le_max' S ((b * x) ^ 2) _)
  -- Porting note: these two goals were in the opposite order in Lean 3
  · convert lt_mul_of_one_lt_right hlts
      (one_lt_pow 2 x zero_lt_two (one_lt_iff_ne_zero_and_ne_one.mpr ⟨fun h => by simp_all, hx⟩))
      using 1
    rw [mul_pow]
  · simp_rw [hsa, Finset.mem_filter, Finset.mem_range]
    refine' ⟨lt_succ_iff.mpr (le_of_dvd hn _), _, ⟨b * x, rfl⟩⟩ <;> use y <;> rw [hy] <;> ring
#align nat.sq_mul_squarefree_of_pos Nat.sq_mul_squarefree_of_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Squarefree/Variant766efdda2c0074eff3ebb8d6769bef95351ed9f04204a4e16d21c8b5ed28bd5b.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa2228621464ccb6df42e3b7b4ea23a7f53f5f5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
