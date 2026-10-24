# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f7c4ec59a46579464dce0d80e30b575c9bb9eff98c3814aae8762e90cf57e17b",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ae3ab06e3bcabb9df744a837",
  "source": {
    "blob": "01e5c6f0183a39947bf2f761b428cc02455cab6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 143,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae3ab06e3bcabb9df744a837e983c67b3453eb73511b7aea6e7bf876d51138f7",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f7c4ec59a46579464dce0d80e30b575c9bb9eff98c3814aae8762e90cf57e17b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (𝒰.pullbackCoverOverProp S f hX hW hQ).Over S where
  isOver_map j :=
    { comp_over := by exact (pullback.fst (f.asOverProp S) ((𝒰.map j).asOverProp S)).w }

/-- A variant of `AlgebraicGeometry.Scheme.Cover.pullbackCoverOverProp` with the arguments in the
fiber products flipped. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Over/Variantc7e558ed6eafc842a7755a366f9d298cf136dbcead337f1b0fb3f24b6ee024ea.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01e5c6f0183a39947bf2f761b428cc02455cab6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
