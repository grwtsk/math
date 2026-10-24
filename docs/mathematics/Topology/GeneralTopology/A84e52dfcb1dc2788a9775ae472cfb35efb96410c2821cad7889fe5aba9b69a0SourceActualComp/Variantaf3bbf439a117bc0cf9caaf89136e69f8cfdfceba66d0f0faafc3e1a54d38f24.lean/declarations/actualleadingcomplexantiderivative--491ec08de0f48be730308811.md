# actualLeadingComplexAntiderivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d4547f96b84ec10d757f24eb5c5608b5ee6dd61933daf9404d71ae3bba2a7fa",
  "kind": "def",
  "lexical_name": "actualLeadingComplexAntiderivative",
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
  "slug": "actualleadingcomplexantiderivative--491ec08de0f48be730308811",
  "source": {
    "blob": "d8f54fa51a7a81b8539eebaf324cf250c3c76c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:491ec08de0f48be730308811c700ea4db645a0b5728b828ac8372cae9dca92ca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d4547f96b84ec10d757f24eb5c5608b5ee6dd61933daf9404d71ae3bba2a7fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualLeadingComplexAntiderivative (z : ℂ) (u : ℝ) : ℂ :=
  Complex.exp (-z * (u : ℂ)) *
    (-192 * ((u : ℂ)^2 / z + 2 * (u : ℂ) / z^2 + 2 / z^3) +
      4 * ((u : ℂ)^4 / z + 4 * (u : ℂ)^3 / z^2 + 12 * (u : ℂ)^2 / z^3 +
        24 * (u : ℂ) / z^4 + 24 / z^5))

/-- Every genuine polynomial-exponential term vanishes in this half plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/A84e52dfcb1dc2788a9775ae472cfb35efb96410c2821cad7889fe5aba9b69a0SourceActualComp/Variantaf3bbf439a117bc0cf9caaf89136e69f8cfdfceba66d0f0faafc3e1a54d38f24.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f54fa51a7a81b8539eebaf324cf250c3c76c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
