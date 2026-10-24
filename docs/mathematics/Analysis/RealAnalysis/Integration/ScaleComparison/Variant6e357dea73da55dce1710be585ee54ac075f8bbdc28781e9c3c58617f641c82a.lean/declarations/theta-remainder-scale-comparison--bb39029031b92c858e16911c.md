# theta_remainder_scale_comparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63fdb2f0-37db-e5f1-bef9-f52aee20962e",
  "kind": "theorem",
  "lexical_name": "theta_remainder_scale_comparison",
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
  "slug": "theta-remainder-scale-comparison--bb39029031b92c858e16911c",
  "source": {
    "blob": "f16a4d7b8718bd1035ee13e143e263c3809508b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 136,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb39029031b92c858e16911c6adbaef5919c74ae19d6d597ff6c37a3d46d703d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fdb2f0-37db-e5f1-bef9-f52aee20962e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_remainder_scale_comparison (A : ℝ) (q p : ℕ)
    (hA : 1 ≤ A) (hq : 1 ≤ q) (hp : 1 ≤ p) :
    |Real.sqrt (p : ℝ) * ThetaRemainder.thetaRemainder A (p * q) -
      ThetaRemainder.thetaRemainder A q| ≤
      scaleComparisonCoefficient A * Real.log (p : ℝ) / Real.sqrt (q : ℝ) := by
  have hpq : 1 ≤ p * q := by nlinarith
  have h := real_remainder_scale_comparison A (q : ℝ) (p : ℝ) hA
    (by exact_mod_cast hq) (by exact_mod_cast hp)
  rw [← Nat.cast_mul, realThetaRemainder_eq_nat A (p*q) hpq,
    realThetaRemainder_eq_nat A q hq] at h
  exact h

/-- The first-prime source difference gains the same inverse-A coefficient, with log two. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ScaleComparison/Variant6e357dea73da55dce1710be585ee54ac075f8bbdc28781e9c3c58617f641c82a.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f16a4d7b8718bd1035ee13e143e263c3809508b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
