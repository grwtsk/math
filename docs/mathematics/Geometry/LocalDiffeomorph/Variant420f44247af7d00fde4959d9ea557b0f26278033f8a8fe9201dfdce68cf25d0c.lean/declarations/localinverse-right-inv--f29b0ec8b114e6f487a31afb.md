# localInverse_right_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d808af5-6758-e81b-2531-d19b1c98a092",
  "kind": "lemma",
  "lexical_name": "localInverse_right_inv",
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
  "slug": "localinverse-right-inv--f29b0ec8b114e6f487a31afb",
  "source": {
    "blob": "da2f771d21560dafda5cfd832d4ce0655565f558",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 205,
    "path": "GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29b0ec8b114e6f487a31afb6c22ff6278f044fdc7a852a99b3991535f89e7d8",
  "verification": {
    "reference": "docs/verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d808af5-6758-e81b-2531-d19b1c98a092`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma localInverse_right_inv (hf : IsLocalDiffeomorphAt I J n f x) {y : N}
    (hy : y ∈ hf.localInverse.source) : f (hf.localInverse y) = y := by
  have : hf.localInverse y ∈ hf.choose.source := by
    rw [← hf.choose.symm_target]
    exact hf.choose.symm.map_source hy
  rw [hf.choose_spec.2 this]
  exact hf.choose.right_inv hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/LocalDiffeomorph/Variant420f44247af7d00fde4959d9ea557b0f26278033f8a8fe9201dfdce68cf25d0c.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da2f771d21560dafda5cfd832d4ce0655565f558` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
