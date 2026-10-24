# actualXiSevenPoleValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5ee185e0393eca9105112b5e27ab67e0a5420c5aae6da79343d125f9d047738",
  "kind": "def",
  "lexical_name": "actualXiSevenPoleValue",
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
  "slug": "actualxisevenpolevalue--937f143210c17fe14da7096d",
  "source": {
    "blob": "d626f7f3c3b49ebf1239816b2f57ee591d759452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 170,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:937f143210c17fe14da7096df36e0473b72345af1a0976968188934858cd7e45",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5ee185e0393eca9105112b5e27ab67e0a5420c5aae6da79343d125f9d047738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualXiSevenPoleValue : ℂ :=
  Complex.log 7 - 1 - (Real.eulerMascheroniConstant : ℂ) -
    actualClosedMangoldtMellinHeadSeven 1 +
      ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) / 7

/-- The full regularization has the explicit authentic finite value, with no head deleted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt07/Variant389c6c71fd86c503ae661d1496074611d583a5d11f97160542861dc3a57d89c9.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d626f7f3c3b49ebf1239816b2f57ee591d759452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
