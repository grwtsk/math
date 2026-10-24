# ofAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:538eeca4ba8d2aff5c5c68d9ce50514ce1ed6dded0e8a40048b4d724ce65d3d0",
  "kind": "abbrev",
  "lexical_name": "ofAlgHom",
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
  "slug": "ofalghom--6e3d7dc40f65fd39cd24fafa",
  "source": {
    "blob": "6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 174,
    "path": "GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e3d7dc40f65fd39cd24fafa02fd737a8d94a0516075823713f564e2d3269e5e",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:538eeca4ba8d2aff5c5c68d9ce50514ce1ed6dded0e8a40048b4d724ce65d3d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofAlgHom (comul : A →ₐ[R] (A ⊗[R] A)) (counit : A →ₐ[R] R)
    (h_coassoc : (Algebra.TensorProduct.assoc R A A A).toAlgHom.comp
      ((Algebra.TensorProduct.map comul (.id R A)).comp comul)
      = (Algebra.TensorProduct.map (.id R A) comul).comp comul)
    (h_rTensor : (Algebra.TensorProduct.map counit (.id R A)).comp comul
      = (Algebra.TensorProduct.lid R A).symm)
    (h_lTensor : (Algebra.TensorProduct.map (.id R A) counit).comp comul
      = (Algebra.TensorProduct.rid R R A).symm) :
    Bialgebra R A :=
  letI : Coalgebra R A := {
    comul := comul
    counit := counit
    coassoc := congr(($h_coassoc).toLinearMap)
    rTensor_counit_comp_comul := congr(($h_rTensor).toLinearMap)
    lTensor_counit_comp_comul := congr(($h_lTensor).toLinearMap)
  }
  .mk' _ _ (map_one counit) (map_mul counit _ _) (map_one comul) (map_mul comul _ _)

end Bialgebra

namespace Bialgebra
variable {R A : Type*} [CommSemiring R] [Semiring A] [Bialgebra R A]

variable (A) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant87791355a64833bc9cf108320120e6bd5dec193787c8cc5bbca67b27e9cdeb43.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f4e1ff8f466b21c0aaeb8e08aae8b5b7cd9cead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
