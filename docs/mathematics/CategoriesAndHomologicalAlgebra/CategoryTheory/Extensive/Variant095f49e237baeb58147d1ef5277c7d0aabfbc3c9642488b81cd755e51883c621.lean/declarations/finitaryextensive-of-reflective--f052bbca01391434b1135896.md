# finitaryExtensive_of_reflective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e3546ffebcb17f1ba5857ea48a551ce0d7531b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 352,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a921f85-7763-7852-2b6b-7770c05c67b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:17b0bce3-b5f1-9902-cae0-ad5fd945a3dd",
  "kind": "theorem",
  "lexical_name": "finitaryExtensive_of_reflective",
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
  "slug": "finitaryextensive-of-reflective--f052bbca01391434b1135896",
  "source": {
    "blob": "52e3546ffebcb17f1ba5857ea48a551ce0d7531b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 352,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f052bbca01391434b1135896133d8c87e9fc36c71d9ff3baa85a3418f5ebbe56",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17b0bce3-b5f1-9902-cae0-ad5fd945a3dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 352–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finitaryExtensive_of_reflective
    [HasFiniteCoproducts D] [HasPullbacksOfInclusions D] [FinitaryExtensive C]
    {Gl : C ⥤ D} {Gr : D ⥤ C} (adj : Gl ⊣ Gr) [Gr.Full] [Gr.Faithful]
    [∀ X Y (f : X ⟶ Gl.obj Y), HasPullback (Gr.map f) (adj.unit.app Y)]
    [∀ X Y (f : X ⟶ Gl.obj Y), PreservesLimit (cospan (Gr.map f) (adj.unit.app Y)) Gl]
    [PreservesPullbacksOfInclusions Gl] :
    FinitaryExtensive D := by
  have : PreservesColimitsOfSize Gl := adj.leftAdjoint_preservesColimits
  constructor
  intros X Y c hc
  apply (IsVanKampenColimit.precompose_isIso_iff
    (isoWhiskerLeft _ (asIso adj.counit) ≪≫ Functor.rightUnitor _).hom).mp
  have : ∀ (Z : C) (i : Discrete WalkingPair) (f : Z ⟶ (colimit.cocone (pair X Y ⋙ Gr)).pt),
        PreservesLimit (cospan f ((colimit.cocone (pair X Y ⋙ Gr)).ι.app i)) Gl := by
    have : pair X Y ⋙ Gr = pair (Gr.obj X) (Gr.obj Y) := by
      apply Functor.hext
      · rintro ⟨⟨⟩⟩ <;> rfl
      · rintro ⟨⟨⟩⟩ ⟨j⟩ ⟨⟨rfl : _ = j⟩⟩ <;> simp
    rw [this]
    rintro Z ⟨_|_⟩ f <;> dsimp <;> infer_instance
  refine ((FinitaryExtensive.vanKampen _ (colimit.isColimit <| pair X Y ⋙ _)).map_reflective
    adj).of_iso (IsColimit.uniqueUpToIso ?_ ?_)
  · exact isColimitOfPreserves Gl (colimit.isColimit _)
  · exact (IsColimit.precomposeHomEquiv _ _).symm hc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Extensive/Variant095f49e237baeb58147d1ef5277c7d0aabfbc3c9642488b81cd755e51883c621.lean#L352).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e3546ffebcb17f1ba5857ea48a551ce0d7531b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
