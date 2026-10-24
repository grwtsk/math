# eval_section_surjective_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eae0fd06-5842-499e-1c45-7fd604b0d689",
  "kind": "theorem",
  "lexical_name": "eval_section_surjective_of_surjective",
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
  "slug": "eval-section-surjective-of-surjective--21f5bc34b5e8211968cafc25",
  "source": {
    "blob": "ad9baf55666fe1a3a9ef49e443dc90075f87f215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant61a7e1134d095366574473643d2941de609870438650adbc63d9db2b0947a4dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f5bc34b5e8211968cafc255728b7e4a5353be4d88469e483940108e30a84b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant61a7e1134d095366574473643d2941de609870438650adbc63d9db2b0947a4dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eae0fd06-5842-499e-1c45-7fd604b0d689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eval_section_surjective_of_surjective (i : J) :
    (fun s : F.sections => s.val i).Surjective := fun x => by
  let s : Set (F.obj i) := {x}
  haveI := F.toPreimages_nonempty_of_surjective s Fsur (singleton_nonempty x)
  obtain ⟨sec, h⟩ := nonempty_sections_of_finite_cofiltered_system (F.toPreimages s)
  refine ⟨⟨fun j => (sec j).val, fun jk => by simpa [Subtype.ext_iff] using h jk⟩, ?_⟩
  · have := (sec i).prop
    simp only [mem_iInter, mem_preimage, mem_singleton_iff] at this
    have := this (𝟙 i)
    rwa [map_id_apply] at this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant61a7e1134d095366574473643d2941de609870438650adbc63d9db2b0947a4dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CofilteredSystem/Variant61a7e1134d095366574473643d2941de609870438650adbc63d9db2b0947a4dd.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9baf55666fe1a3a9ef49e443dc90075f87f215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
