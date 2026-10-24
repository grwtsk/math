# actual_proper_diagonal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8aba4285-f460-e0db-af42-53a67f8a098d",
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
  "slug": "actual-proper-diagonal-eq--24c4017bbc0c6383b5533ad2",
  "source": {
    "blob": "ec5ebbec54e0839f35218615c55954e1d98db296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24c4017bbc0c6383b5533ad2d98d6402c9beeecc351589fd787d94679bb639c2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8aba4285-f460-e0db-af42-53a67f8a098d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–68.

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
    rw [Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
    apply Finset.sum_congr rfl
    intro n _
    by_cases hn : n.Prime <;> simp [hn]
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Attempt04/Varianta9970390b2fc353b0b9d87386225d3416a7c375bc92298a7e0a869fa887ba054.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec5ebbec54e0839f35218615c55954e1d98db296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
