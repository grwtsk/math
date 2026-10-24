# residual_sub_correctedRationalHead_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac941b58-0696-4b68-cd56-10764f6d57fe",
  "kind": "theorem",
  "lexical_name": "residual_sub_correctedRationalHead_norm_bound",
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
  "slug": "residual-sub-correctedrationalhead-norm-bound--9b1de16f1cccdf75028adc9d",
  "source": {
    "blob": "9a0689b3918ea91ba70d7cab66b3bf5dd33d4dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 95,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Varianta372c1db482b8830db07268c1ba0516e04350e5312e9a6f63bba0e4efbada9da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b1de16f1cccdf75028adc9d303dbcd1c747a712bf21b5104f76f39a09ea24b3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Varianta372c1db482b8830db07268c1ba0516e04350e5312e9a6f63bba0e4efbada9da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac941b58-0696-4b68-cd56-10764f6d57fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem residual_sub_correctedRationalHead_norm_bound (A T : ℝ)
    (hA : 1 ≤ A) (hT : 1 ≤ T) :
    ‖((mertensResidual A - rationalBaseline A : ℝ) : ℂ) - correctedRationalHead A T‖ ≤
      twoLineTailConstant * Real.exp (3 * A) / (A ^ 9 * T ^ 5) := by
  rw [correctedRationalHead_eq_head_sub_baseline A T hA, Complex.ofReal_sub]
  convert mertensResidual_sub_head_norm_bound A T hA hT using 1
  congr 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Varianta372c1db482b8830db07268c1ba0516e04350e5312e9a6f63bba0e4efbada9da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceRationalFiniteHead/Varianta372c1db482b8830db07268c1ba0516e04350e5312e9a6f63bba0e4efbada9da.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a0689b3918ea91ba70d7cab66b3bf5dd33d4dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
