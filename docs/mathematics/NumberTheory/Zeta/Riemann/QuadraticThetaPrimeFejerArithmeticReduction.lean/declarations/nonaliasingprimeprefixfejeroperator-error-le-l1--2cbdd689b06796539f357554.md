# nonAliasingPrimePrefixFejerOperator_error_le_L1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac751c7e-ba79-223e-d9c1-0073ff1a2c98",
  "kind": "theorem",
  "lexical_name": "nonAliasingPrimePrefixFejerOperator_error_le_L1",
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
  "slug": "nonaliasingprimeprefixfejeroperator-error-le-l1--2cbdd689b06796539f357554",
  "source": {
    "blob": "47f16e128dccf02f1fca4bd21a19ebdabe22d2c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cbdd689b06796539f357554f53bf2197a27716d51d7aeafbcedc8d118253d08",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac751c7e-ba79-223e-d9c1-0073ff1a2c98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonAliasingPrimePrefixFejerOperator_error_le_L1
    {X N m : ℕ}
    (hX : 0 < X)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    |nonAliasingPrimePrefixFejerOperator.error X N m| ≤
      (1 + Real.log ((4 * X : ℕ) : ℝ)) *
        nonAliasingFejerSharpStepL1Error X N m := by
  rw [nonAliasingPrimePrefixFejerOperator_error_eq_atom_weight_error hm0 hm1]
  exact (abs_sum_le_sum_abs _ _).trans <| by
    unfold nonAliasingFejerSharpStepL1Error
    calc
      ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
          |primeDiscrepancyAtom n *
            (sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n)|
        = ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
            |primeDiscrepancyAtom n| *
              |sharpPrefixWeight X m n -
                nonAliasingFejerPrefixWeight X N m n| := by
              apply Finset.sum_congr rfl
              intro n hn
              rw [abs_mul]
      _ ≤ ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
          (1 + Real.log ((4 * X : ℕ) : ℝ)) *
            |sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n| := by
            apply Finset.sum_le_sum
            intro n hn
            exact mul_le_mul_of_nonneg_right
              (primeDiscrepancyAtom_abs_le hX hn)
              (abs_nonneg _)
      _ = (1 + Real.log ((4 * X : ℕ) : ℝ)) *
          ∑ n ∈ Finset.Ioc (2 * X) (4 * X),
            |sharpPrefixWeight X m n -
              nonAliasingFejerPrefixWeight X N m n| := by
            rw [Finset.mul_sum]

/-- Purely combinatorial frontier: the L1 distance between a sharp prefix and
its nonnegative mass-one period-4X Fejer smoothing is controlled by the kernel
first moment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerArithmeticReduction.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47f16e128dccf02f1fca4bd21a19ebdabe22d2c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
