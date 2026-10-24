# Subpresheaf.to_sheafifyLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7eb09ac-25c1-db2e-5db5-bf43091a6a98",
  "kind": "theorem",
  "lexical_name": "Subpresheaf.to_sheafifyLift",
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
  "slug": "subpresheaf-to-sheafifylift--31357939835dfcb03f916028",
  "source": {
    "blob": "596f21a9fe278d23fbcc014c49069f49bf932da7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 318,
    "line": 308,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:31357939835dfcb03f916028d0b82105a975e3c4aec31e92b29fa41aa195db27",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7eb09ac-25c1-db2e-5db5-bf43091a6a98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–318.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subpresheaf.to_sheafifyLift (f : G.toPresheaf ⟶ F') (h : Presieve.IsSheaf J F') :
    Subpresheaf.homOfLe (G.le_sheafify J) ≫ G.sheafifyLift f h = f := by
  ext U s
  apply (h _ ((Subpresheaf.homOfLe (G.le_sheafify J)).app U s).prop).isSeparatedFor.ext
  intro V i hi
  have := elementwise_of% f.naturality
  -- porting note: filled in some underscores where Lean3 could automatically fill.
  exact (Presieve.IsSheafFor.valid_glue (h _ ((homOfLe (_ : G ≤ sheafify J G)).app U s).2)
    ((G.family_of_elements_compatible _).compPresheafMap _) _ hi).trans (this _ _)
#align category_theory.grothendieck_topology.subpresheaf.to_sheafify_lift CategoryTheory.GrothendieckTopology.Subpresheaf.to_sheafifyLift

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subsheaf/Varianta8e3c63e2a2fd3b7892f71babc45a864dd6c784d08ee11154e57fb312c3c729a.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `596f21a9fe278d23fbcc014c49069f49bf932da7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
