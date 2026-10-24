# primeDeficit_le_sharp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac687cd6-ad31-fa4f-93e9-b2383abc8f96",
  "kind": "theorem",
  "lexical_name": "primeDeficit_le_sharp",
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
  "slug": "primedeficit-le-sharp--b16f79551894b66f1e9090f6",
  "source": {
    "blob": "e46e204bdb20abfb4870ac6686de23a48adb1e49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 188,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b16f79551894b66f1e9090f6e1ba3d78846fe866be55081e3f030852d9c39625",
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

Occurrence: `result:ac687cd6-ad31-fa4f-93e9-b2383abc8f96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeDeficit_le_sharp {A : ℝ} (hA : 1 ≤ A) {p : ℕ} (hp : 1 ≤ p) :
    primeDeficit A p ≤ (162826 / 7623 : ℝ) *
      ((Real.log p)^3 / Real.sqrt p) / (2*A^2) := by
  rw [primeDeficit_eq]
  have h := mul_le_mul_of_nonneg_left (correlation_deficit_le_sharp hA (Real.log p))
    (primeConstant_nonneg hp)
  calc
    _ ≤ primeConstant p * ((162826 / 7623 : ℝ) * (Real.log p)^2 / (2*A^2)) := h
    _ = _ := by unfold primeConstant; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variant6e2f5efa5ca1e5424a6f5ccb4b442820dd6e8be127957998651b2e530d1f8498.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e46e204bdb20abfb4870ac6686de23a48adb1e49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
