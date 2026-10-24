# sourceMean_eq_squareWork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae2a806-f97a-7bd7-3d67-cb2b973fb24c",
  "kind": "theorem",
  "lexical_name": "sourceMean_eq_squareWork",
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
  "slug": "sourcemean-eq-squarework--43402e74d8bfa5a8d2a80953",
  "source": {
    "blob": "e46e204bdb20abfb4870ac6686de23a48adb1e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43402e74d8bfa5a8d2a80953352333133beb523275f80257fd135183b900f953",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae2a806-f97a-7bd7-3d67-cb2b973fb24c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMean_eq_squareWork {A : ℝ} (hA : 1 ≤ A) :
    sourceMean A = squareRemovedPairedWork A + primeAtom A 2 + primeAtom A 3 := by
  have hr := mertensResidual_eq_squareRemoved hA
  rw [mertensResidual_eq_closedPrimeMoment A hA,
    closedPrimeMoment_eq_first_square_higher, squareRemainder_eq_core_higher] at hr
  unfold sourceMean firstPrimeRest
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e204bdb20abfb4870ac6686de23a48adb1e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
