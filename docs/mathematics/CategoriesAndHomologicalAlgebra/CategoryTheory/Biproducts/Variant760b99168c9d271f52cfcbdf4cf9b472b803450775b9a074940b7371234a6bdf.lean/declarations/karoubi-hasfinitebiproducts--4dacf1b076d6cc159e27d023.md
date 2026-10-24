# karoubi_hasFiniteBiproducts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6bbab8467ef8f8988179105057662b5e0be9a7ce",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60eef8da-ba11-e13e-a565-6d9d8fcc8171",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:929f72c5-ff17-242a-047e-e19850249005",
  "kind": "theorem",
  "lexical_name": "karoubi_hasFiniteBiproducts",
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
  "slug": "karoubi-hasfinitebiproducts--4dacf1b076d6cc159e27d023",
  "source": {
    "blob": "6bbab8467ef8f8988179105057662b5e0be9a7ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dacf1b076d6cc159e27d023d155f9482b897a46d1021fdcfe5a4a00e0dadd56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:929f72c5-ff17-242a-047e-e19850249005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem karoubi_hasFiniteBiproducts [HasFiniteBiproducts C] : HasFiniteBiproducts (Karoubi C) :=
  { out := fun n =>
      { has_biproduct := fun F => by
          apply hasBiproduct_of_total (Biproducts.bicone F)
          simp only [hom_ext_iff]
          refine biproduct.hom_ext' _ _ (fun j => ?_)
          simp only [Biproducts.bicone_pt_X, sum_hom, comp_f, Biproducts.bicone_π_f,
            biproduct.bicone_π, biproduct.map_π, Biproducts.bicone_ι_f, biproduct.ι_map, assoc,
            idem_assoc, id_f, Biproducts.bicone_pt_p, comp_sum]
          rw [Finset.sum_eq_single j]
          · simp only [bicone_ι_π_self_assoc]
          · intro b _ hb
            simp only [biproduct.ι_π_ne_assoc _ hb.symm, zero_comp]
          · intro hj
            simp only [Finset.mem_univ, not_true] at hj } }

attribute [instance] karoubi_hasFiniteBiproducts

/-- `P.complement` is the formal direct factor of `P.X` given by the idempotent
endomorphism `𝟙 P.X - P.p` -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Biproducts/Variant760b99168c9d271f52cfcbdf4cf9b472b803450775b9a074940b7371234a6bdf.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bbab8467ef8f8988179105057662b5e0be9a7ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
