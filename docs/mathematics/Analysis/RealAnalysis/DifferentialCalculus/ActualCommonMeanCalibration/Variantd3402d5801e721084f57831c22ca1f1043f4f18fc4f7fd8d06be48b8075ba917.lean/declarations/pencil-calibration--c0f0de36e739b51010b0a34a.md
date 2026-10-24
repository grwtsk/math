# pencil_calibration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab71f0d3-cc71-8e78-657a-b923aab3d25c",
  "kind": "theorem",
  "lexical_name": "pencil_calibration",
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
  "slug": "pencil-calibration--c0f0de36e739b51010b0a34a",
  "source": {
    "blob": "9a35605b513956832b58a8d634439d3bc5070760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 221,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c0f0de36e739b51010b0a34a735a6106c248ba488a13271f5df94726821dadb8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab71f0d3-cc71-8e78-657a-b923aab3d25c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pencil_calibration {A : ℝ} (hA : 1 ≤ A) (a b : ℝ)
    (ha : |a| ≤ 1) (hb : |b| ≤ 1) :
    |sourcePencil A a b + a*primeConstant 2 + b*primeConstant 3-sourceMean A| ≤
      calibrationConstant/A^2 := by
  have he : sourcePencil A a b + a*primeConstant 2 + b*primeConstant 3-sourceMean A =
      a*primeDeficit A 2 + b*primeDeficit A 3 := by
    rw [sourcePencil_eq_mean]
    unfold primeDeficit
    ring
  rw [he]
  have h2 := primeDeficit_nonneg hA (p:=2) (by norm_num)
  have h3 := primeDeficit_nonneg hA (p:=3) (by norm_num)
  calc
    _ ≤ |a*primeDeficit A 2| + |b*primeDeficit A 3| := abs_add_le _ _
    _ ≤ primeDeficit A 2 + primeDeficit A 3 := by
      rw [abs_mul, abs_mul, abs_of_nonneg h2, abs_of_nonneg h3]
      exact add_le_add (by simpa using mul_le_mul_of_nonneg_right ha h2)
        (by simpa using mul_le_mul_of_nonneg_right hb h3)
    _ ≤ _ := (two_prime_calibration hA).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a35605b513956832b58a8d634439d3bc5070760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
