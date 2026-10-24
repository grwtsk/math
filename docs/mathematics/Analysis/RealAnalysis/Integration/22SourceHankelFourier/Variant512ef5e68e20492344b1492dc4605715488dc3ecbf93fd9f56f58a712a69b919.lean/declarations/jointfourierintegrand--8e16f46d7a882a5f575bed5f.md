# jointFourierIntegrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcb1fccd9aba96bb07dc0de854139ff6d1cdad08d9285de25e0088c6b2158b03",
  "kind": "def",
  "lexical_name": "jointFourierIntegrand",
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
  "slug": "jointfourierintegrand--8e16f46d7a882a5f575bed5f",
  "source": {
    "blob": "9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 169,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8e16f46d7a882a5f575bed5f39891100fb85b244fc5a29bcf17dc64a1e16e59a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcb1fccd9aba96bb07dc0de854139ff6d1cdad08d9285de25e0088c6b2158b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def jointFourierIntegrand (A : ℝ) (s t : Finset ℕ) (c d : ℕ → ℝ) (ξ : ℝ) : ℝ :=
  (arithmeticPolynomial s c ξ * arithmeticPolynomial t d ξ).re * sourceFourierSquare A ξ

/-- Exact finite expansion precedes all estimates on the joint product. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant512ef5e68e20492344b1492dc4605715488dc3ecbf93fd9f56f58a712a69b919.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d89c37cf0d058a8c7772d9ad13d0c4bd8dc6add` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
