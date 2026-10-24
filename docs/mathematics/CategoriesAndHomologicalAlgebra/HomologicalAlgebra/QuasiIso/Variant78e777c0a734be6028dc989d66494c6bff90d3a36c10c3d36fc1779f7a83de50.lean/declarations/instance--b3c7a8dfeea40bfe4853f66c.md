# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:321af9a8cc806adf0c9be2d63aa3ebf6a23583f11e8a11d2c73db66b3710aa76",
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
  "slug": "instance--b3c7a8dfeea40bfe4853f66c",
  "source": {
    "blob": "b92885247fbb3fed7f70ee19af975d5888922d36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 109,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variant78e777c0a734be6028dc989d66494c6bff90d3a36c10c3d36fc1779f7a83de50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3c7a8dfeea40bfe4853f66cde4c7c1f1f106394229cdeb88203bd7591d62c0e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variant78e777c0a734be6028dc989d66494c6bff90d3a36c10c3d36fc1779f7a83de50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:321af9a8cc806adf0c9be2d63aa3ebf6a23583f11e8a11d2c73db66b3710aa76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (f : K ⟶ L) (i : ι) [K.HasHomology i] [L.HasHomology i] [hf : QuasiIsoAt f i] :
    IsIso (homologyMap f i) := by
  simpa only [quasiIsoAt_iff, ShortComplex.quasiIso_iff] using! hf

/-- The isomorphism `K.homology i ≅ L.homology i` induced by a morphism `f : K ⟶ L` such
that `[QuasiIsoAt f i]` holds. -/
@[simps! hom]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variant78e777c0a734be6028dc989d66494c6bff90d3a36c10c3d36fc1779f7a83de50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/QuasiIso/Variant78e777c0a734be6028dc989d66494c6bff90d3a36c10c3d36fc1779f7a83de50.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b92885247fbb3fed7f70ee19af975d5888922d36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
