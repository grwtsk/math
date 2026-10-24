# triangularIntegerFrequencyPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:415ceaec-fe59-f22c-2214-f031d1443787",
  "kind": "theorem",
  "lexical_name": "triangularIntegerFrequencyPartition",
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
  "slug": "triangularintegerfrequencypartition--4a392478d86be9aae2fec9d8",
  "source": {
    "blob": "2744776d23e1692aab74adee20a889dacb811c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 15,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a392478d86be9aae2fec9d88d2c72b29196bed48f094578d5a8b77c6ac0bcdd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415ceaec-fe59-f22c-2214-f031d1443787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangularIntegerFrequencyPartition :
    TriangularIntegerFrequencyPartitionClaim := by
  intro N
  ext k
  constructor
  · intro hk
    have hkIcc := Finset.mem_Icc.mp hk
    by_cases hleft : k = -(N : ℤ)
    · apply Finset.mem_union.mpr
      exact Or.inr (by simp [hleft])
    by_cases hright : k = (N : ℤ)
    · apply Finset.mem_union.mpr
      exact Or.inr (by simp [hright])
    rcases lt_trichotomy k 0 with hkneg | hkzero | hkpos
    · have hkLower : -(N : ℤ) < k :=
        lt_of_le_of_ne hkIcc.1 (Ne.symm hleft)
      let d : ℕ := k.natAbs
      have hdpos : 0 < d := by
        exact Int.natAbs_pos.mpr (ne_of_lt hkneg)
      have hcast : (d : ℤ) = -k := by
        dsimp [d]
        exact Int.ofNat_natAbs_of_nonpos hkneg.le
      have hdltInt : (d : ℤ) < (N : ℤ) := by
        rw [hcast]
        omega
      have hdlt : d < N := by
        exact_mod_cast hdltInt
      have hn : k ∈ triangularNegativeFrequencies N := by
        apply mem_triangularNegativeFrequencies.mpr
        refine ⟨d, Finset.mem_Ico.mpr ⟨hdpos, hdlt⟩, ?_⟩
        omega
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inl hn
    · subst k
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inr (by simp [triangularZeroFrequency])
    · have hkUpper : k < (N : ℤ) :=
        lt_of_le_of_ne hkIcc.2 hright
      let d : ℕ := k.natAbs
      have hdpos : 0 < d := by
        exact Int.natAbs_pos.mpr (ne_of_gt hkpos)
      have hcast : (d : ℤ) = k := by
        dsimp [d]
        exact Int.natAbs_of_nonneg hkpos.le
      have hdltInt : (d : ℤ) < (N : ℤ) := by
        rw [hcast]
        exact hkUpper
      have hdlt : d < N := by
        exact_mod_cast hdltInt
      have hp : k ∈ triangularPositiveFrequencies N := by
        apply mem_triangularPositiveFrequencies.mpr
        refine ⟨d, Finset.mem_Ico.mpr ⟨hdpos, hdlt⟩, ?_⟩
        exact hcast.symm
      apply Finset.mem_union.mpr
      apply Or.inl
      apply Finset.mem_union.mpr
      exact Or.inr hp
  · intro hk
    rcases Finset.mem_union.mp hk with hleft | hend
    · rcases Finset.mem_union.mp hleft with hnz | hp
      · rcases Finset.mem_union.mp hnz with hn | hz
        · rw [mem_triangularNegativeFrequencies] at hn
          rcases hn with ⟨d, hd, rfl⟩
          have hd' := Finset.mem_Ico.mp hd
          apply Finset.mem_Icc.mpr
          constructor
          · omega
          · omega
        · simp [triangularZeroFrequency] at hz
          subst k
          exact Finset.mem_Icc.mpr (by omega)
      · rw [mem_triangularPositiveFrequencies] at hp
        rcases hp with ⟨d, hd, rfl⟩
        have hd' := Finset.mem_Ico.mp hd
        apply Finset.mem_Icc.mpr
        constructor
        · omega
        · omega
    · simp at hend
      rcases hend with rfl | rfl <;> simp

/-- The assembled positive/zero/negative frequency expression is exactly the
symmetric triangular kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartitionProof.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2744776d23e1692aab74adee20a889dacb811c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
