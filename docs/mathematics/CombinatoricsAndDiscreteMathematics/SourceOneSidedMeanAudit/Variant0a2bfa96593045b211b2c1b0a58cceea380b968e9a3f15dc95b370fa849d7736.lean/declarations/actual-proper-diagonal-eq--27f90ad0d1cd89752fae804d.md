# actual_proper_diagonal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:508a1afb-cca0-0cb4-5ac1-229b508162ff",
  "kind": "theorem",
  "lexical_name": "actual_proper_diagonal_eq",
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
  "slug": "actual-proper-diagonal-eq--27f90ad0d1cd89752fae804d",
  "source": {
    "blob": "60948871e52f3ecdb0dbdd67933556ad09d7356f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27f90ad0d1cd89752fae804d8ae48da68c6803dae954708e9d76d34283a7d2af",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:508a1afb-cca0-0cb4-5ac1-229b508162ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_proper_diagonal_eq (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A - retainedPrimeDiagonal A =
      -(∑ n ∈ actualProperDiagonalInventory A, vonMangoldt n / (n : ℝ) *
        sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))) := by
  classical
  let F := (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
    (fun n => vaughanCutoff A < n.minFac)
  let w := fun n : ℕ => vonMangoldt n / (n : ℝ) *
    sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))
  have hp : F.filter Nat.Prime =
      (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter Nat.Prime := by
    ext n
    simp only [F, Finset.mem_filter]
    constructor
    · rintro ⟨⟨hi, _⟩, hn⟩
      exact ⟨hi, hn⟩
    · rintro ⟨hi, hn⟩
      exact ⟨⟨hi, by simpa only [hn.minFac_eq] using (Finset.mem_Ioc.mp hi).1⟩, hn⟩
  have hs : (∑ n ∈ F, w n) =
      (∑ n ∈ F.filter Nat.Prime, w n) +
      (∑ n ∈ F.filter (fun n => ¬n.Prime), w n) := by
    dsimp [F]
    simp only [Finset.sum_filter]
    rw [← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hn : n.Prime <;>
      by_cases hl : vaughanCutoff A < n.minFac <;> simp [hn, hl]
  have hprime : -(∑ n ∈ F.filter Nat.Prime, w n) = rawPrimeFirstDiagonal A := by
    rw [hp]
    unfold rawPrimeFirstDiagonal
    congr 1
    apply Finset.sum_congr rfl
    intro n hn
    simp only [w, vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2]
  rw [typeTwoDiagonal_eq_longBase_sum A hA]
  change -(∑ n ∈ F, w n) - retainedPrimeDiagonal A = _
  rw [hs, ← raw_first_diagonal_eq_retained A hA]
  change _ = -(∑ n ∈ F.filter (fun n => ¬n.Prime), w n)
  linarith only [hprime]

/-- Only the upper proper-diagonal loss enters the ledger. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedMeanAudit/Variant0a2bfa96593045b211b2c1b0a58cceea380b968e9a3f15dc95b370fa849d7736.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60948871e52f3ecdb0dbdd67933556ad09d7356f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
