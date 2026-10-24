# orderedFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c9da960e0fb7b4c3c3332a92cf85622bc298b1c72323b6767d7183abba6465b",
  "kind": "def",
  "lexical_name": "orderedFactor",
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
  "slug": "orderedfactor--e38bc337e3fb584dad88c03c",
  "source": {
    "blob": "b0da7748fa4f0b76fd2f9d29ee6c60eb7b696f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 439,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e38bc337e3fb584dad88c03c92f8519f02564fcebd200e21fe66af36ce5077c6",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c9da960e0fb7b4c3c3332a92cf85622bc298b1c72323b6767d7183abba6465b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def orderedFactor
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    OrderedFactorTree :=
  P.sortedFactor

/-- The combined dyadic/`δ` key of the sorted factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0da7748fa4f0b76fd2f9d29ee6c60eb7b696f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
