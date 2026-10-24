# Discrete.monoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a6d0497b6f47ae4a2b75d7c610e44c58fe0487d2d7c957930ac98abbe664ddb",
  "kind": "instance",
  "lexical_name": "Discrete.monoidal",
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
  "slug": "discrete-monoidal--bd931c8082bf30558c29bfae",
  "source": {
    "blob": "94af4d272755dc0c1148cc54ca6700cad3a3012c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 37,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd931c8082bf30558c29bfae825a635e7205ccf3ca07f19a4433842ab81d131e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a6d0497b6f47ae4a2b75d7c610e44c58fe0487d2d7c957930ac98abbe664ddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Discrete.monoidal : MonoidalCategory (Discrete M)
    where
  tensorUnit' := Discrete.mk 1
  tensorObj X Y := Discrete.mk (X.as * Y.as)
  whiskerLeft X _ _ f := eqToHom (by dsimp; rw [eq_of_hom f])
  whiskerRight f X := eqToHom (by dsimp; rw [eq_of_hom f])
  tensorHom f g := eqToHom (by dsimp; rw [eq_of_hom f, eq_of_hom g])
  leftUnitor X := Discrete.eqToIso (one_mul X.as)
  rightUnitor X := Discrete.eqToIso (mul_one X.as)
  associator X Y Z := Discrete.eqToIso (mul_assoc _ _ _)
#align category_theory.discrete.monoidal CategoryTheory.Discrete.monoidal
#align category_theory.discrete.add_monoidal CategoryTheory.Discrete.addMonoidal

@[to_additive (attr := simp) Discrete.addMonoidal_tensorUnit_as]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Discrete/Variant548670bba97fc5d33eb28414b62b4f7ead9e1137bfce1ec3a4be309880edb507.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94af4d272755dc0c1148cc54ca6700cad3a3012c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
