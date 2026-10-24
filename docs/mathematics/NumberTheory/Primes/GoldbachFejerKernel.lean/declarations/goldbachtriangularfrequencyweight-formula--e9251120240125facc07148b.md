# goldbachTriangularFrequencyWeight_formula

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33871e87-9a79-3b5f-52d9-3e8ac895e45f",
  "kind": "theorem",
  "lexical_name": "goldbachTriangularFrequencyWeight_formula",
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
  "slug": "goldbachtriangularfrequencyweight-formula--e9251120240125facc07148b",
  "source": {
    "blob": "f97b459674f6857693fdd2f0fa1e4c5b736da17b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 90,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9251120240125facc07148bbfd8f1923232b49a865ffb5e77d276bed4db8c71",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33871e87-9a79-3b5f-52d9-3e8ac895e45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachTriangularFrequencyWeight_formula
    (N : ℕ) (m : ℤ) :
    goldbachTriangularFrequencyWeight N m =
      if m.natAbs ≤ N then N + 1 - m.natAbs else 0 := by
  classical
  unfold goldbachTriangularFrequencyWeight
  by_cases hm : m.natAbs ≤ N
  · rw [if_pos hm]
    let s : Finset ℕ := Finset.Icc m.natAbs N
    have hcard : s.card = N + 1 - m.natAbs := by
      simp [s]
    have hnonneg_or_nonpos : 0 ≤ m ∨ m ≤ 0 := le_total 0 m
    rcases hnonneg_or_nonpos with hnonneg | hnonpos
    · let e :
          {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} ≃
            {u : ℕ // u ∈ s} := {
        toFun := fun uv => ⟨uv.1.1, by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          dsimp only
          have huv := mem_goldbachSingularFrequencyFiber.mp huv
          have hmcast : (m.natAbs : ℤ) = m := by
            simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
          simp only [s, Finset.mem_Icc]
          constructor
          · omega
          · exact huv.1⟩
        invFun := fun u =>
          ⟨(u.1, N + m.natAbs - u.1), by
            apply mem_goldbachSingularFrequencyFiber.mpr
            have hu := Finset.mem_Icc.mp u.2
            have hmcast : (m.natAbs : ℤ) = m := by
              simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
            constructor
            · exact hu.2
            constructor
            · omega
            · omega⟩
        left_inv := fun uv => by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          apply Subtype.ext
          apply Prod.ext
          · rfl
          · dsimp only
            have huv := mem_goldbachSingularFrequencyFiber.mp huv
            have hmcast : (m.natAbs : ℤ) = m := by
              simp only [Int.natCast_natAbs, abs_of_nonneg hnonneg]
            omega
        right_inv := fun u => by
          apply Subtype.ext
          rfl
      }
      calc
        (goldbachSingularFrequencyFiber N m).card =
            Fintype.card {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} := by
              simp
        _ = Fintype.card {u : ℕ // u ∈ s} := Fintype.card_congr e
        _ = s.card := by simp
        _ = N + 1 - m.natAbs := hcard
    · let t : Finset ℕ := Finset.Icc 0 (N - m.natAbs)
      let e :
          {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} ≃
            {u : ℕ // u ∈ t} := {
        toFun := fun uv => ⟨uv.1.1, by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          dsimp only
          have huv := mem_goldbachSingularFrequencyFiber.mp huv
          have hmcast : (m.natAbs : ℤ) = -m := by
            simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
          simp only [t, Finset.mem_Icc, Nat.zero_le, true_and]
          omega⟩
        invFun := fun u =>
          ⟨(u.1, N - m.natAbs - u.1), by
            apply mem_goldbachSingularFrequencyFiber.mpr
            have hu := Finset.mem_Icc.mp u.2
            have hmcast : (m.natAbs : ℤ) = -m := by
              simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
            constructor
            · omega
            constructor
            · omega
            · omega⟩
        left_inv := fun uv => by
          rcases uv with ⟨⟨u, v⟩, huv⟩
          apply Subtype.ext
          apply Prod.ext
          · rfl
          · dsimp only
            have huv := mem_goldbachSingularFrequencyFiber.mp huv
            have hmcast : (m.natAbs : ℤ) = -m := by
              simp only [Int.natCast_natAbs, abs_of_nonpos hnonpos]
            omega
        right_inv := fun u => by
          apply Subtype.ext
          rfl
      }
      calc
        (goldbachSingularFrequencyFiber N m).card =
            Fintype.card {uv : ℕ × ℕ // uv ∈ goldbachSingularFrequencyFiber N m} := by
              simp
        _ =
            Fintype.card
              {u : ℕ // u ∈ t} :=
          Fintype.card_congr e
        _ = N - m.natAbs + 1 := by simp [t]
        _ = N + 1 - m.natAbs := by omega
  · rw [if_neg hm]
    apply Finset.card_eq_zero.mpr
    apply goldbachSingularFrequencyFiber_eq_empty_of_not_mem
    simp only [Finset.mem_Icc, not_and_or]
    omega

/-- The triangular weight is even in the integer frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerKernel.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97b459674f6857693fdd2f0fa1e4c5b736da17b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
