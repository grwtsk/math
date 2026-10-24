# toHom_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5c/5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:76e0e6a7-3f67-189a-0f4e-f86c7be67bc9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5f88cc1-9129-dd84-7fa3-81801512b149",
  "kind": "lemma",
  "lexical_name": "toHom_bijective",
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
  "slug": "tohom-bijective--0b8bceaa18f4742539a4c8cd",
  "source": {
    "blob": "d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b8bceaa18f4742539a4c8cd6ed01472b661a28a338638a8c796494d274e6e26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5f88cc1-9129-dd84-7fa3-81801512b149`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toHom_bijective : Function.Bijective (toHom : CohomologyClass K L n → _) := by
  refine ⟨fun x y h ↦ ?_, fun f ↦ ?_⟩
  · obtain ⟨x, rfl⟩ := x.mk_surjective
    obtain ⟨y, rfl⟩ := y.mk_surjective
    rw [← sub_eq_zero, ← mk_sub, mk_eq_zero_iff, ← toHom_mk_eq_zero_iff,
      mk_sub, map_sub, h, sub_self]
  · obtain ⟨f, rfl⟩ := Functor.map_surjective _ f
    exact ⟨mk (Cocycle.equivHomShift f), by simp [toHom_mk]⟩

/-- Cohomology classes identify to morphisms in the homotopy category. -/
@[simps! apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HomComplexCohomology/Variant5cbc464e52f57b0c1330f4930251314a98c781b5663d9e4f41a3453fa56dbf8d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d14fdf3f8cc93ac6d9b85766d515c6af7cea64e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
