# fullKappaShortBudget_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de7fc496-bc61-c669-7267-acfe92e33fc2",
  "kind": "theorem",
  "lexical_name": "fullKappaShortBudget_eq",
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
  "slug": "fullkappashortbudget-eq--d67705214e142c1a59d06866",
  "source": {
    "blob": "f7da9ff38c347e360f5c7f0b933314e984a9600f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 272,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d67705214e142c1a59d06866c265649a0b8cbe6e2aac1372ea9be6080e749a91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de7fc496-bc61-c669-7267-acfe92e33fc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 272–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fullKappaShortBudget_eq {A : ℝ} (hA : 0 < A) :
    fullKappaShortBudget A =
      (20 * |fullPositiveKappa 1| * (Real.log (vaughanCutoff A : ℝ)) ^ 2 +
        40 * |fullPositiveKappa 2| * Real.log (vaughanCutoff A : ℝ) +
        20 * |fullPositiveKappa 3|) / A +
      (67 / 3 : ℝ) * |fullPositiveKappa 4| * Real.log (vaughanCutoff A : ℝ) / A ^ 3 := by
  unfold fullKappaShortBudget fullKappaJetRowBudget
  field_simp
  ring

/-- The genuine complementary tail is joined to the literal leading signed arithmetic sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceLeadingFullKappaReduction/Variant6fb1b860269c6768fba5ebd7228ae292d71a8cff47f74f0f164e0a383f713330.lean#L272).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f7da9ff38c347e360f5c7f0b933314e984a9600f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
