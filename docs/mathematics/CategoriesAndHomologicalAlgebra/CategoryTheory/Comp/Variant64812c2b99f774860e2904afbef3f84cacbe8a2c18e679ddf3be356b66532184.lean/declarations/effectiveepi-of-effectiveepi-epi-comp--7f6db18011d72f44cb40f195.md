# effectiveEpi_of_effectiveEpi_epi_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6632acca21b41f003005cd159cdb0c016296ca56",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 94,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:566c0f73-6fed-fcc4-8437-081ecd2290ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52b7c341-dc97-df55-8fb9-91b991becd2f",
  "kind": "lemma",
  "lexical_name": "effectiveEpi_of_effectiveEpi_epi_comp",
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
  "slug": "effectiveepi-of-effectiveepi-epi-comp--7f6db18011d72f44cb40f195",
  "source": {
    "blob": "6632acca21b41f003005cd159cdb0c016296ca56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f6db18011d72f44cb40f195aca5d39bd5df18fc15a700726e328f7ee88d6c55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52b7c341-dc97-df55-8fb9-91b991becd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma effectiveEpi_of_effectiveEpi_epi_comp {B X Y : C} (f : X ⟶ B) (g : Y ⟶ X)
    [Epi g] [EffectiveEpi (g ≫ f)] : EffectiveEpi f :=
  have := (effectiveEpi_iff_effectiveEpiFamily (g ≫ f)).mp inferInstance
  have := effectiveEpiFamily_of_effectiveEpi_epi_comp
    (X := fun () ↦ X) (Y := fun () ↦ Y) (fun () ↦ f) (fun () ↦ g)
  inferInstance

section CompIso

variable {B B' : C} {α : Type*} (X : α → C) (π : (a : α) → (X a ⟶ B))
  (i : B ⟶ B')

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comp/Variant64812c2b99f774860e2904afbef3f84cacbe8a2c18e679ddf3be356b66532184.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6632acca21b41f003005cd159cdb0c016296ca56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
