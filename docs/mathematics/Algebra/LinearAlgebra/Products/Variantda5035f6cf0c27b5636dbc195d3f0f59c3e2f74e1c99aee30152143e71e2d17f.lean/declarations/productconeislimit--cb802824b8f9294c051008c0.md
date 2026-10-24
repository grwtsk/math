# productConeIsLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:92b7815126edb1b0724c1a8d746c3e49cda499a338c0ab204909bc11474f1e5f",
  "kind": "def",
  "lexical_name": "productConeIsLimit",
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
  "slug": "productconeislimit--cb802824b8f9294c051008c0",
  "source": {
    "blob": "9bd6f2a722dee488b95c2601d56174e057f9ac10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cb802824b8f9294c051008c02440148751cc919e7954de558d28e600ed494232",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:92b7815126edb1b0724c1a8d746c3e49cda499a338c0ab204909bc11474f1e5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def productConeIsLimit : IsLimit (productCone Z) where
  lift s := ofHom (LinearMap.pi fun j => (s.π.app ⟨j⟩).hom : s.pt →ₗ[R] ∀ i : ι, Z i)
  uniq s m w := by
    ext x
    funext i
    exact DFunLike.congr_fun (congr_arg Hom.hom (w ⟨i⟩)) x

-- While we could use this to construct a `HasProducts (ModuleCat R)` instance,
-- we already have `HasLimits (ModuleCat R)` in `Algebra.Category.ModuleCat.Limits`.
variable [HasProduct Z]

/-- The categorical product of a family of objects in `ModuleCat`
agrees with the usual module-theoretical product.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Products/Variantda5035f6cf0c27b5636dbc195d3f0f59c3e2f74e1c99aee30152143e71e2d17f.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bd6f2a722dee488b95c2601d56174e057f9ac10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
