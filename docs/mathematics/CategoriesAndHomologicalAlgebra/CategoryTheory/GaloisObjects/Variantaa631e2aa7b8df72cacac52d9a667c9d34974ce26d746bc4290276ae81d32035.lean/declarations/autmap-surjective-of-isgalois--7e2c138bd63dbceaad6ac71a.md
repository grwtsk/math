# autMap_surjective_of_isGalois

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ece804238b80139ae0d8d6b6de993746b84c477c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 189,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa631e2aa7b8df72cacac52d9a667c9d34974ce26d746bc4290276ae81d32035.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5548f18a-c237-e8e3-bb7c-b73320a034f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a35964ef-0997-d74b-1089-32d7df9d198f",
  "kind": "lemma",
  "lexical_name": "autMap_surjective_of_isGalois",
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
  "slug": "autmap-surjective-of-isgalois--7e2c138bd63dbceaad6ac71a",
  "source": {
    "blob": "ece804238b80139ae0d8d6b6de993746b84c477c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variantaa631e2aa7b8df72cacac52d9a667c9d34974ce26d746bc4290276ae81d32035.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e2c138bd63dbceaad6ac71a04482c08828b3b06fd118a4d26894906955e6f9f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variantaa631e2aa7b8df72cacac52d9a667c9d34974ce26d746bc4290276ae81d32035.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a35964ef-0997-d74b-1089-32d7df9d198f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma autMap_surjective_of_isGalois {A B : C} [IsGalois A] [IsGalois B] (f : A ⟶ B) :
    Function.Surjective (autMap f) := by
  intro σ
  let F := getFiberFunctor C
  obtain ⟨a⟩ := nonempty_fiber_of_isConnected F A
  obtain ⟨a', ha'⟩ := surjective_of_nonempty_fiber_of_isConnected F f (F.map σ.hom (F.map f a))
  obtain ⟨τ, (hτ : F.map τ.hom a = a')⟩ := MulAction.exists_smul_eq (Aut A) a a'
  use τ
  apply evaluation_aut_injective_of_isConnected F B (F.map f a)
  simp [hτ, ha']

set_option backward.isDefEq.respectTransparency.types false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variantaa631e2aa7b8df72cacac52d9a667c9d34974ce26d746bc4290276ae81d32035.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GaloisObjects/Variantaa631e2aa7b8df72cacac52d9a667c9d34974ce26d746bc4290276ae81d32035.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ece804238b80139ae0d8d6b6de993746b84c477c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
