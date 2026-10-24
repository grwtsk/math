# two_prime_calibration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:338b22f3-e75a-ccc6-66ac-9588490492bd",
  "kind": "theorem",
  "lexical_name": "two_prime_calibration",
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
  "slug": "two-prime-calibration--547437947a11d769b1f14b05",
  "source": {
    "blob": "9a35605b513956832b58a8d634439d3bc5070760",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 197,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:547437947a11d769b1f14b05e3a1a5225f8fe76fbd13046fd7beae53db89e385",
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

Occurrence: `result:338b22f3-e75a-ccc6-66ac-9588490492bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_prime_calibration {A : ℝ} (hA : 1 ≤ A) :
    0 ≤ primeDeficit A 2 + primeDeficit A 3 ∧
      primeDeficit A 2 + primeDeficit A 3 ≤ calibrationConstant/A^2 := by
  refine ⟨add_nonneg (primeDeficit_nonneg hA (by norm_num))
    (primeDeficit_nonneg hA (by norm_num)), ?_⟩
  have h := add_le_add (primeDeficit_le_sharp hA (p:=2) (by norm_num))
    (primeDeficit_le_sharp hA (p:=3) (by norm_num))
  calc
    _ ≤ (162826 / 7623 : ℝ)*((Real.log (2:ℕ))^3/Real.sqrt (2:ℕ))/(2*A^2) +
      (162826 / 7623 : ℝ)*((Real.log (3:ℕ))^3/Real.sqrt (3:ℕ))/(2*A^2) := h
    _ = _ := by norm_num only [Nat.cast_ofNat]; unfold calibrationConstant; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCommonMeanCalibration/Variantd3402d5801e721084f57831c22ca1f1043f4f18fc4f7fd8d06be48b8075ba917.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a35605b513956832b58a8d634439d3bc5070760` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
