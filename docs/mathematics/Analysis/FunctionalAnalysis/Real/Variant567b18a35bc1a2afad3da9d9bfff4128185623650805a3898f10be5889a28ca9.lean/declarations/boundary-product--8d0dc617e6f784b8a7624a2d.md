# boundary_product

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb5d1933-b6d8-7fca-6770-2a359d9b0234",
  "kind": "lemma",
  "lexical_name": "boundary_product",
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
  "slug": "boundary-product--8d0dc617e6f784b8a7624a2d",
  "source": {
    "blob": "0af108d554100e3e24777c0dfc2c6be8883cd523",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 466,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d0dc617e6f784b8a7624a2d813b72f557cb8eab8cacce952834d2dc6db9b644",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb5d1933-b6d8-7fca-6770-2a359d9b0234`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma boundary_product [I.Boundaryless] :
    (I.prod (𝓡∂ 1)).boundary (M × Icc x y) = Set.prod univ {⊥, ⊤} := by
  rw [I.boundary_of_boundaryless_left, boundary_Icc]

/-- The manifold structure on `[x, y]` is smooth. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Real/Variant567b18a35bc1a2afad3da9d9bfff4128185623650805a3898f10be5889a28ca9.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0af108d554100e3e24777c0dfc2c6be8883cd523` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
