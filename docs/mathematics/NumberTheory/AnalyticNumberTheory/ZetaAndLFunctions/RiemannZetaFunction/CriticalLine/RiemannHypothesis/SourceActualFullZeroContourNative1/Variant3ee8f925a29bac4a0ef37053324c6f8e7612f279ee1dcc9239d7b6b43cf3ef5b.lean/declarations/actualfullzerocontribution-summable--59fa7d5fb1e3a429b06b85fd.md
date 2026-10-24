# actualFullZeroContribution_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fead706d-3a0f-0c27-53fd-12bbb2caffc8",
  "kind": "theorem",
  "lexical_name": "actualFullZeroContribution_summable",
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
  "slug": "actualfullzerocontribution-summable--59fa7d5fb1e3a429b06b85fd",
  "source": {
    "blob": "6848c3da1ab81a51530a2de75df0e3e68a972ec2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variant3ee8f925a29bac4a0ef37053324c6f8e7612f279ee1dcc9239d7b6b43cf3ef5b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59fa7d5fb1e3a429b06b85fd1ad99540a5c33ce572350b0a52447cce21e86e1e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variant3ee8f925a29bac4a0ef37053324c6f8e7612f279ee1dcc9239d7b6b43cf3ef5b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fead706d-3a0f-0c27-53fd-12bbb2caffc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFullZeroContribution_summable (A : ℝ) (hA : 1 ≤ A) :
    Summable (fun ρ : (zetaZeros zetaSeam).carrier =>
      ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ) := by
  have h := WeilEF.EF_zero_sum_summable zetaSeam
    (actualInitialPrimeKernel_contDiff A hA) (actualInitialPrimeKernel_hasCompactSupport A hA)
  simpa only [actualInitialPrimeMellin_eq_Hfn, WeilEF.Hfn, gammaOf] using h

/-- Genuine gamma-line L1, before any split of the completed contour. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variant3ee8f925a29bac4a0ef37053324c6f8e7612f279ee1dcc9239d7b6b43cf3ef5b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualFullZeroContourNative1/Variant3ee8f925a29bac4a0ef37053324c6f8e7612f279ee1dcc9239d7b6b43cf3ef5b.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6848c3da1ab81a51530a2de75df0e3e68a972ec2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
