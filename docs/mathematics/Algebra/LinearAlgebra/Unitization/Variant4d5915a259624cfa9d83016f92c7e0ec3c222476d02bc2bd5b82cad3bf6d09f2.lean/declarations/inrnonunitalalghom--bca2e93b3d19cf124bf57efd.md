# inrNonUnitalAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afb9b230be22d2ae0a56b76d88bbabeeb1f4bb06e7bb87d64d7647e708091306",
  "kind": "def",
  "lexical_name": "inrNonUnitalAlgHom",
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
  "slug": "inrnonunitalalghom--bca2e93b3d19cf124bf57efd",
  "source": {
    "blob": "7e2e7c4b962a92dfa6733c99b68ab2205c64aff7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 604,
    "path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bca2e93b3d19cf124bf57efd466b18223f99cd2be69bb62a4da80f9d1ec4dbc1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afb9b230be22d2ae0a56b76d88bbabeeb1f4bb06e7bb87d64d7647e708091306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 604–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inrNonUnitalAlgHom (R A : Type*) [CommSemiring R] [NonUnitalSemiring A] [Module R A] :
    A →ₙₐ[R] Unitization R A where
  toFun := (↑)
  map_smul' := inr_smul R
  map_zero' := inr_zero R
  map_add' := inr_add R
  map_mul' := inr_mul R

/-- The coercion from a non-unital `R`-algebra `A` to its unitization `Unitization R A`
realized as a non-unital star algebra homomorphism. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Unitization/Variant4d5915a259624cfa9d83016f92c7e0ec3c222476d02bc2bd5b82cad3bf6d09f2.lean#L604).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2e7c4b962a92dfa6733c99b68ab2205c64aff7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
