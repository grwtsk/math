# RealRescalingInterface

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4ac89b7cd2552da42e579121080eaa84d91b4ae09927424dbbf0078799dc2b25",
  "kind": "structure",
  "lexical_name": "RealRescalingInterface",
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
  "slug": "realrescalinginterface--8b6faf65e965e54652ed0f7e",
  "source": {
    "blob": "1b133e9d19caf02a52f34f18607ebfe291eaf3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8b6faf65e965e54652ed0f7ef475b5bf261f08374105574e30b24e54405e168d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4ac89b7cd2552da42e579121080eaa84d91b4ae09927424dbbf0078799dc2b25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RealRescalingInterface where
  include : F →ₐ[ℚ] E
  fixed : ∀ x : F, galoisComplexConj E (include x) = include x
  order : EmbeddingOrder F (Module.finrank ℚ F)
  representative : Fin (Module.finrank ℚ F) → (E ≃ₐ[ℚ] E)
  covers : ∀ σ : E ≃ₐ[ℚ] E,
    ∃ i, σ = representative i ∨
      σ = (centralInvolution E).conj (representative i)
  real_eval : ∀ (i : Fin (Module.finrank ℚ F)) (x : F),
    (complexEmbeddingAt E (representative i) (include x)).re =
      orderedRealEmbedding order i x

/-- Pull the even CM rescaling row back to the selected representatives of
the totally real embedding coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b133e9d19caf02a52f34f18607ebfe291eaf3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
