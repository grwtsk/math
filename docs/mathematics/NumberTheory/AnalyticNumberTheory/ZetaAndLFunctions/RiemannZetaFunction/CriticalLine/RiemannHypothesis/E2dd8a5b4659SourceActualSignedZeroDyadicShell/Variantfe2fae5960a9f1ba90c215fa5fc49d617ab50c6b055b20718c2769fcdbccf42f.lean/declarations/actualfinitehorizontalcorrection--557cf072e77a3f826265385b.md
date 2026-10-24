# actualFiniteHorizontalCorrection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37142252cb89a929c0e48f146f13aa29bcbad631ef5399243b68c08dfb565378",
  "kind": "def",
  "lexical_name": "actualFiniteHorizontalCorrection",
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
  "slug": "actualfinitehorizontalcorrection--557cf072e77a3f826265385b",
  "source": {
    "blob": "5fa713b6a8583836ac5ec110d977d3ecd0852978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 44,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variantfe2fae5960a9f1ba90c215fa5fc49d617ab50c6b055b20718c2769fcdbccf42f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:557cf072e77a3f826265385be00b3f5e0a746ec35c8b3c9456e84d46eeae4e47",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variantfe2fae5960a9f1ba90c215fa5fc49d617ab50c6b055b20718c2769fcdbccf42f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37142252cb89a929c0e48f146f13aa29bcbad631ef5399243b68c08dfb565378`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualFiniteHorizontalCorrection (A c R : ℝ) : ℂ :=
  (1 / (2 * (Real.pi : ℂ) * I)) *
    (HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c (-R) -
    HIntegral (fun s => actualInitialPrimeMellin A s *
      logDeriv completedRiemannZeta s) (1-c) c R)

/-- The source shell equals the difference of complete open-height heads. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variantfe2fae5960a9f1ba90c215fa5fc49d617ab50c6b055b20718c2769fcdbccf42f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E2dd8a5b4659SourceActualSignedZeroDyadicShell/Variantfe2fae5960a9f1ba90c215fa5fc49d617ab50c6b055b20718c2769fcdbccf42f.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fa713b6a8583836ac5ec110d977d3ecd0852978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
