# RightHomotopyRel.iff_map_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11bf7236-3296-50c8-bee6-b9f5bb117922",
  "kind": "lemma",
  "lexical_name": "RightHomotopyRel.iff_map_eq",
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
  "slug": "righthomotopyrel-iff-map-eq--4aa4266c6b77e2085b65721c",
  "source": {
    "blob": "b1ca6cf0613f633b6d6c0df82408b632d53e7dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 130,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4aa4266c6b77e2085b65721ccad6cfca99956bc9b0b4d964cc9caf5534b5fced",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11bf7236-3296-50c8-bee6-b9f5bb117922`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RightHomotopyRel.iff_map_eq {f g : X ⟶ Y} :
    RightHomotopyRel f g ↔ L.map f = L.map g := by
  refine ⟨fun h ↦ (RightHomotopyRel.factorsThroughLocalization C h).map_eq L,
    fun h ↦ ?_⟩
  rw [← RightHomotopyClass.mk_eq_mk_iff]
  exact (bijective_rightHomotopyClassToHom L X Y).1 (by simpa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FundamentalLemma/Variantbf6e7fe4a98ad53fc202d1a3ad419538c948d06427943ef088acce2ea44b27af.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1ca6cf0613f633b6d6c0df82408b632d53e7dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
