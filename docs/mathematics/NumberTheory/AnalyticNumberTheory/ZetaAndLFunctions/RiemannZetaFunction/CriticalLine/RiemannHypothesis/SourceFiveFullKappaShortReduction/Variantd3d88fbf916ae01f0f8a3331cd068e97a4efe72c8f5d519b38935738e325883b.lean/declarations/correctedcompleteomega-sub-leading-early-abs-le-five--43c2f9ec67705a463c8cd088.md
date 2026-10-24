# correctedCompleteOmega_sub_leading_early_abs_le_five

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9593ad11-ef33-685a-f6a2-a77e9b8dacaf",
  "kind": "theorem",
  "lexical_name": "correctedCompleteOmega_sub_leading_early_abs_le_five",
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
  "slug": "correctedcompleteomega-sub-leading-early-abs-le-five--43c2f9ec67705a463c8cd088",
  "source": {
    "blob": "51fdf0d9854e2c7b125f986a4e82490246509b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 256,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c2f9ec67705a463c8cd088bd67e4dc91a5b4efabc46d461cd3706e0cea1327",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9593ad11-ef33-685a-f6a2-a77e9b8dacaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedCompleteOmega_sub_leading_early_abs_le_five {A : ℝ} (hA : 91 ≤ A) :
    |correctedCompleteOmega A -
      (actualLeadingKappaAndTail A + complementaryEarlyBaseline A)| ≤ fiveKappaShortBudget A := by
  rw [correctedCompleteOmega_eq_short_early_tail (by linarith : 1 ≤ A)]
  unfold actualLeadingKappaAndTail
  convert actualFullKappaShort_sub_leading_abs_le_five hA using 1
  congr 1
  ring

/-- The exact actual leading signed sum and full complementary tail retain this smaller error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variantd3d88fbf916ae01f0f8a3331cd068e97a4efe72c8f5d519b38935738e325883b.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fdf0d9854e2c7b125f986a4e82490246509b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
