# actualMixed_firstColumn_not_curvature_only

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:213a3b0d-183d-4b87-098f-93ddedefa727",
  "kind": "theorem",
  "lexical_name": "actualMixed_firstColumn_not_curvature_only",
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
  "slug": "actualmixed-firstcolumn-not-curvature-only--0746da67299e1cbf1a8801a0",
  "source": {
    "blob": "256c8088a02d235ad31384637e40f1a1520a34dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0746da67299e1cbf1a8801a0893815eca8be0ba24d1de5dee1dbbfda86d2c7fa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:213a3b0d-183d-4b87-098f-93ddedefa727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualMixed_firstColumn_not_curvature_only {A t u : ℝ} (hA : 25600 ≤ A)
    (ht : Real.log (vaughanCutoff A : ℝ) ≤ t)
    (ht1 : t ≤ Real.log (vaughanCutoff A : ℝ) + 1)
    (hu : ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ u)
    (hu2 : u ≤ ((vaughanCutoff A + 2 : ℕ) : ℝ)) :
    ¬ |actualMixedColumnCoefficient A t u| ≤ 5 / A ^ 2 := by
  intro h
  have hb := actualMixed_firstColumn_coefficient_abs_lower hA ht ht1 hu hu2
  have hsmall : (5 : ℝ) / A ^ 2 ≤ 1 / 1600 := by
    calc
      _ ≤ 5 / 8000 := div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
      _ = 1 / 1600 := by norm_num
  linarith

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualDoubleMixedStrictWindowChallengeSourceNative01/Variant0fa1707c905a11fe0ca76631e6e80e40bf2f163770ec718a84acec03b15a7a79.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `256c8088a02d235ad31384637e40f1a1520a34dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
