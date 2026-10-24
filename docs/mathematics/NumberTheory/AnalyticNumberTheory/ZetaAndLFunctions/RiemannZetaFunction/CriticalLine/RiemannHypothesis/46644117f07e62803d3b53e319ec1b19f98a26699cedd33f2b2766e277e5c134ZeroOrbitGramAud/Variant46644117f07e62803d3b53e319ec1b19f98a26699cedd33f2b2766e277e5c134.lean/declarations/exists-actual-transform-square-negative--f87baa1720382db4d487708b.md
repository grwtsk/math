# exists_actual_transform_square_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0674d0c6c88cb77a2111b11ff0c133b7d413bb05",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a208f50-c5a9-2d79-0332-e60b1d2c9658",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbc5380a-9898-a2fa-5ff3-f3615fca9dec",
  "kind": "theorem",
  "lexical_name": "exists_actual_transform_square_negative",
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
  "slug": "exists-actual-transform-square-negative--f87baa1720382db4d487708b",
  "source": {
    "blob": "0674d0c6c88cb77a2111b11ff0c133b7d413bb05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variant46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87baa1720382db4d487708bb3e8cd55ef684e51da785ccc873b3a508d320e0c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variant46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbc5380a-9898-a2fa-5ff3-f3615fca9dec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_actual_transform_square_negative :
    ∃ A : ℝ, 1 ≤ A ∧ ∃ z : ℂ, -(1 / 2) < z.re ∧ z.re < 1 / 2 ∧
      z.re ≠ 0 ∧ z.im ≠ 0 ∧ (bilateralTransform A z ^ 2).re < 0 := by
  obtain ⟨n, hn⟩ := actual_transform_square_negative_on_sequence.exists
  refine ⟨counterexampleRadius n, hn.1, counterexampleParameter, ?_, ?_, ?_, ?_, hn.2⟩
  all_goals
    first | rw [counterexample_parameter_components.1] | rw [counterexample_parameter_components.2]
    norm_num

/-- The labelled quartet itself can be strictly negative on an arbitrary off-axis strip point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variant46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variant46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0674d0c6c88cb77a2111b11ff0c133b7d413bb05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
