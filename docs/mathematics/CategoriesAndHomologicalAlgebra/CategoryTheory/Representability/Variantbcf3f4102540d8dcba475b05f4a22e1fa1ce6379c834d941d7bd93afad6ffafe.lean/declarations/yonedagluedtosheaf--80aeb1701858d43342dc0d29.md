# yonedaGluedToSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c33271f5fc2a2494a4a22320b5d09aec80b52d88e49e27319165e46a28782264",
  "kind": "def",
  "lexical_name": "yonedaGluedToSheaf",
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
  "slug": "yonedagluedtosheaf--80aeb1701858d43342dc0d29",
  "source": {
    "blob": "6dc41f4382fd00c7238f48a537644bb88b925bd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 97,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80aeb1701858d43342dc0d297eb91936e3829318e5c29d9a6cecad10ddc7582d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c33271f5fc2a2494a4a22320b5d09aec80b52d88e49e27319165e46a28782264`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def yonedaGluedToSheaf :
    zariskiTopology.yoneda.obj (glueData hf).glued ⟶ F where
  -- The map is obtained by finding an object of `F((glueData hf).glued)`.
  hom := yonedaEquiv.symm
  -- This section is obtained from gluing the section corresponding to `f i : Hom(-, X i) ⟶ F`.
    ((glueData hf).sheafValGluedMk (fun i ↦ yonedaEquiv (f i)) (by
      intro i j
      apply yonedaEquiv.symm.injective
      dsimp only [glueData_V, glueData_J, glueData_U, glueData_f, glueData_t]
      rw [yonedaEquiv_naturality, Equiv.symm_apply_apply,
        Functor.map_comp_apply, yonedaEquiv_naturality, yonedaEquiv_naturality,
        Equiv.symm_apply_apply, ← Functor.map_comp_assoc,
        Functor.relativelyRepresentable.symmetry_fst, ((hf i).rep.isPullback' (f j)).w]))

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Representability/Variantbcf3f4102540d8dcba475b05f4a22e1fa1ce6379c834d941d7bd93afad6ffafe.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc41f4382fd00c7238f48a537644bb88b925bd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
