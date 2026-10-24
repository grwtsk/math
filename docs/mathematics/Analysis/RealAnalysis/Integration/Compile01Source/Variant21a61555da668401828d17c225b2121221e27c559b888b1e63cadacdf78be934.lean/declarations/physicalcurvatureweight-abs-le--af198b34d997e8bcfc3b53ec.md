# physicalCurvatureWeight_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:deaf21ca-7507-48c1-206d-fe129d076fda",
  "kind": "theorem",
  "lexical_name": "physicalCurvatureWeight_abs_le",
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
  "slug": "physicalcurvatureweight-abs-le--af198b34d997e8bcfc3b53ec",
  "source": {
    "blob": "0ee632c6af60f4d9094111dd3272d680e3ba9d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af198b34d997e8bcfc3b53ec0f9b654e4c7922f11e9584e282b1a4faca86b8fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:deaf21ca-7507-48c1-206d-fe129d076fda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem physicalCurvatureWeight_abs_le (A t : ℝ) (hA : 1 ≤ A) :
    |physicalCurvatureWeight A t| ≤ physicalWeightBudget A := by
  have hp : 0 < A := by linarith
  have hd := actual_physical_derivative_bounds A t hA
  have hq : |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| ≤
      5 / (2 * A) := by
    rw [abs_div, abs_ofNat]
    calc
      _ ≤ (5 / A) / 2 := div_le_div_of_nonneg_right hd.1 (by norm_num)
      _ = _ := by field_simp; ring
  calc
    _ ≤ |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t / 2| := abs_sub _ _
    _ ≤ 162826 / (7623 * A ^ 2) + 5 / (2 * A) := add_le_add hd.2 hq
    _ = _ := by simp only [physicalWeightBudget, physicalCurvatureCoefficient, div_div]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Compile01Source/Variant21a61555da668401828d17c225b2121221e27c559b888b1e63cadacdf78be934.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ee632c6af60f4d9094111dd3272d680e3ba9d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
