# actualXiInverseSquareTimeDensity_eq_relative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b11715d-ddb6-9ada-ab25-a2627eba4bf4",
  "kind": "theorem",
  "lexical_name": "actualXiInverseSquareTimeDensity_eq_relative",
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
  "slug": "actualxiinversesquaretimedensity-eq-relative--1346afde5ea68c41c51544a1",
  "source": {
    "blob": "b1afeb79f7cff3d2a06b4194580c13694568ec50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variantd35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1346afde5ea68c41c51544a1bbd008aaf5ce43d80b57d7c882bc54fa80a05f98",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variantd35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b11715d-ddb6-9ada-ab25-a2627eba4bf4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiInverseSquareTimeDensity_eq_relative (t : ℝ) :
    actualXiInverseSquareTimeDensity t = actualRelativePsiTimeError t +
      2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) * Real.exp (-t) := by
  unfold actualXiInverseSquareTimeDensity actualRelativePsiTimeError shiftedActualChebyshev
  ring

/-- Actual PNT gives genuine full logarithmic L1 beyond the closed-seven anchor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variantd35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPntAtOne/Variantd35369807142d7457464ca10a4d5098c3cf5e711e8a7f3f68018cfe796538d1f.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1afeb79f7cff3d2a06b4194580c13694568ec50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
