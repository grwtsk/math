# main_first_no_uniform_prefix_credit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:943c90f1-e39d-0c4e-a4ce-7ba635f847c8",
  "kind": "theorem",
  "lexical_name": "main_first_no_uniform_prefix_credit",
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
  "slug": "main-first-no-uniform-prefix-credit--79f8fa0137c7959e40b9cad4",
  "source": {
    "blob": "dfac110ddd44162b6aa66ec944a7d51425593a66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f8fa0137c7959e40b9cad4d365efcd5c2db84558bb01b6e5cd93f0df2993a5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:943c90f1-e39d-0c4e-a4ce-7ba635f847c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem main_first_no_uniform_prefix_credit (c : ℝ) :
    ∃ A : ℝ, 1 ≤ A ∧
      (∑ i ∈ Finset.range 1, firstPrimeEventGain A i) < -c := by
  let A : ℝ := max 1 (2000 * (c + 1))
  have hA : 1 ≤ A := le_max_left _ _
  have hAc : 2000 * (c + 1) ≤ A := le_max_right _ _
  refine ⟨A, hA, ?_⟩
  simpa using lt_of_le_of_lt (main_first_initial_gain_le hA)
    (show -(A / 2000) < -c by linarith)

/-- An allowed representation refinement moves only the independent main payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Captured030SourceGameScheduleObstruction/Variantcfbf1e110910c50823ccca54d7b4d495a690bc9086b1ed416f8345dfe2febdc3.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfac110ddd44162b6aa66ec944a7d51425593a66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
