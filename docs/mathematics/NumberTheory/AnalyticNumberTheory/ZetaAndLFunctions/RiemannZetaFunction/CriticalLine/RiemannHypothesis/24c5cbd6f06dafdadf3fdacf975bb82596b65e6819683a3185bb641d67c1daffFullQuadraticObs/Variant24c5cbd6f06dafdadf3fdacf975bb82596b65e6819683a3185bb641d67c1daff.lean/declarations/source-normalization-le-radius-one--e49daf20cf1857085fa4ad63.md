# source_normalization_le_radius_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 342,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/24/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:023a675a-7ba4-cd7e-7f2b-6489510a8c8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25afba2d-7fc0-7b4f-cf98-1bfd86869412",
  "kind": "theorem",
  "lexical_name": "source_normalization_le_radius_one",
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
  "slug": "source-normalization-le-radius-one--e49daf20cf1857085fa4ad63",
  "source": {
    "blob": "12ab86063897381fe485ab3c4b941308d99fd919",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 342,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49daf20cf1857085fa4ad63a21eda2d17855679f75cfad65b99e7f66b460f2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25afba2d-7fc0-7b4f-cf98-1bfd86869412`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_normalization_le_radius_one (A : ℝ) (hA : 1 ≤ A) :
    sourceNormalization A ≤ sourceNormalization 1 := by
  have h2 : 1 ≤ A ^ 2 := one_le_pow₀ hA
  have h4 : 1 ≤ A ^ 4 := one_le_pow₀ hA
  have ht2 : (131072 / 45045 : ℝ) / (2 * A ^ 2) ≤ (131072 / 45045 : ℝ) / 2 :=
    div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by nlinarith)
  have ht4 : (196608 / 5005 : ℝ) / A ^ 4 ≤ (196608 / 5005 : ℝ) := by
    simpa only [div_one] using
      div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 196608 / 5005) zero_lt_one h4
  unfold sourceNormalization
  norm_num only [one_pow, mul_one, div_one]
  linarith

/-- Every actual scaled source density dominates one fixed multiple of the true bump density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daffFullQuadraticObs/Variant24c5cbd6f06dafdadf3fdacf975bb82596b65e6819683a3185bb641d67c1daff.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12ab86063897381fe485ab3c4b941308d99fd919` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
