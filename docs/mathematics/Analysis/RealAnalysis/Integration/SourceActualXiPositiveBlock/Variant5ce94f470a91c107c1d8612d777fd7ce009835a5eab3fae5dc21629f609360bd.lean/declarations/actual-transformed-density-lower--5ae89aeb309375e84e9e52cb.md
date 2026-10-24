# actual_transformed_density_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97e3c440-cb8d-0146-d3d9-285d9ce23c0f",
  "kind": "theorem",
  "lexical_name": "actual_transformed_density_lower",
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
  "slug": "actual-transformed-density-lower--5ae89aeb309375e84e9e52cb",
  "source": {
    "blob": "af5f6d9d902393e8c32464af92db7956bd1c066b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Variant5ce94f470a91c107c1d8612d777fd7ce009835a5eab3fae5dc21629f609360bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ae89aeb309375e84e9e52cb5176c1601df5e89639c1cb30b12445a0daa02295",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Variant5ce94f470a91c107c1d8612d777fd7ce009835a5eab3fae5dc21629f609360bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97e3c440-cb8d-0146-d3d9-285d9ce23c0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_density_lower {A y : ℝ} (hA : 40 ≤ A)
    (hy : (13 / 2 : ℝ) ≤ y) (hy7 : y < 7) :
    (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ) ≤ actualTransformedXiBlockDensity A y := by
  have hn := shiftedActualChebyshev_negative_on_block y hy hy7
  have hk := actual_transformed_kernel_negative hA hy hy7.le
  have hp : 0 < y := by linarith
  have hprod : (1 / 24 : ℝ) ≤ shiftedActualChebyshev y *
      (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) := by
    have hm := mul_le_mul_of_nonneg_left (show (1 / 4 : ℝ) ≤
      -(deriv (sourceCorrelation explicitSecondDerivative A) (Real.log y) -
        sourceCorrelation explicitSecondDerivative A (Real.log y) / 2) by linarith)
      (show 0 ≤ -shiftedActualChebyshev y by linarith)
    nlinarith
  exact div_le_div_of_nonneg_right hprod (Real.rpow_pos_of_pos hp _).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Variant5ce94f470a91c107c1d8612d777fd7ce009835a5eab3fae5dc21629f609360bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlock/Variant5ce94f470a91c107c1d8612d777fd7ce009835a5eab3fae5dc21629f609360bd.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5f6d9d902393e8c32464af92db7956bd1c066b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
