# actualFixedCenteredMangoldtRiesz_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9c37738-5990-e8d4-7a14-834744e6ef9f",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredMangoldtRiesz_intervalIntegrable",
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
  "slug": "actualfixedcenteredmangoldtriesz-intervalintegrable--4bfe7f6103caded758c7f3b5",
  "source": {
    "blob": "12cb175a2c1cafbb25f23073930eceab3e4162ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant751a229ab6035fbeb87e1e035fd1dccc0047040f83f7ac25b3e33aada562aa93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bfe7f6103caded758c7f3b5745b69808f74ca672e527dc1281e916ae29f2673",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant751a229ab6035fbeb87e1e035fd1dccc0047040f83f7ac25b3e33aada562aa93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9c37738-5990-e8d4-7a14-834744e6ef9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredMangoldtRiesz_intervalIntegrable {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    IntervalIntegrable (actualFixedCenteredMangoldtRieszPrimitive b) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

/-- The full signed integral keeps the exact finite payment after fixed centering. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant751a229ab6035fbeb87e1e035fd1dccc0047040f83f7ac25b3e33aada562aa93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variant751a229ab6035fbeb87e1e035fd1dccc0047040f83f7ac25b3e33aada562aa93.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12cb175a2c1cafbb25f23073930eceab3e4162ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
