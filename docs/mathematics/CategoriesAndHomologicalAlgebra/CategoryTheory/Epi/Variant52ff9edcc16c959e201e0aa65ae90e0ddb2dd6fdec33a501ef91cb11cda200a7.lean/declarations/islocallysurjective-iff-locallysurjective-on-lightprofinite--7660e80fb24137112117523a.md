# isLocallySurjective_iff_locallySurjective_on_lightProfinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e616bae4e7c37f176ffb44402befd9af9f4d484e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c2aef19-0be8-5885-9811-0dfb8253bff4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88e383e1-d3bb-882d-9c98-08d4efcde9c5",
  "kind": "lemma",
  "lexical_name": "isLocallySurjective_iff_locallySurjective_on_lightProfinite",
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
  "slug": "islocallysurjective-iff-locallysurjective-on-lightprofinite--7660e80fb24137112117523a",
  "source": {
    "blob": "e616bae4e7c37f176ffb44402befd9af9f4d484e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 32,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7660e80fb24137112117523a5281d7ded28dc76fc7e61ee51f0faee2979a2a7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88e383e1-d3bb-882d-9c98-08d4efcde9c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallySurjective_iff_locallySurjective_on_lightProfinite : IsLocallySurjective f ↔
    ∀ (S : LightProfinite) (y : ToType (Y.val.obj ⟨S⟩)),
      (∃ (S' : LightProfinite) (φ : S' ⟶ S) (_ : Function.Surjective φ)
        (x : ToType (X.val.obj ⟨S'⟩)),
        f.val.app ⟨S'⟩ x = Y.val.map ⟨φ⟩ y) := by
  rw [coherentTopology.isLocallySurjective_iff,
    regularTopology.isLocallySurjective_iff]
  simp_rw [LightProfinite.effectiveEpi_iff_surjective]

end LightCondensed

namespace LightCondSet

variable {X Y : LightCondSet.{u}} (f : X ⟶ Y)

attribute [local instance] Types.instFunLike Types.instConcreteCategory in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Epi/Variant52ff9edcc16c959e201e0aa65ae90e0ddb2dd6fdec33a501ef91cb11cda200a7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e616bae4e7c37f176ffb44402befd9af9f4d484e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
