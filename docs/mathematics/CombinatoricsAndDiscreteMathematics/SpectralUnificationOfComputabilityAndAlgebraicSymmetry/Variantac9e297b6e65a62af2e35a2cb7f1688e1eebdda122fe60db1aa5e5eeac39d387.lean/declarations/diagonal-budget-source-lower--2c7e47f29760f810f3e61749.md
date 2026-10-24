# diagonal_budget_source_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f60a57b-fbb1-3b35-9d92-52b89999b467",
  "kind": "theorem",
  "lexical_name": "diagonal_budget_source_lower",
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
  "slug": "diagonal-budget-source-lower--2c7e47f29760f810f3e61749",
  "source": {
    "blob": "18e2036e74dc81cd3275845ee265a165f8430774",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantac9e297b6e65a62af2e35a2cb7f1688e1eebdda122fe60db1aa5e5eeac39d387.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c7e47f29760f810f3e61749c9ac7b9a02d232da6ab6b36770f26ed95de738e4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantac9e297b6e65a62af2e35a2cb7f1688e1eebdda122fe60db1aa5e5eeac39d387.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f60a57b-fbb1-3b35-9d92-52b89999b467`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonal_budget_source_lower (A : ℝ) (hA : 1 ≤ A) :
    Real.log 2 ^ 2 * (2 * A - 1) ≤
      mobiusDiagonal (sourceKernelCutoff A) * logDiagonal (sourceKernelCutoff A) := by
  have hN : 1 ≤ sourceKernelCutoff A := by
    apply (Nat.le_floor_iff (Real.exp_pos _).le).2
    norm_num only [Nat.cast_one]
    exact Real.one_le_exp (by linarith)
  apply (logDiagonal_source_lower A hA).trans
  simpa only [one_mul] using
    (mul_le_mul_of_nonneg_right (mobiusDiagonal_one_le _ hN) (logDiagonal_nonneg _))

/-- No fixed tail norm budget exists, even if every off-diagonal cost were discarded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantac9e297b6e65a62af2e35a2cb7f1688e1eebdda122fe60db1aa5e5eeac39d387.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantac9e297b6e65a62af2e35a2cb7f1688e1eebdda122fe60db1aa5e5eeac39d387.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e2036e74dc81cd3275845ee265a165f8430774` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
