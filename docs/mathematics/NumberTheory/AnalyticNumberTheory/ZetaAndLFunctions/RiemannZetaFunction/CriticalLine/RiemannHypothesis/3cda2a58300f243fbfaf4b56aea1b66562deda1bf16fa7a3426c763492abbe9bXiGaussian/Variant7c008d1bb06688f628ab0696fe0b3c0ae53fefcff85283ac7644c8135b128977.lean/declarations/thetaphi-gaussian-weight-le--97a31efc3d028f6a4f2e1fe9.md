# thetaPhi_gaussian_weight_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc46e8db-3d8b-9254-128b-1818cc81efc4",
  "kind": "theorem",
  "lexical_name": "thetaPhi_gaussian_weight_le",
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
  "slug": "thetaphi-gaussian-weight-le--97a31efc3d028f6a4f2e1fe9",
  "source": {
    "blob": "db97b6f9b0ada1cc83c690d9f9c9250e95df59db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 16,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a31efc3d028f6a4f2e1fe9b6ed7bf548a1b2176f9f75f94afd9e72f9482eb7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc46e8db-3d8b-9254-128b-1818cc81efc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_gaussian_weight_le {t : ℝ} (ht : 0 ≤ t) :
    thetaPhi t * Real.exp (4 * t ^ 2) ≤ thetaPhiDecayConstant * Real.exp (-t) := by
  have he := Real.quadratic_le_exp_of_nonneg (show 0 ≤ 4 * t by positivity)
  have hpi := mul_le_mul_of_nonneg_right Real.pi_gt_three.le (Real.exp_pos (4 * t)).le
  have hdebt : 10 * t + 4 * t ^ 2 ≤ (Real.pi / 2) * Real.exp (4 * t) := by
    nlinarith [sq_nonneg (4 * t - 1)]
  calc
    _ ≤ (thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t))) * Real.exp (4 * t ^ 2) :=
      mul_le_mul_of_nonneg_right (thetaPhi_le_superexp ht) (Real.exp_pos _).le
    _ = thetaPhiDecayConstant *
        Real.exp (9 * t - (Real.pi / 2) * Real.exp (4 * t) + 4 * t ^ 2) := by
      rw [Real.exp_add]; ring
    _ ≤ _ := mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith))
      thetaPhiDecayConstant_positive.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3cda2a58300f243fbfaf4b56aea1b66562deda1bf16fa7a3426c763492abbe9bXiGaussian/Variant7c008d1bb06688f628ab0696fe0b3c0ae53fefcff85283ac7644c8135b128977.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db97b6f9b0ada1cc83c690d9f9c9250e95df59db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
