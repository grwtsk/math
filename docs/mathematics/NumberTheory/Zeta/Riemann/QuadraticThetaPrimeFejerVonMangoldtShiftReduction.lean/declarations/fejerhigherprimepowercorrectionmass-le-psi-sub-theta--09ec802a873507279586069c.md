# fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3728211c-657e-d87c-5d3f-65e14d699dcb",
  "kind": "theorem",
  "lexical_name": "fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta",
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
  "slug": "fejerhigherprimepowercorrectionmass-le-psi-sub-theta--09ec802a873507279586069c",
  "source": {
    "blob": "c0157897853716e8630663f1f070cd3050ee87d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 281,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09ec802a873507279586069c1696d5d32c4bc2829ae232ba717f0c9730dd9e46",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3728211c-657e-d87c-5d3f-65e14d699dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fejerHigherPrimePowerCorrectionMass_le_psi_sub_theta
    (X : ℕ) :
    fejerHigherPrimePowerCorrectionMass X ≤
      Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
        Chebyshev.theta (((4 * X : ℕ) : ℝ)) := by
  rw [fejerHigherPrimePowerCorrectionMass_eq_nonprime_vonMangoldt]
  have hsubset :
      (fejerOctaveIndexSet X).filter (fun n => ¬n.Prime) ⊆
        (Finset.Ioc 0 (4 * X)).filter (fun n => ¬n.Prime) := by
    intro n hn
    rcases Finset.mem_filter.mp hn with ⟨hnI, hnPrime⟩
    have hnOct := Finset.mem_Ioc.mp hnI
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨by omega, hnOct.2⟩, hnPrime⟩
  calc
    (∑ n ∈ (fejerOctaveIndexSet X).filter (fun n => ¬n.Prime),
        ArithmeticFunction.vonMangoldt n)
      ≤
    ∑ n ∈ (Finset.Ioc 0 (4 * X)).filter (fun n => ¬n.Prime),
      ArithmeticFunction.vonMangoldt n := by
        apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
        intro n hn hnot
        exact ArithmeticFunction.vonMangoldt_nonneg
    _ =
      Chebyshev.psi (((4 * X : ℕ) : ℝ)) -
        Chebyshev.theta (((4 * X : ℕ) : ℝ)) := by
          symm
          simpa using
            Chebyshev.psi_sub_theta_eq_sum_not_prime
              (((4 * X : ℕ) : ℝ))

/-- Mathlib's Chebyshev theorem gives a uniform square-root bound for the
higher-prime-power correction mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerVonMangoldtShiftReduction.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0157897853716e8630663f1f070cd3050ee87d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
