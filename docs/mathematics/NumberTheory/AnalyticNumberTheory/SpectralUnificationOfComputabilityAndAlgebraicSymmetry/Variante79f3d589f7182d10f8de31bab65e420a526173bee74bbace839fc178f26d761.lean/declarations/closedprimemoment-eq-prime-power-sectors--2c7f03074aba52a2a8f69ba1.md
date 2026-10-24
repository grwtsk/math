# closedPrimeMoment_eq_prime_power_sectors

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:630e3f17-660a-f6af-a7e6-b9b2a5e97bc7",
  "kind": "theorem",
  "lexical_name": "closedPrimeMoment_eq_prime_power_sectors",
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
  "slug": "closedprimemoment-eq-prime-power-sectors--2c7f03074aba52a2a8f69ba1",
  "source": {
    "blob": "ad91a688c786de277f5344fbd04d9fea2d5ab936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 204,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7f03074aba52a2a8f69ba128dd29d421d40e690912d8bbefe50b419a5d8ab9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:630e3f17-660a-f6af-a7e6-b9b2a5e97bc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closedPrimeMoment_eq_prime_power_sectors (A : ℝ) :
    closedPrimeMoment A = primeFirstMoment A + evenPowerMoment A + oddHigherMoment A := by
  classical
  have heq : closedPrimeMoment A = ∑ n ∈ primePowerInventory (2 * A), sourceTerm A n := by
    unfold closedPrimeMoment
    apply Finset.sum_congr rfl
    intro n hn
    have hn2 := (Finset.mem_Icc.mp hn).1
    rw [exponentialTest_log _ n (by omega)]
    unfold sourceTerm
    ring
  rw [heq, primePowerInventory, sourceTerm_partition]
  have hp : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter Nat.Prime,
      sourceTerm A n) = primeFirstMoment A := by
    apply Finset.sum_congr rfl
    intro p hp
    exact sourceTerm_prime A p (Finset.mem_filter.mp hp).2
  have hs : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter IsSquare,
      sourceTerm A n) = evenPowerMoment A := by
    rw [← primePowerInventory, sum_square_inventory]
    apply Finset.sum_congr rfl
    intro n _
    exact sourceTerm_square A n
  have ho : (∑ n ∈ (Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊).filter
      (fun n ↦ IsPrimePow n ∧ ¬Nat.Prime n ∧ ¬IsSquare n), sourceTerm A n) =
      oddHigherMoment A := by
    rw [sum_odd_prime_power_inventory]
    apply Finset.sum_congr rfl
    intro p hp
    apply Finset.sum_congr rfl
    intro k _
    exact sourceTerm_odd_power A p k (Finset.mem_filter.mp hp).2
  rw [hp, hs, ho]

/-- The unchanged residual splits exactly, using the already proved vanishing upper atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante79f3d589f7182d10f8de31bab65e420a526173bee74bbace839fc178f26d761.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad91a688c786de277f5344fbd04d9fea2d5ab936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
