# actualXiSevenReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cbd7187560c12fb539d21d2386afa036a7e12ef50d64b1b33afbdaece594276a",
  "kind": "def",
  "lexical_name": "actualXiSevenReturn",
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
  "slug": "actualxisevenreturn--609da96f560bf31afdea441f",
  "source": {
    "blob": "bd44f2a348cf875b001dd30572ce1bd10c7a4e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 32,
    "path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:609da96f560bf31afdea441f91e7182c864d54024f918cd570ac3451385d9c4e",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cbd7187560c12fb539d21d2386afa036a7e12ef50d64b1b33afbdaece594276a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualXiSevenReturn (s : ℂ) : ℂ :=
  -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
    ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
      (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1)

/-- The same complete return is regularized at one using authentic source derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/SourceActualXiSevenPoleCancellation/Variant92436b4455012d45824557318df7b0124b4e68fc7c517f7a170de36b151792e7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd44f2a348cf875b001dd30572ce1bd10c7a4e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
