# actualFiniteHorizontalCorrection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0ac9233f3c0c50a24f47733ce3bdfb0aff319e73984138c40ff4e32e3b3529b",
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
  "slug": "actualfinitehorizontalcorrection--084c4bafde233bcb037e66cc",
  "source": {
    "blob": "f8571d5cd300f8c5b72bb838f6c759f766ab16a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:084c4bafde233bcb037e66ccc41e5fda04ae4c501a53cb1340ab34ec9a06537c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0ac9233f3c0c50a24f47733ce3bdfb0aff319e73984138c40ff4e32e3b3529b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–43.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedZeroDyadicShellNative02/Variantd8796f9b18a59ab9a6d4ac3bc0360cf30e103fe5d54de13b6e40a0d9894fd89a.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8571d5cd300f8c5b72bb838f6c759f766ab16a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
