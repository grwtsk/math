# cocycles₂_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d15ddc4f-22e2-653b-b464-d173e3e41727",
  "kind": "theorem",
  "lexical_name": "cocycles₂_ext",
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
  "slug": "cocycles-ext--2fbc253a4b131e01e9a79124",
  "source": {
    "blob": "8a6e53aa4eaff2e4f9cf230191b46bdf74f43019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 370,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fbc253a4b131e01e9a79124e50f9eff923598f66259e5b5f58e51c297f37a33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d15ddc4f-22e2-653b-b464-d173e3e41727`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cocycles₂_ext {f₁ f₂ : cocycles₂ A} (h : ∀ g h : G, f₁ (g, h) = f₂ (g, h)) : f₁ = f₂ :=
  DFunLike.ext f₁ f₂ (Prod.forall.mpr h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variant83a64edc8f58670369a28d3cf55c5f02ddd932e4cc9a660952b31004873d3226.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a6e53aa4eaff2e4f9cf230191b46bdf74f43019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
