# counit_epi_of_R_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e62e4fa0784f355ff5ef1659e8826021bda04f3ca9b4e64246db7c2ab21ab637",
  "kind": "instance",
  "lexical_name": "counit_epi_of_R_faithful",
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
  "slug": "counit-epi-of-r-faithful--fcc5a0a9f30574603ed9b6f0",
  "source": {
    "blob": "567ff9766655bc1977b53f915fa2a5c1aa34c978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc5a0a9f30574603ed9b6f0cd393419735f3d4dac9468cfe910fdcb5029850c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e62e4fa0784f355ff5ef1659e8826021bda04f3ca9b4e64246db7c2ab21ab637`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance counit_epi_of_R_faithful [R.Faithful] (X : D) : Epi (h.counit.app X) where
  left_cancellation {Y} f g hfg :=
    R.map_injective <| (h.homEquiv (R.obj X) Y).symm.injective <| by simpa using hfg

/-- If the right adjoint is full, then each component of the counit is a split monomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `567ff9766655bc1977b53f915fa2a5c1aa34c978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
