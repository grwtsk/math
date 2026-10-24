# map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9e3cddcc590842d4cc158d2c70c596087dbba0d86ebe47d50f27144d509b67e",
  "kind": "def",
  "lexical_name": "map",
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
  "slug": "map--65d390f31f3a3febaeda3eae",
  "source": {
    "blob": "7e85d31df611fe20ea421061bff3676808c8f9e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65d390f31f3a3febaeda3eaeba5e6f64bd698602de3347036960ed07188ce371",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9e3cddcc590842d4cc158d2c70c596087dbba0d86ebe47d50f27144d509b67e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def map (K : ChainComplex C ℕ) {Δ' Δ : SimplexCategoryᵒᵖ} (θ : Δ ⟶ Δ') : obj₂ K Δ ⟶ obj₂ K Δ' :=
  Sigma.desc fun A =>
    Termwise.mapMono K (image.ι (θ.unop ≫ A.e)) ≫ Sigma.ι (summand K Δ') (A.pull θ)
#align algebraic_topology.dold_kan.Γ₀.obj.map AlgebraicTopology.DoldKan.Γ₀.Obj.map

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant93a8d8eeeefe48dbebc3206c3acc36ab8bc6d551f3e825296f1d5da4ef834f21.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e85d31df611fe20ea421061bff3676808c8f9e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
