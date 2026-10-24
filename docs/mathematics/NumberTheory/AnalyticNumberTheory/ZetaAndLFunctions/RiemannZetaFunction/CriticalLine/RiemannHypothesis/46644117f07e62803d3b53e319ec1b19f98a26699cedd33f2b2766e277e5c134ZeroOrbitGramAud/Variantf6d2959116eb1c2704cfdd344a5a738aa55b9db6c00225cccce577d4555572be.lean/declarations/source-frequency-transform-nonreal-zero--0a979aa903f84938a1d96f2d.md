# source_frequency_transform_nonreal_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4047d2ca-f606-c8f5-1da8-aa4531b4f0a9",
  "kind": "theorem",
  "lexical_name": "source_frequency_transform_nonreal_zero",
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
  "slug": "source-frequency-transform-nonreal-zero--0a979aa903f84938a1d96f2d",
  "source": {
    "blob": "08eb4e5d1fdbdeff6333c17ea21f2faa8ac86611",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 259,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a979aa903f84938a1d96f2d7c202b06baffe9bf60529e743f968a1ecfce51c0",
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

Occurrence: `result:4047d2ca-f606-c8f5-1da8-aa4531b4f0a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_frequency_transform_nonreal_zero (A : ℝ) (hA : 1 ≤ A) :
    sourceFrequencyTransform A (Complex.I / 2) = 0 := by
  unfold sourceFrequencyTransform
  have he : Complex.I * (Complex.I / 2) = -1 / 2 := by
    rw [← mul_div_assoc, Complex.I_mul_I]
  rw [he]
  exact (actual_transform_poles_zero A hA).2

/-- Only the strict norm inequality is named here; no de Branges space is constructed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/46644117f07e62803d3b53e319ec1b19f98a26699cedd33f2b2766e277e5c134ZeroOrbitGramAud/Variantf6d2959116eb1c2704cfdd344a5a738aa55b9db6c00225cccce577d4555572be.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08eb4e5d1fdbdeff6333c17ea21f2faa8ac86611` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
