# lift_projectSubobject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c552180fb4a361bd8304e0980b00ea663e5b177",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc656b47-1bbd-4ada-9fc9-542cef5c6e18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b21d8b6-e15b-5ad8-6e09-c6b88a921c4a",
  "kind": "theorem",
  "lexical_name": "lift_projectSubobject",
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
  "slug": "lift-projectsubobject--67fc56f2110e479323509e74",
  "source": {
    "blob": "0c552180fb4a361bd8304e0980b00ea663e5b177",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67fc56f2110e479323509e749426031535ac8efed93042be118d40c292000917",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b21d8b6-e15b-5ad8-6e09-c6b88a921c4a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lift_projectSubobject [HasFiniteLimits C] [PreservesFiniteLimits T]
    {A : StructuredArrow S T} :
    ∀ (P : Subobject A) {q} (hq : q ≫ T.map (projectSubobject P).arrow = A.hom),
      liftSubobject (projectSubobject P) hq = P :=
  Subobject.ind _
    (by
      intro P f hf q hq
      fapply Subobject.mk_eq_mk_of_comm
      · fapply isoMk
        · exact Subobject.underlyingIso _
        · exact (cancel_mono (T.map f.right)).1 (by dsimp; simpa [← T.map_comp] using hq)
      · exact ext _ _ (by dsimp; simp))

/-- If `A : S → T.obj B` is a structured arrow for `S : D` and `T : C ⥤ D`, then we can explicitly
    describe the subobjects of `A` as the subobjects `P` of `B` in `C` for which `A.hom` factors
    through the image of `P` under `T`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Comma/Variantaf4892e1bf0b6e4438a7db2db9f270ea5bce1aa0f8ffcd6b6ddf3f146c5630f6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c552180fb4a361bd8304e0980b00ea663e5b177` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
