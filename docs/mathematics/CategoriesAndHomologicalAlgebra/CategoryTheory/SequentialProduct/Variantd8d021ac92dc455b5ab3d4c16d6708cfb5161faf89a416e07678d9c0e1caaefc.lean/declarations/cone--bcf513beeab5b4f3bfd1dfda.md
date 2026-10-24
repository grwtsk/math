# cone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81de56f5b91fde6c19173f8249f0a2fa498eb27d0c0180bbf394a86d84fe4e78",
  "kind": "def",
  "lexical_name": "cone",
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
  "slug": "cone--bcf513beeab5b4f3bfd1dfda",
  "source": {
    "blob": "de188f2d7bc1e11cbde59ef4c99f0171a296ca1b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 126,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcf513beeab5b4f3bfd1dfdafbc6e80c0e906678160beb6355e6610f25b23406",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81de56f5b91fde6c19173f8249f0a2fa498eb27d0c0180bbf394a86d84fe4e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cone : Cone (Functor.ofOpSequence (functorMap f)) where
  pt := ∏ᶜ M
  π := by
    refine NatTrans.ofOpSequence
      (fun n ↦ Limits.Pi.map fun m ↦ if h : m < n then eqToHom (functorObj_eq_pos h).symm else
        f m ≫ eqToHom (functorObj_eq_neg h).symm) (fun n ↦ ?_)
    apply Limits.Pi.hom_ext
    intro m
    simp only [Functor.const_obj_obj, dite_eq_ite, Functor.ofOpSequence_obj, homOfLE_leOfHom,
      Functor.const_obj_map, Category.id_comp, Pi.map_π, Functor.ofOpSequence_map_homOfLE_succ,
      functorMap, Category.assoc, Pi.map_π_assoc]
    split
    · simp [dite_eq_left (by lia : m < n + 1)]
    · split
      all_goals simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialProduct/Variantd8d021ac92dc455b5ab3d4c16d6708cfb5161faf89a416e07678d9c0e1caaefc.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de188f2d7bc1e11cbde59ef4c99f0171a296ca1b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
