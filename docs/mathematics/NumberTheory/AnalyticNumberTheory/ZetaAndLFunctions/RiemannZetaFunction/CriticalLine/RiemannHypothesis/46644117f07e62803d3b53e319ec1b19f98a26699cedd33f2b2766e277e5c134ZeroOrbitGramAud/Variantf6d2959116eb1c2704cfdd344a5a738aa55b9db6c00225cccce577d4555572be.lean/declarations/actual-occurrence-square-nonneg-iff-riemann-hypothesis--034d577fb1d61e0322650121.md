# actual_occurrence_square_nonneg_iff_riemann_hypothesis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd69f3dd-267d-1e04-c7ae-6aba50b83c7c",
  "kind": "theorem",
  "lexical_name": "actual_occurrence_square_nonneg_iff_riemann_hypothesis",
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
  "slug": "actual-occurrence-square-nonneg-iff-riemann-hypothesis--034d577fb1d61e0322650121",
  "source": {
    "blob": "08eb4e5d1fdbdeff6333c17ea21f2faa8ac86611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 227,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:034d577fb1d61e0322650121a61a9622e4612a79527fd9c06ffc0d8288152cc1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd69f3dd-267d-1e04-c7ae-6aba50b83c7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_occurrence_square_nonneg_iff_riemann_hypothesis :
    ActualOccurrenceSquareNonneg ↔ _root_.RiemannHypothesis := by
  constructor
  · exact fun h ↦ estimate_iff_riemann_hypothesis.mp (estimate_of_actual_occurrence_square_nonneg h)
  · intro hRH A hA o
    have hi := actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
    simp only [pow_two, Complex.mul_re, hi, mul_zero, sub_zero]
    exact mul_self_nonneg _

/-- The two prescribed pole factors remain zeros of the actual unnormalized test transform. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08eb4e5d1fdbdeff6333c17ea21f2faa8ac86611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
