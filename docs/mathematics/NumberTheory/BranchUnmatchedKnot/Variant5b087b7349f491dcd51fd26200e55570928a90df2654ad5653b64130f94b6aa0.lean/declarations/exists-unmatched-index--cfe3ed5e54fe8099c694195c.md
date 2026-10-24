# exists_unmatched_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db474b18-f005-7eba-b768-6a0bcac5c632",
  "kind": "theorem",
  "lexical_name": "exists_unmatched_index",
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
  "slug": "exists-unmatched-index--cfe3ed5e54fe8099c694195c",
  "source": {
    "blob": "8a7c3ae55ff1bb89e9100564337f170edd412908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 77,
    "path": "GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cfe3ed5e54fe8099c694195c905ec77315edf14328b85b820703f99f107673f6",
  "verification": {
    "reference": "docs/verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db474b18-f005-7eba-b768-6a0bcac5c632`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unmatched_index {X : ℝ} (hX : 2 < X) :
    ∃ n ∈ interiorInventory X, ¬ ∃ m ∈ interiorInventory X, X = (n : ℝ) * m := by
  by_cases h3 : X ≤ 3
  · refine ⟨2, mem_interiorInventory.mpr ⟨le_rfl, hX, Nat.prime_two.isPrimePow⟩, ?_⟩
    rintro ⟨m, hm, heq⟩
    have hm2 : (2 : ℝ) ≤ m := by exact_mod_cast (mem_interiorInventory.mp hm).1
    norm_num at heq
    nlinarith
  · have h3X : 3 < X := lt_of_not_ge h3
    by_contra h
    push Not at h
    obtain ⟨m, hm, hXm⟩ := h 2 (mem_interiorInventory.mpr
      ⟨le_rfl, hX, Nat.prime_two.isPrimePow⟩)
    obtain ⟨k, hk, hXk⟩ := h 3 (mem_interiorInventory.mpr
      ⟨by omega, h3X, Nat.prime_three.isPrimePow⟩)
    have heq : 2 * m = 3 * k := by exact_mod_cast hXm.symm.trans hXk
    have h6 := two_three_partners_eq_six (mem_interiorInventory.mp hm).2.2
      (mem_interiorInventory.mp hk).2.2 heq
    have hX6 : X = 6 := by
      rw [hXm]
      exact_mod_cast h6
    obtain ⟨j, hj, hXj⟩ := h 5 (mem_interiorInventory.mpr
      ⟨by omega, by norm_num only [Nat.cast_ofNat]; linarith, (by decide : Nat.Prime 5).isPrimePow⟩)
    have hj2 : (2 : ℝ) ≤ j := by exact_mod_cast (mem_interiorInventory.mp hj).1
    norm_num at hXj
    nlinarith

/-- A multiplicatively unmatched source index has no opposite shifted endpoint at its knot. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7c3ae55ff1bb89e9100564337f170edd412908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
