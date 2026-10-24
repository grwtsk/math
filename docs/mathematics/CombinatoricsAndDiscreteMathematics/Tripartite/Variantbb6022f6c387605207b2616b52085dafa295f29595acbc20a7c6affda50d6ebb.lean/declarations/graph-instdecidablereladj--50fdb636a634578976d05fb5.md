# graph.instDecidableRelAdj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2f2e88890965a6e35aecb1738daa989c0cee6d846aad049e414a18e31a43bc1",
  "kind": "instance",
  "lexical_name": "graph.instDecidableRelAdj",
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
  "slug": "graph-instdecidablereladj--50fdb636a634578976d05fb5",
  "source": {
    "blob": "b9995c77567f208759a87bce53bd7417b2569062",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50fdb636a634578976d05fb554308593825633e617d15ac01cc722880cab3cc9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2f2e88890965a6e35aecb1738daa989c0cee6d846aad049e414a18e31a43bc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance graph.instDecidableRelAdj : DecidableRel (graph t).Adj
  | in₀ _a, in₀ _a' => Decidable.isFalse not_in₀₀
  | in₀ _a, in₁ _b' => decidable_of_iff' _ in₀₁_iff'
  | in₀ _a, in₂ _c' => decidable_of_iff' _ in₀₂_iff'
  | in₁ _b, in₀ _a' => decidable_of_iff' _ in₁₀_iff'
  | in₁ _b, in₁ _b' => Decidable.isFalse not_in₁₁
  | in₁ _b, in₂ _b' => decidable_of_iff' _ in₁₂_iff'
  | in₂ _c, in₀ _a' => decidable_of_iff' _ in₂₀_iff'
  | in₂ _c, in₁ _b' => decidable_of_iff' _ in₂₁_iff'
  | in₂ _c, in₂ _b' => Decidable.isFalse not_in₂₂

/-- This lemma reorders the elements of a triangle in the tripartite graph. It turns a triangle
`{x, y, z}` into a triangle `{a, b, c}` where `a : α `, `b : β`, `c : γ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Tripartite/Variantbb6022f6c387605207b2616b52085dafa295f29595acbc20a7c6affda50d6ebb.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9995c77567f208759a87bce53bd7417b2569062` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
