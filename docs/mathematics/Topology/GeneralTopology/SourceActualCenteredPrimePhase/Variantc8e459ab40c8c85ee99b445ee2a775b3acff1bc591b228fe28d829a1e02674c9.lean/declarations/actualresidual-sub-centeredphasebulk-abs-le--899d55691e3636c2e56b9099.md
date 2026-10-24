# actualResidual_sub_centeredPhaseBulk_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ce2c4fb-3c0d-473d-c63b-8342afc312e5",
  "kind": "theorem",
  "lexical_name": "actualResidual_sub_centeredPhaseBulk_abs_le",
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
  "slug": "actualresidual-sub-centeredphasebulk-abs-le--899d55691e3636c2e56b9099",
  "source": {
    "blob": "5a19f59d450a7636301e11bf08a38c7d10b6846d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:899d55691e3636c2e56b909933d2feaea172ddf3addbcbeddb1cafeada22be95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ce2c4fb-3c0d-473d-c63b-8342afc312e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualResidual_sub_centeredPhaseBulk_abs_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    |mertensResidual A - actualCenteredPrimePhaseBulk A c (actualBumpMovingHeight A c)| ≤
      (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A) +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5))) / A ^ 9 := by
  have hi : actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
      actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c) =
        actualCenteredPrimeLogBoundary A c (actualBumpMovingHeight A c) := by
    rw [actualClosedPrimeHead_eq_centeredBulk_add_boundary A c _ hA, add_sub_cancel_left]
  rw [← actualCenteredPrimeLogBulk_real_eq_phaseBulk]
  calc
    _ = |((mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)).re| := by
      simp only [Complex.sub_re, Complex.ofReal_re]
    _ ≤ ‖(mertensResidual A : ℂ) -
        actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ := Complex.abs_re_le_norm _
    _ ≤ ‖(mertensResidual A : ℂ) - actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ +
        ‖actualClosedPrimeHead A c (actualBumpMovingHeight A c) -
          actualCenteredPrimeLogBulk A c (actualBumpMovingHeight A c)‖ :=
      norm_sub_le_norm_sub_add_norm_sub _ _ _
    _ ≤ (actualBumpMovingTailConstant c +
        actualClosedPrimeHeadErrorConstant c d * Real.exp (-2 * (c - d) * A)) / A ^ 9 +
        2 * actualEulerLogBoundaryConstant c * Real.exp (-((2 * c - 1) * A / 5)) / A ^ 9 := by
      rw [hi]
      exact add_le_add (actualResidual_sub_closedHead_norm_le A c d hA hd hdc)
        (actualCenteredPrimeLogBoundary_moving_norm_le A c hA (by linarith))
    _ = _ := by ring

/-- The original residual and full b*S-a*Q integral differ by o(1) along every real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhase/Variantc8e459ab40c8c85ee99b445ee2a775b3acff1bc591b228fe28d829a1e02674c9.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a19f59d450a7636301e11bf08a38c7d10b6846d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
