# eq_homEquiv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4496a2211f2fc987a6b1eb283dbc90021e98f8ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 223,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/84/843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a70d75f-7fc2-0e7c-2a04-c1e0cb47d8ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eda8e126-09ee-0210-d761-486b152ead29",
  "kind": "theorem",
  "lexical_name": "eq_homEquiv_apply",
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
  "slug": "eq-homequiv-apply--8a37dc2886b96b57f8d93c7d",
  "source": {
    "blob": "4496a2211f2fc987a6b1eb283dbc90021e98f8ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 223,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a37dc2886b96b57f8d93c7d6dd9820b1fd5bf2513fc4b909bdfb5ae642ba808",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eda8e126-09ee-0210-d761-486b152ead29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 223–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_homEquiv_apply {A : C} {B : D} (f : F.obj A ⟶ B) (g : A ⟶ G.obj B) :
    g = adj.homEquiv A B f ↔ (adj.homEquiv A B).symm g = f :=
  ⟨fun h => by
    cases h
    simp, fun h => by
    cases h
    simp⟩
#align category_theory.adjunction.eq_hom_equiv_apply CategoryTheory.Adjunction.eq_homEquiv_apply

end

end Adjunction

namespace Adjunction

/-- This is an auxiliary data structure useful for constructing adjunctions.
See `Adjunction.mkOfHomEquiv`.
This structure won't typically be used anywhere else.
-/
-- Porting comment: `has_nonempty_instance` linter doesn't exist (yet?)
-- @[nolint has_nonempty_instance]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean#L223).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4496a2211f2fc987a6b1eb283dbc90021e98f8ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
