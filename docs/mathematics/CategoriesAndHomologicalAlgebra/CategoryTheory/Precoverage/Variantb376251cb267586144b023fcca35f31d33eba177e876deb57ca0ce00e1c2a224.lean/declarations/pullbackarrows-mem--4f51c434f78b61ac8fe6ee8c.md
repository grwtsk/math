# pullbackArrows_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:709c678e-7788-f9e7-10f4-a2fc97af6d7c",
  "kind": "lemma",
  "lexical_name": "pullbackArrows_mem",
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
  "slug": "pullbackarrows-mem--4f51c434f78b61ac8fe6ee8c",
  "source": {
    "blob": "3679f4b06394eb980af94ff06b8bc1425d062b39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f51c434f78b61ac8fe6ee8ce1ffc0ad5f6a80a843c4fe9bff49ad5823bdb981",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:709c678e-7788-f9e7-10f4-a2fc97af6d7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pullbackArrows_mem {J : Precoverage C} [IsStableUnderBaseChange J]
    {X Y : C} (f : X ⟶ Y) {R : Presieve Y} (hR : R ∈ J Y) [R.HasPullbacks f] :
    R.pullbackArrows f ∈ J X := by
  obtain ⟨ι, Z, g, rfl⟩ := R.exists_eq_ofArrows
  have (i : ι) : Limits.HasPullback (g i) f := Presieve.hasPullback f (Presieve.ofArrows.mk i)
  rw [← Presieve.ofArrows_pullback]
  exact mem_coverings_of_isPullback _ hR _ _ _ fun i ↦ (IsPullback.of_hasPullback _ _).flip

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Precoverage/Variantb376251cb267586144b023fcca35f31d33eba177e876deb57ca0ce00e1c2a224.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3679f4b06394eb980af94ff06b8bc1425d062b39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
