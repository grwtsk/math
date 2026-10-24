# compChangeOfVariables_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/46/46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2e150a16-5f25-226c-908f-88699c062bc7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2b6e0c9f-1c83-7fef-c9e9-9c6d7368ceaf",
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
  "slug": "compchangeofvariables-sum--7fa6ce8dacb7a8d142eda05a",
  "source": {
    "blob": "539448fec4e14ce543b9f5e5d56e773329b4f6d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 648,
    "line": 613,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fa6ce8dacb7a8d142eda05a7d590da8070b813e196cf4d063cdc086b2c86af8",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b6e0c9f-1c83-7fef-c9e9-9c6d7368ceaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compChangeOfVariables_sum {α : Type*} [AddCommMonoid α] (m M N : ℕ)
    (f : (Σ n : ℕ, Fin n → ℕ) → α) (g : (Σ n, Composition n) → α)
    (h : ∀ (e) (he : e ∈ compPartialSumSource m M N), f e = g (compChangeOfVariables m M N e he)) :
    ∑ e ∈ compPartialSumSource m M N, f e = ∑ e ∈ compPartialSumTarget m M N, g e := by
  apply Finset.sum_bij (compChangeOfVariables m M N)
  -- We should show that the correspondence we have set up is indeed a bijection
  -- between the index sets of the two sums.
  -- 1 - show that the image belongs to `compPartialSumTarget m N N`
  · rintro ⟨k, blocks_fun⟩ H
    rw [mem_compPartialSumSource_iff] at H
    simp only [mem_compPartialSumTarget_iff, Composition.length, H.left,
      length_ofFn, true_and, compChangeOfVariables]
    intro j
    simp only [Composition.blocksFun, (H.right _).right, List.get_ofFn]
  -- 2 - show that the map is injective
  · rintro ⟨k, blocks_fun⟩ H ⟨k', blocks_fun'⟩ H' heq
    obtain rfl : k = k' := by
      have := (compChangeOfVariables_length m M N H).symm
      rwa [heq, compChangeOfVariables_length] at this
    congr
    funext i
    calc
      blocks_fun i = (compChangeOfVariables m M N _ H).2.blocksFun _ :=
        (compChangeOfVariables_blocksFun m M N H i).symm
      _ = (compChangeOfVariables m M N _ H').2.blocksFun _ := by
        grind
      _ = blocks_fun' i := compChangeOfVariables_blocksFun m M N H' i
  -- 3 - show that the map is surjective
  · intro i hi
    apply compPartialSumTargetSet_image_compPartialSumSource m M N i
    simpa [compPartialSumTarget] using hi
  -- 4 - show that the composition gives the `compAlongComposition` application
  · assumption

/-- The auxiliary set corresponding to the composition of partial sums asymptotically contains
all possible compositions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Composition/Variant46d7fe5169cb434fdf1662c01a4e71a5f0a95b27dfd6ad6766216f0e104ca33e.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `539448fec4e14ce543b9f5e5d56e773329b4f6d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
