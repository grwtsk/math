# _root_.GRWTSK.Algebra.UniversalAlgebra.NonUnitalStarAlgHom.Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.Pi.evalNonUnitalStarAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a81301bb2d0ee17a52c4917d8388b85656a13c0017d8a8682cf6342693c6a0e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.NonUnitalStarAlgHom.Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.Pi.evalNonUnitalStarAlgHom",
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
  "slug": "root-grwtsk-algebra-universalalgebra-nonunitalstaralghom-variant2503800a--8c05b49e0464e129c9928ae1",
  "source": {
    "blob": "c155d9a8f5b05839cd7ea6357ec1dd68fbc97c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 539,
    "path": "GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant11770219c5ad386709ad58fd0d892f11704e5a2c1153acf54955b65d5df34acb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8c05b49e0464e129c9928ae17e39d5f7439dda52ca6439db621dfb8c8cf1c8a6",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/StarAlgHom/Variant11770219c5ad386709ad58fd0d892f11704e5a2c1153acf54955b65d5df34acb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a81301bb2d0ee17a52c4917d8388b85656a13c0017d8a8682cf6342693c6a0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Algebra.UniversalAlgebra.NonUnitalStarAlgHom.Variant2503800a3f8e66106ae2fbc7fd1e1daa5bdc47b5849ee5d6385ec70e9ce4c4a6.Pi.evalNonUnitalStarAlgHom (R : Type*) (A : ι → Type*) (j : ι) [Monoid R]
    [∀ i, NonUnitalNonAssocSemiring (A i)] [∀ i, DistribMulAction R (A i)] [∀ i, Star (A i)] :
    (∀ i, A i) →⋆ₙₐ[R] A j:=
  { Pi.evalMulHom A j, Pi.evalAddHom A j with
    map_smul' _ _ := rfl
    map_zero' := rfl
    map_star' _ := rfl }

/-- `Function.eval` as a `StarAlgHom`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/StarAlgHom/Variant11770219c5ad386709ad58fd0d892f11704e5a2c1153acf54955b65d5df34acb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/StarAlgHom/Variant11770219c5ad386709ad58fd0d892f11704e5a2c1153acf54955b65d5df34acb.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c155d9a8f5b05839cd7ea6357ec1dd68fbc97c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
