# skeletonOfMono_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26e3d215-ec9b-3709-9b3f-9ac3d45e669b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21b0adbf-d8b4-7a81-cd9e-7fcd4f6b263b",
  "kind": "lemma",
  "lexical_name": "skeletonOfMono_succ",
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
  "slug": "skeletonofmono-succ--68ce5cd8c7aab36c86b30d89",
  "source": {
    "blob": "ae3c3f3cde6555c13d871454a132d1868a92db04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68ce5cd8c7aab36c86b30d8931274bd5ef6e69303877ea26c2c0d372325d487d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21b0adbf-d8b4-7a81-cd9e-7fcd4f6b263b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma skeletonOfMono_succ (n : ℕ) :
    skeletonOfMono i (n + 1) =
      skeletonOfMono i n ⊔ ⨆ (x : Y.nonDegenerate n)
        (_ : x.1 ∉ (Subcomplex.range i).obj _), Subcomplex.ofSimplex x.1 := by
  dsimp only [skeletonOfMono, OrderHom.coe_mk]
  apply le_antisymm
  · simp only [sup_le_iff, iSup_le_iff, skeleton_succ]
    refine ⟨le_sup_left.trans le_sup_left,
      le_sup_right.trans le_sup_left, fun x ↦ ?_⟩
    by_cases hx : x.1 ∈ (Subcomplex.range i).obj _
    · exact le_trans (le_trans (by simpa) le_sup_left) le_sup_left
    · exact (le_trans (by exact le_trans (by rfl) (le_iSup _ hx))
        (le_iSup _ x)).trans le_sup_right
  · simp only [sup_le_iff, iSup_le_iff]
    exact ⟨⟨le_sup_left, (Y.skeleton.monotone (by simp)).trans le_sup_right⟩,
      fun _ _ ↦ (Y.ofSimplex_le_skeleton _ (by simp)).trans le_sup_right⟩

end

namespace relativeCellComplexOfMono

/-!
The main next technical result is that if `i : X ⟶ Y` is a monomorphism
of simplicial sets and `d : ℕ`, there is a pushout square:
```
                                t i d
∐ fun (c : Cell i d) ↦ ∂Δ[d] ----------> skeletonOfMono i d
               |                                   |
         l i d |                                   | r i d
               v                b i d              v
∐ fun (c : Cell i d) ↦ Δ[d]  ----------> skeletonOfMono i (d + 1)
```

The index type `Cell i d` identifies to the type of nondegenerate `d`-simplices
of `Y` not in the range of `i`.

-/

/-- If `i : X ⟶ Y` is a monomorphism of simplicial sets and `d : ℕ`, this is
the type of nondegenerate `d`-simplices of `Y` which do not belong to
the range of `i`. -/
@[ext]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeleton/Variant13aefc3033b1c3096e0ca545b4a862af9644712a9991b755e9c7bd33ee112d08.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae3c3f3cde6555c13d871454a132d1868a92db04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
