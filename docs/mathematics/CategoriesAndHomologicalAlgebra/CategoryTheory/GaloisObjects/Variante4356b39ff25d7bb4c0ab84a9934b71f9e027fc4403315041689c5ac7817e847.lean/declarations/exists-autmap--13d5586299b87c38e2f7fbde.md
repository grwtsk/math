# exists_autMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7528fd8a3d49b146ad217b61c8b7a0635e4a2b6c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5e423a6a-c7a5-984e-45ac-ef50971b2c40",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32405a52-8c47-e511-c276-327098c62516",
  "kind": "lemma",
  "lexical_name": "exists_autMap",
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
  "slug": "exists-autmap--13d5586299b87c38e2f7fbde",
  "source": {
    "blob": "7528fd8a3d49b146ad217b61c8b7a0635e4a2b6c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 137,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13d5586299b87c38e2f7fbded40889871560d32c9afb2b3b612d5a5b58a6494b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32405a52-8c47-e511-c276-327098c62516`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_autMap {A B : C} (f : A ⟶ B) [IsConnected A] [IsGalois B] (σ : Aut A) :
    ∃! (τ : Aut B), f ≫ τ.hom = σ.hom ≫ f := by
  let F := GaloisCategory.getFiberFunctor C
  obtain ⟨a⟩ := nonempty_fiber_of_isConnected F A
  refine ⟨?_, ?_, ?_⟩
  · exact (evaluationEquivOfIsGalois F B (F.map f a)).symm (F.map (σ.hom ≫ f) a)
  · apply evaluation_injective_of_isConnected F A B a
    simp
  · intro τ hτ
    apply evaluation_aut_injective_of_isConnected F B (F.map f a)
    simpa using congr_fun (F.congr_map hτ) a

/-- A morphism from a connected object to a Galois object induces a map on automorphism
groups. This is a group homomorphism (see `autMapHom`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variante4356b39ff25d7bb4c0ab84a9934b71f9e027fc4403315041689c5ac7817e847.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7528fd8a3d49b146ad217b61c8b7a0635e4a2b6c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
