# isoFinYoneda

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8304b257df557fc32216f404b32eea64078bcb30b9357d625be28c3627298226",
  "kind": "def",
  "lexical_name": "isoFinYoneda",
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
  "slug": "isofinyoneda--f5cff9397a5bac2868c7921c",
  "source": {
    "blob": "09a26db38ca3966c08ffd6534b357e5e12eb0f43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5cff9397a5bac2868c7921c56925baf62cd891bf9daf52d21103b13cf2c7087",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8304b257df557fc32216f404b32eea64078bcb30b9357d625be28c3627298226`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isoFinYoneda : toProfinite.op ⋙ F ≅ finYoneda F :=
  NatIso.ofComponents (fun X ↦ isoFinYonedaComponents F (toProfinite.obj X.unop)) fun _ ↦ by
    simp only [comp_obj, op_obj, finYoneda_obj, Functor.comp_map, op_map]
    ext
    simp only [types_comp_apply, isoFinYonedaComponents_hom_apply, finYoneda_map,
      op_obj, Function.comp_apply, ← FunctorToTypes.map_comp_apply]
    rfl

/--
A presheaf `F`, which takes a profinite set written as a cofiltered limit to the corresponding
colimit, is isomorphic to the presheaf `LocallyConstant - F(*)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimit/Variantb708a825971b40c1a0b362ffecd599d309a17d3718080308a49162e94790b905.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a26db38ca3966c08ffd6534b357e5e12eb0f43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
