# actual_power_atom_one_sided

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36a97c49-19e6-e5c1-4f20-e3607a15cc23",
  "kind": "theorem",
  "lexical_name": "actual_power_atom_one_sided",
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
  "slug": "actual-power-atom-one-sided--85aba939a288b03dda272e5c",
  "source": {
    "blob": "bf70136325650aa2ce76d84153fdaf37b1eda8b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 53,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85aba939a288b03dda272e5c450961c4e714999cf6bdc6b00bc83d22d5d89711",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36a97c49-19e6-e5c1-4f20-e3607a15cc23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_power_atom_one_sided (A : ℝ) (n : ℕ) (hA : 91 ≤ A) (hn : 1 ≤ n) :
    -(ArithmeticFunction.vonMangoldt n / (n : ℝ) *
      sourceCorrelation explicitSecondDerivative A (2 * Real.log (n : ℝ))) ≤
      if 3 * A / 10 < Real.log (n : ℝ) then
        ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0 := by
  have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
    div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n)
  by_cases hlog : 3 * A / 10 < Real.log (n : ℝ)
  · rw [if_pos hlog]
    have hC := (abs_le.mp (actual_correlation_abs_le_one A
      (2 * Real.log (n : ℝ)) (by linarith))).1
    nlinarith
  · rw [if_neg hlog]
    have hC := actual_diagonalCorrelation_positive_inner A (n : ℝ) hA
      (by exact_mod_cast hn) (le_of_not_gt hlog)
    exact neg_nonpos.mpr (mul_nonneg hw (by linarith))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceOneSidedPowerDiagonal/Variant5b2b4134742fee97ec5ef9999df1f5b7bc2534802d7953d6292814f68d333ab8.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf70136325650aa2ce76d84153fdaf37b1eda8b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
