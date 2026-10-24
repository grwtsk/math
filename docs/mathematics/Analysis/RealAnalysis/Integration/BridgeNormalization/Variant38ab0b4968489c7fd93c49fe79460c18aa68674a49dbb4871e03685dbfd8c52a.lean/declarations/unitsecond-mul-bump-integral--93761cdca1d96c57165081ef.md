# unitSecond_mul_bump_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5c5c4c9-1e5b-af93-8d65-7ad545e3a02f",
  "kind": "theorem",
  "lexical_name": "unitSecond_mul_bump_integral",
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
  "slug": "unitsecond-mul-bump-integral--93761cdca1d96c57165081ef",
  "source": {
    "blob": "490649b651808e779f685bc4b7a0a8f28f3a29a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 65,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93761cdca1d96c57165081ef349b9ad260b766a81cc76f228c60b795a2af5a92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5c5c4c9-1e5b-af93-8d65-7ad545e3a02f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitSecond_mul_bump_integral :
    (∫ x : ℝ in (-1)..1, unitSecond x * unitBump x) = -(131072 / 45045 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitSecond x * unitBump x) =
      (fun x ↦ -8 + 104*x^2 - 456*x^4 + 1000*x^6 - 1240*x^8 +
        888*x^10 - 344*x^12 + 56*x^14) := by
    funext x
    dsimp [unitSecond, unitBump]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub,
      intervalIntegral.integral_const_mul, integral_pow, intervalIntegral.integral_const]
  norm_num

/-- Squaring the scaled compact polynomial cancels precisely one factor of A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeNormalization/Variant38ab0b4968489c7fd93c49fe79460c18aa68674a49dbb4871e03685dbfd8c52a.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `490649b651808e779f685bc4b7a0a8f28f3a29a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
