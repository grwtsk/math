# thetaPhiShiftedCharlier_seven_pi_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:429d1de2-47fa-78b7-dbdf-1d12162999fa",
  "kind": "theorem",
  "lexical_name": "thetaPhiShiftedCharlier_seven_pi_neg",
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
  "slug": "thetaphishiftedcharlier-seven-pi-neg--c7f24a59a41e76164aa75ea3",
  "source": {
    "blob": "8a8539100392c55527b93faee4403a811fe6b475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 74,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f24a59a41e76164aa75ea3f9b9f2cbfccfec0675c6c9f2239246e83126b0f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:429d1de2-47fa-78b7-dbdf-1d12162999fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhiShiftedCharlier_seven_pi_neg :
    thetaPhiShiftedCharlier 7 Real.pi < 0 := by
  rw [thetaPhiShiftedCharlier_seven_shift]
  let x : ℝ := Real.pi - 3
  let r : ℝ := 177 / 1250
  have hx0 : 0 ≤ x := by
    dsimp [x]
    exact (sub_nonneg.mpr Real.pi_gt_three.le)
  have hxr : x ≤ r := by
    have hpi := Real.pi_lt_d4
    dsimp [x, r]
    norm_num at hpi ⊢
    linarith
  have h2 : x ^ 2 ≤ r ^ 2 :=
    pow_le_pow_left₀ hx0 hxr 2
  have h3 : x ^ 3 ≤ r ^ 3 :=
    pow_le_pow_left₀ hx0 hxr 3
  have h4 : x ^ 4 ≤ r ^ 4 :=
    pow_le_pow_left₀ hx0 hxr 4
  have h5 : x ^ 5 ≤ r ^ 5 :=
    pow_le_pow_left₀ hx0 hxr 5
  have h6 : x ^ 6 ≤ r ^ 6 :=
    pow_le_pow_left₀ hx0 hxr 6
  have h7 : x ^ 7 ≤ r ^ 7 :=
    pow_le_pow_left₀ hx0 hxr 7
  have hr :
      128 * r ^ 7 + 1344 * r ^ 6 +
          10080 * r ^ 5 + 31920 * r ^ 4 +
            103320 * r ^ 3 + 74844 * r ^ 2 +
              222642 * r - 78975 < 0 := by
    dsimp [r]
    norm_num
  change
    128 * x ^ 7 + 1344 * x ^ 6 +
        10080 * x ^ 5 + 31920 * x ^ 4 +
          103320 * x ^ 3 + 74844 * x ^ 2 +
            222642 * x - 78975 < 0
  nlinarith only [hxr, h2, h3, h4, h5, h6, h7, hr]

/-- Scalar multiplication of an entire jet pulls out one scalar from each row
of its Hankel determinant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variant8fc0ed52ba03d9e63c22d692b73b36b24a1a5afd787cc9e27278be3cf119ca20.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a8539100392c55527b93faee4403a811fe6b475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
