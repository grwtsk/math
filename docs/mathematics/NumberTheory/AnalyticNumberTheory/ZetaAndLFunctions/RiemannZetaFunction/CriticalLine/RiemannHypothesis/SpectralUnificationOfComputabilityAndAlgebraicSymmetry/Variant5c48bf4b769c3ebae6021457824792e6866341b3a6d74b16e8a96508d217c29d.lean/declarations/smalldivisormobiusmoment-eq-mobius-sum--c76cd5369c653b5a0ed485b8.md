# smallDivisorMobiusMoment_eq_mobius_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 230,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eba7f431-562c-b4b9-c9d6-7b5170d42dcc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:00e14639-b190-eda2-19b0-be9b00f0e383",
  "kind": "theorem",
  "lexical_name": "smallDivisorMobiusMoment_eq_mobius_sum",
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
  "slug": "smalldivisormobiusmoment-eq-mobius-sum--c76cd5369c653b5a0ed485b8",
  "source": {
    "blob": "dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 230,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c76cd5369c653b5a0ed485b8a00497786caa2be04c2993f51a456517ef6a3c41",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00e14639-b190-eda2-19b0-be9b00f0e383`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smallDivisorMobiusMoment_eq_mobius_sum (A : ℝ) (hA : 1 ≤ A) :
    smallDivisorMobiusMoment A =
      ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d * sourceMobiusKernel A d := by
  symm
  calc
    _ = ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d *
        (∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
          if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      apply Finset.sum_congr rfl
      intro d hd
      rw [sourceMobiusKernel_integerAgreement_pos A hA d (Finset.mem_Icc.mp hd).1]
    _ = ∑ n ∈ primePowerInventory (2 * A), ∑ dk ∈ n.divisorsAntidiagonal,
        ∑ d ∈ Finset.Icc 1 ⌊sourceLower A⌋₊, realMoebius d *
          (if dk.1 = d then Real.log dk.2 * closedPrimeWeight A n else 0) := by
      simp_rw [Finset.mul_sum]
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro n hn
      rw [Finset.sum_comm]
    _ = smallDivisorMobiusMoment A := by
      unfold smallDivisorMobiusMoment
      apply Finset.sum_congr rfl
      intro n hn
      apply Finset.sum_congr rfl
      intro dk hdk
      have hdpos := (Finset.mem_Icc.mp (first_factor_mem_full_inventory A n hn dk hdk)).1
      have hmem : dk.1 ∈ Finset.Icc 1 ⌊sourceLower A⌋₊ ↔ (dk.1 : ℝ) ≤ A^2 := by
        simp only [Finset.mem_Icc, hdpos, true_and, sourceLower,
          Nat.le_floor_iff (sq_nonneg A)]
      by_cases hsmall : (dk.1 : ℝ) ≤ A^2
      · rw [if_pos hsmall, Finset.sum_eq_single dk.1]
        · simp [realMoebius, mobiusLogTerm, mul_assoc]
        · intro d hd hne
          simp [Ne.symm hne]
        · simp [hmem.mpr hsmall]
      · rw [if_neg hsmall]
        apply Finset.sum_eq_zero
        intro d hd
        have hne : dk.1 ≠ d := by
          intro heq
          exact hsmall (hmem.mp (heq.symm ▸ hd))
        simp [hne]

/-- The real lower cutoff lies inside the original positive source window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5c48bf4b769c3ebae6021457824792e6866341b3a6d74b16e8a96508d217c29d.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbfdd388e1fc43c50b4d1978dd9e40e7db4dc790` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
