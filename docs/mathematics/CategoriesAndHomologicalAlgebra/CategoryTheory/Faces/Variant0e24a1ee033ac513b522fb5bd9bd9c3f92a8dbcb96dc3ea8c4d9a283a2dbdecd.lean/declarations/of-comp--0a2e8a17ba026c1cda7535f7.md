# of_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fdcdfc9fa43f4cda7d2f0deff65514b470872bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 65,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1769781b-2c7d-4071-7258-8ddf8aaed2e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5533773b-3798-95cd-d764-a4ab1aec0ac9",
  "kind": "theorem",
  "lexical_name": "of_comp",
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
  "slug": "of-comp--0a2e8a17ba026c1cda7535f7",
  "source": {
    "blob": "7fdcdfc9fa43f4cda7d2f0deff65514b470872bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 65,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a2e8a17ba026c1cda7535f7bc1b5e67e064962ad1bf75df2793624a8ffee346",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5533773b-3798-95cd-d764-a4ab1aec0ac9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_comp {Y Z : C} {q n : ℕ} {φ : Y ⟶ X _[n + 1]} (v : HigherFacesVanish q φ) (f : Z ⟶ Y) :
    HigherFacesVanish q (f ≫ φ) := fun j hj => by rw [assoc, v j hj, comp_zero]
#align algebraic_topology.dold_kan.higher_faces_vanish.of_comp AlgebraicTopology.DoldKan.HigherFacesVanish.of_comp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Faces/Variant0e24a1ee033ac513b522fb5bd9bd9c3f92a8dbcb96dc3ea8c4d9a283a2dbdecd.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fdcdfc9fa43f4cda7d2f0deff65514b470872bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
