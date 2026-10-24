# comapEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:921bc908f5ff743c02d434cc912290f16d1dc406896f0909da77e3c9b18e604d",
  "kind": "def",
  "lexical_name": "comapEq",
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
  "slug": "comapeq--ebbf737e4365ce4d958a5e85",
  "source": {
    "blob": "b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebbf737e4365ce4d958a5e85b5db4c2939044ee897bd4d243ada3448a173a03a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:921bc908f5ff743c02d434cc912290f16d1dc406896f0909da77e3c9b18e604d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def comapEq {β γ : Type w} {f g : β → γ} (h : f = g) : comap C f ≅ comap C g where
  hom := { app := fun X b => eqToHom (by dsimp; simp only [h]) }
  inv := { app := fun X b => eqToHom (by dsimp; simp only [h]) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variant31d20efb8ce83684059fac8df4b91e38903a2d27274fab37a2af5e3df92341f9.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ca7a42b9e01c64e0fa3e8193e2e2765c35f9e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
