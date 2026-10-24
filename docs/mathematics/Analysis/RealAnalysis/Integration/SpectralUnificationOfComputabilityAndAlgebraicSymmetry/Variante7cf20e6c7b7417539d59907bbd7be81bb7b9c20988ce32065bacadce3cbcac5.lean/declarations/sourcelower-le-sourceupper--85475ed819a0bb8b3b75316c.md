# sourceLower_le_sourceUpper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04f3cec5-c4ff-4a7e-5ac4-0e3c59127d3d",
  "kind": "theorem",
  "lexical_name": "sourceLower_le_sourceUpper",
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
  "slug": "sourcelower-le-sourceupper--85475ed819a0bb8b3b75316c",
  "source": {
    "blob": "116a2e8e67c38f51b239ae950b0cd0e9760bca1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85475ed819a0bb8b3b75316cc16d2ab26628d7be140f106fba5ce29cad119b1b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04f3cec5-c4ff-4a7e-5ac4-0e3c59127d3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLower_le_sourceUpper (A : ℝ) (hA : 1 ≤ A) :
    sourceLower A ≤ sourceUpper A := by
  have hA0 : 0 < A := by linarith
  have hlog := Real.log_le_sub_one_of_pos hA0
  unfold sourceLower sourceUpper
  calc
    A^2 = Real.exp (Real.log A + Real.log A) := by
      rw [Real.exp_add, Real.exp_log hA0, pow_two]
    _ ≤ Real.exp (2 * A) := Real.exp_le_exp.mpr (by linarith)

/-- The derivative integral keeps the actual lower endpoint and uses the proved upper zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante7cf20e6c7b7417539d59907bbd7be81bb7b9c20988ce32065bacadce3cbcac5.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `116a2e8e67c38f51b239ae950b0cd0e9760bca1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
