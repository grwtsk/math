# isSheaf_pretopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "598488b38db4a95cd7d3f3d0e5d3a44a87a2ebda",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 138,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b322b717166426aaa4390a7f5157e1fce28e636618c3d995e54f76fbec3d5f9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1890f870-1f44-2b48-fb25-0c8e0fe2c711",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a19963b-da21-765a-45b2-a897e53d7895",
  "kind": "theorem",
  "lexical_name": "isSheaf_pretopology",
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
  "slug": "issheaf-pretopology--66adb0fe1140cb66d5193073",
  "source": {
    "blob": "598488b38db4a95cd7d3f3d0e5d3a44a87a2ebda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 138,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant2b322b717166426aaa4390a7f5157e1fce28e636618c3d995e54f76fbec3d5f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66adb0fe1140cb66d51930738407c6bce97102a98aa1b8c4f791f953951e828d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant2b322b717166426aaa4390a7f5157e1fce28e636618c3d995e54f76fbec3d5f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a19963b-da21-765a-45b2-a897e53d7895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSheaf_pretopology [HasPullbacks C] (K : Pretopology C) :
    IsSheaf K.toGrothendieck P ↔ ∀ {X : C} (R : Presieve X), R ∈ K X → IsSheafFor P R := by
  constructor
  · intro PJ X R hR
    rw [isSheafFor_iff_generate]
    apply PJ (Sieve.generate R) ⟨_, hR, le_generate R⟩
  · rintro PK X S ⟨R, hR, RS⟩
    have gRS : ⇑(generate R) ≤ S := by
      apply giGenerate.gc.monotone_u
      rwa [generate_le_iff]
    apply isSheafFor_subsieve P gRS _
    intro Y f
    rw [← pullbackArrows_comm, ← isSheafFor_iff_generate]
    exact PK (pullbackArrows f R) (K.pullbacks f R hR)

/-- Any presheaf is a sheaf for the bottom (trivial) Grothendieck topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant2b322b717166426aaa4390a7f5157e1fce28e636618c3d995e54f76fbec3d5f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SheafOfTypes/Variant2b322b717166426aaa4390a7f5157e1fce28e636618c3d995e54f76fbec3d5f9.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `598488b38db4a95cd7d3f3d0e5d3a44a87a2ebda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
