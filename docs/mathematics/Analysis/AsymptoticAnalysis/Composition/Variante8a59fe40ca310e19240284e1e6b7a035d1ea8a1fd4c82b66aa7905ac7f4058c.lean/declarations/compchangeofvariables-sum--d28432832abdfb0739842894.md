# compChangeOfVariables_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4665617df85c93782d95a058754fdcdb8334583",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 652,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e8/e8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d6fd4cf9-d7a5-6d02-f99a-286fc91ed9c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:631e07d6-b558-41cf-2b02-28cbb2df76ce",
  "kind": "theorem",
  "lexical_name": "compChangeOfVariables_sum",
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
  "slug": "compchangeofvariables-sum--d28432832abdfb0739842894",
  "source": {
    "blob": "a4665617df85c93782d95a058754fdcdb8334583",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 698,
    "line": 652,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28432832abdfb0739842894dc3a0d80a9b8e9d90a1a72dd417e12104f6f09fa",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:631e07d6-b558-41cf-2b02-28cbb2df76ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 652–698.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compChangeOfVariables_sum {α : Type*} [AddCommMonoid α] (m M N : ℕ)
    (f : (Σ n : ℕ, Fin n → ℕ) → α) (g : (Σ n, Composition n) → α)
    (h : ∀ (e) (he : e ∈ compPartialSumSource m M N), f e = g (compChangeOfVariables m M N e he)) :
    ∑ e in compPartialSumSource m M N, f e = ∑ e in compPartialSumTarget m M N, g e := by
  apply Finset.sum_bij (compChangeOfVariables m M N)
  -- We should show that the correspondance we have set up is indeed a bijection
  -- between the index sets of the two sums.
  -- 1 - show that the image belongs to `comp_partial_sum_target m N N`
  · rintro ⟨k, blocks_fun⟩ H
    rw [mem_compPartialSumSource_iff] at H
    -- Porting note: added
    simp only at H
    simp only [mem_compPartialSumTarget_iff, Composition.length, Composition.blocks, H.left,
      map_ofFn, length_ofFn, true_and_iff, compChangeOfVariables]
    intro j
    -- Porting note: the following `simp` was sufficient in lean 3.
    simp only [Composition.blocksFun, (H.right _).right, List.nthLe_ofFn]
    convert (H.right ⟨j, ?_⟩).right
    · convert List.nthLe_ofFn _ _ using 2
      rfl
    · apply j.prop.trans_eq
      simp [Composition.length]
  -- 2 - show that the composition gives the `comp_along_composition` application
  · rintro ⟨k, blocks_fun⟩ H
    rw [h]
  -- 3 - show that the map is injective
  · rintro ⟨k, blocks_fun⟩ ⟨k', blocks_fun'⟩ H H' heq
    obtain rfl : k = k' := by
      have := (compChangeOfVariables_length m M N H).symm
      rwa [heq, compChangeOfVariables_length] at this
    congr
    funext i
    calc
      blocks_fun i = (compChangeOfVariables m M N _ H).2.blocksFun _ :=
        (compChangeOfVariables_blocksFun m M N H i).symm
      _ = (compChangeOfVariables m M N _ H').2.blocksFun _ := by
        apply Composition.blocksFun_congr <;>
        first | rw [heq] | rfl
      _ = blocks_fun' i := compChangeOfVariables_blocksFun m M N H' i
  -- 4 - show that the map is surjective
  · intro i hi
    apply compPartialSumTargetSet_image_compPartialSumSource m M N i
    simpa [compPartialSumTarget] using hi
#align formal_multilinear_series.comp_change_of_variables_sum FormalMultilinearSeries.compChangeOfVariables_sum

/-- The auxiliary set corresponding to the composition of partial sums asymptotically contains
all possible compositions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variante8a59fe40ca310e19240284e1e6b7a035d1ea8a1fd4c82b66aa7905ac7f4058c.lean#L652).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4665617df85c93782d95a058754fdcdb8334583` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
