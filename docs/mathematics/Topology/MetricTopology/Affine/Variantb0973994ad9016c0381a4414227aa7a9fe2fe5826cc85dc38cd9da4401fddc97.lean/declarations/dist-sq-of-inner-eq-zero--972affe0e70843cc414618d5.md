# dist_sq_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b19a9770-a6fa-3486-c7a2-a8622f28bae8",
  "kind": "theorem",
  "lexical_name": "dist_sq_of_inner_eq_zero",
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
  "slug": "dist-sq-of-inner-eq-zero--972affe0e70843cc414618d5",
  "source": {
    "blob": "9fbc39c2876effbe7ca471748a211da5e06fe330",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 97,
    "path": "GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:972affe0e70843cc414618d555b56819603951e7d8d05b397a6844a2f57b9f9f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b19a9770-a6fa-3486-c7a2-a8622f28bae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_of_inner_eq_zero {a b p : P}
    (h_inner : ⟪p -ᵥ a, b -ᵥ a⟫ = 0) :
    dist p b ^ 2 = dist p a ^ 2 + dist a b ^ 2 := by
  simpa using dist_sq_lineMap_of_inner_eq_zero 1 h_inner

end Real
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Affine/Variantb0973994ad9016c0381a4414227aa7a9fe2fe5826cc85dc38cd9da4401fddc97.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fbc39c2876effbe7ca471748a211da5e06fe330` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
