# actualRightBumpDensity_eq_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e53520-16eb-d195-fc5f-36e3a8c0d09d",
  "kind": "theorem",
  "lexical_name": "actualRightBumpDensity_eq_logDeriv",
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
  "slug": "actualrightbumpdensity-eq-logderiv--a2d6f62a8e3d8e45f40f2a5e",
  "source": {
    "blob": "9c724d16fe29ff0153591b571a7830e05f9c25c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 82,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2d6f62a8e3d8e45f40f2a5eb17077b1f25d6dfa7562b859c071cef27279fd44",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e53520-16eb-d195-fc5f-36e3a8c0d09d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualRightBumpDensity_eq_logDeriv (A c t : ℝ) (hc : 1 < c) :
    actualRightBumpDensity A c t =
      (-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
        riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) *
      bumpMellinWeight A ((c : ℂ) + (t : ℂ) * Complex.I) := by
  unfold actualRightBumpDensity actualMangoldtCoefficients
  rw [ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div
    (show 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re by simpa using hc)]

/-- The exact #383 high-frequency numerator before two-tail integration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTail/Variant32293ba1e9f87b41efee28c7a11727d551c8ae497159d6de64551e6dea18967e.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c724d16fe29ff0153591b571a7830e05f9c25c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
