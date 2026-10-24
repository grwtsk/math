# sevenHeight_joint_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96cc39fe-94bc-e625-0477-58163a59176b",
  "kind": "theorem",
  "lexical_name": "sevenHeight_joint_bound",
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
  "slug": "sevenheight-joint-bound--655683dbea22e924b20972e2",
  "source": {
    "blob": "6a9cfb6768611b8bf80bfed187f9912ffceec463",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:655683dbea22e924b20972e2c4c7b7d07b5acc3aeadd13dfbebd8b78b388b3df",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96cc39fe-94bc-e625-0477-58163a59176b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sevenHeight_joint_bound {s : ℂ}
    (hx : (1 / 2 : ℝ) ≤ s.re) (hx1 : s.re ≤ 1) (hy : |s.im| ≤ (7 : ℝ)) :
    sevenJointNumerator s ≤ (31 / 32 : ℝ) * sevenJointDenominator s := by
  have hy2 : s.im ^ 2 ≤ (49 : ℝ) := by
    have h := mul_le_mul hy hy (abs_nonneg s.im) (by norm_num : (0 : ℝ) ≤ 7)
    nlinarith [sq_abs s.im]
  have hc := SevenHeightCertificate.squared_ratio_bound hx hx1 (sq_nonneg s.im) hy2
  rw [← sevenJointNumerator_sq, ← sevenJointDenominator_sq] at hc
  apply (sq_le_sq₀ (sevenJointNumerator_nonneg s)
    (mul_nonneg (by norm_num) (sevenJointDenominator_nonneg hx))).mp
  nlinarith

/-- The cancelled s+2 factor is restored before connecting to the actual A5. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripSevenHeightSeed.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a9cfb6768611b8bf80bfed187f9912ffceec463` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
