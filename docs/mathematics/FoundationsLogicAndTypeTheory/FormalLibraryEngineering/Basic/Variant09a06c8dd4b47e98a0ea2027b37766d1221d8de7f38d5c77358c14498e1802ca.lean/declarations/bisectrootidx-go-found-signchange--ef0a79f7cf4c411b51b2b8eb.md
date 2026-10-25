# bisectRootIdx_go_found_signChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f229224-1c9c-9816-f2ab-e55aebc0c4d7",
  "kind": "theorem",
  "lexical_name": "bisectRootIdx_go_found_signChange",
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
  "slug": "bisectrootidx-go-found-signchange--ef0a79f7cf4c411b51b2b8eb",
  "source": {
    "blob": "ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 395,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef0a79f7cf4c411b51b2b8eb08de28e14dd7cbce13255f64730cd92d23dba455",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f229224-1c9c-9816-f2ab-e55aebc0c4d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bisectRootIdx_go_found_signChange (e : Expr) (ρ_int : IntervalEnv) (idx : Nat)
    (maxDepth depth : ℕ) (J I : IntervalRat) (d : ℕ)
    (hJ_sub : ∀ t, t ∈ J → t ∈ ρ_int idx)
    (hfound : bisectRootIdx.go e ρ_int idx maxDepth J depth = BisectResult.found I d) :
    signChange_idx e (updateIntervalEnv' ρ_int idx I) idx = true ∧
    (∀ t, t ∈ I → t ∈ ρ_int idx) := by
  induction depth generalizing J I d with
  | zero =>
    unfold bisectRootIdx.go at hfound
    by_cases hexcl : excludesZero (evalInterval e (updateIntervalEnv' ρ_int idx J)) = true
    · simp only [hexcl, ↓reduceIte] at hfound; exact (BisectResult.noConfusion hfound)
    · simp only [hexcl, ↓reduceIte, Bool.false_eq_true] at hfound
      by_cases hsign : signChange_idx e (updateIntervalEnv' ρ_int idx J) idx = true
      · simp only [hsign] at hfound
        obtain ⟨rfl, _⟩ := hfound
        exact ⟨hsign, hJ_sub⟩
      · simp only [hsign] at hfound; exact (BisectResult.noConfusion hfound)
  | succ n ih =>
    unfold bisectRootIdx.go at hfound
    simp only [Nat.succ_ne_zero, ↓reduceIte, Nat.add_sub_cancel] at hfound
    by_cases hexcl : excludesZero (evalInterval e (updateIntervalEnv' ρ_int idx J)) = true
    · simp only [hexcl, ↓reduceIte] at hfound; exact (BisectResult.noConfusion hfound)
    · simp only [hexcl, ↓reduceIte, Bool.false_eq_true] at hfound
      by_cases hsign : signChange_idx e (updateIntervalEnv' ρ_int idx J) idx = true
      · simp only [hsign] at hfound
        obtain ⟨rfl, _⟩ := hfound
        exact ⟨hsign, hJ_sub⟩
      · simp only [hsign] at hfound
        -- Bisection case
        have hsub1 : ∀ t, t ∈ J.bisect.1 → t ∈ ρ_int idx := fun t ht =>
          hJ_sub t (IntervalRat.mem_of_mem_bisect_left ht)
        have hsub2 : ∀ t, t ∈ J.bisect.2 → t ∈ ρ_int idx := fun t ht =>
          hJ_sub t (IntervalRat.mem_of_mem_bisect_right ht)
        match hr1 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.1 n with
        | BisectResult.found Ix dx =>
          rw [hr1] at hfound
          obtain ⟨rfl, rfl⟩ := hfound
          exact ih J.bisect.1 _ _ hsub1 hr1
        | BisectResult.noRoot =>
          rw [hr1] at hfound
          match hr2 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.2 n with
          | BisectResult.found Iy dy =>
            rw [hr2] at hfound
            obtain ⟨rfl, rfl⟩ := hfound
            exact ih J.bisect.2 _ _ hsub2 hr2
          | BisectResult.noRoot =>
            rw [hr2] at hfound; exact (BisectResult.noConfusion hfound)
          | BisectResult.uncertain _ _ =>
            rw [hr2] at hfound; exact (BisectResult.noConfusion hfound)
        | BisectResult.uncertain Iu du =>
          rw [hr1] at hfound
          match hr2 : bisectRootIdx.go e ρ_int idx maxDepth J.bisect.2 n with
          | BisectResult.found Iy dy =>
            rw [hr2] at hfound
            obtain ⟨rfl, rfl⟩ := hfound
            exact ih J.bisect.2 _ _ hsub2 hr2
          | BisectResult.noRoot =>
            rw [hr2] at hfound; exact (BisectResult.noConfusion hfound)
          | BisectResult.uncertain Iv dv =>
            -- uncertain/uncertain: result is always uncertain (width comparison)
            rw [hr2] at hfound
            -- Simplify: both branches of the if give uncertain, never found
            simp only [Bool.false_eq_true, ↓reduceIte] at hfound
            split_ifs at hfound

/-- Correctness theorem for bisectRootIdx when it finds a root.
    If bisectRootIdx returns `found I d`, then for any ρ_real satisfying ρ_int,
    there exists a root of `evalAlong e ρ_real idx` in the returned interval I. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant09a06c8dd4b47e98a0ea2027b37766d1221d8de7f38d5c77358c14498e1802ca.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac271c4981d195cb573c0434b2ed1ef0d8bb6d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
