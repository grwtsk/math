# automorphismGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:832347eeb26b4fc1b04e21afff04fb1a94038ec654f7a82ceb6dde2cba9d2e0a",
  "kind": "instance",
  "lexical_name": "automorphismGroup",
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
  "slug": "automorphismgroup--2c8932a59180732bbccf0ad1",
  "source": {
    "blob": "64fe564077cf686f3fdf852c99037c8fdf129487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 666,
    "line": 654,
    "path": "GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c8932a59180732bbccf0ad1c0aa8991e4cc2f302bfdba8da84b6d20252bb2b9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:832347eeb26b4fc1b04e21afff04fb1a94038ec654f7a82ceb6dde2cba9d2e0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 654–666.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance automorphismGroup : Group (M ≃ₗ[R] M) where
  mul f g := g.trans f
  one := LinearEquiv.refl R M
  inv f := f.symm
  mul_assoc f g h := rfl
  mul_one f := ext fun x => rfl
  one_mul f := ext fun x => rfl
  mul_left_inv f := ext <| f.left_inv
#align linear_equiv.automorphism_group LinearEquiv.automorphismGroup

/-- Restriction from `R`-linear automorphisms of `M` to `R`-linear endomorphisms of `M`,
promoted to a monoid hom. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Equiv/Variant75c76a51fa4736a36f2d500df2312eec0ca81b8b1b4a09d70ee37623b07135d0.lean#L654).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64fe564077cf686f3fdf852c99037c8fdf129487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
