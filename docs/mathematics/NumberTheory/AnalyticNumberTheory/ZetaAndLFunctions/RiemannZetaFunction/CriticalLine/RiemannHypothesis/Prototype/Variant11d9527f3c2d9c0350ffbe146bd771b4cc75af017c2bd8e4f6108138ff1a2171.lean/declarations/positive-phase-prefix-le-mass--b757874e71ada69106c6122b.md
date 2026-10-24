# positive_phase_prefix_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af5e556fea69cb4bcdabfe196cf76ad4ed4dfb3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 38,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68f94757-a798-e8bf-1a61-b3f7098a108f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af7c78fc-df56-68db-9388-a46cd5a6e3e6",
  "kind": "theorem",
  "lexical_name": "positive_phase_prefix_le_mass",
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
  "slug": "positive-phase-prefix-le-mass--b757874e71ada69106c6122b",
  "source": {
    "blob": "af5e556fea69cb4bcdabfe196cf76ad4ed4dfb3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b757874e71ada69106c6122b2705c8eb2af2b6d9cde0cb1aafe2374e3242dfaa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af7c78fc-df56-68db-9388-a46cd5a6e3e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_phase_prefix_le_mass {A u : ℝ} (hA : 1 ≤ A)
    (hu : u ∈ Set.Icc 0 (2 * A)) :
    (∫ t in 0..u, positiveSlope A t) ≤ positiveMass A := by
  have hp : 0 < A := by linarith
  have hr : 0 ≤ ∫ t in u..2 * A, positiveSlope A t :=
    intervalIntegral.integral_nonneg hu.2 (fun t _ => positiveSlope_nonneg A t)
  have hadd := intervalIntegral.integral_add_adjacent_intervals (μ := volume)
    ((positiveSlope_continuous hp).intervalIntegrable 0 u)
    ((positiveSlope_continuous hp).intervalIntegrable u (2 * A))
  change (∫ t in 0..u, positiveSlope A t) ≤ ∫ t in 0..2 * A, positiveSlope A t
  linarith

/-- A source value controls phase mass before any arithmetic error is introduced. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Prototype/Variant11d9527f3c2d9c0350ffbe146bd771b4cc75af017c2bd8e4f6108138ff1a2171.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5e556fea69cb4bcdabfe196cf76ad4ed4dfb3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
