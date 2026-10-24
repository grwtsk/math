# compChangeOfVariables_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86dba749-d9d9-91b7-7cc0-94d841e57b39",
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
  "slug": "compchangeofvariables-sum--3793434d5ba8a9b41589c4db",
  "source": {
    "blob": "c6c9794abc494d790c095633044ce10546f8cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 660,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3793434d5ba8a9b41589c4db931dd10da573d3ae106307463aa3060401c3d2e0",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86dba749-d9d9-91b7-7cc0-94d841e57b39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 660–706.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Composition/Variant52967b8bddc8dced014f3aa794f516c035eaffe9aebc93d8fed6a3d3f6be6363.lean#L660).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6c9794abc494d790c095633044ce10546f8cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
