# affineCombination_mem_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7f4a30ba742f1725538af9d04a72595a7629ed9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac359aa1-b1d2-3e8c-ed85-491a10115fe9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8e9a36a8-4859-6c63-89da-ce1ed0819277",
  "kind": "theorem",
  "lexical_name": "affineCombination_mem_shift",
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
  "slug": "affinecombination-mem-shift--fde5f74caee0ac830dc7c2dd",
  "source": {
    "blob": "a7f4a30ba742f1725538af9d04a72595a7629ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 113,
    "path": "GRWTSK/Algebra/LinearAlgebra/Shift/Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fde5f74caee0ac830dc7c2ddcc5270c367d3d6abd0ab96c11412c930f04eebc9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Shift/Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8e9a36a8-4859-6c63-89da-ce1ed0819277`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_mem_shift {ι : Type*} [Fintype ι] [Nontrivial ι]
    (p : ι → P) (i : ι) {w : ι → k} (hw : ∑ i, w i = 1) :
    affineCombination k univ p w ∈ (affineSpan k <| p '' {i}ᶜ).shift (p i) (1 - w i) := by
  cases subsingleton_or_nontrivial k
  · suffices (affineSpan k <| p '' {i}ᶜ) = ⊤ by simp [this]
    have : Subsingleton P := (AddTorsor.subsingleton_iff V P).mp <| Module.subsingleton k V
    simp
  classical
  obtain ⟨j, hj⟩ := exists_ne i
  rw [shift_eq ⟨p j, mem_affineSpan k <| Set.mem_image_of_mem _ hj⟩]
  suffices ∃ q ∈ affineSpan k (p '' {i}ᶜ), w i • (p i -ᵥ p j) +ᵥ q = affineCombination k univ p w by
    simpa
  refine ⟨-(w i • (p i -ᵥ p j)) +ᵥ affineCombination k univ p w, ?_, by simp⟩
  rw [← affineCombination_piSingle k _ p (mem_univ i),
    ← affineCombination_piSingle k _ p (mem_univ j), affineCombination_vsub, ← map_smul, ← map_neg,
    weightedVSub_vadd_affineCombination]
  refine affineCombination_mem_affineSpan_image ?_ (fun i' _ hi ↦ by aesop) _
  simp [sum_add_distrib, ← mul_sum, hw]

/-- The iff version of `affineCombination_mem_shift` for affine independent points. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Shift/Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Shift/Variantb26d6f6dfdd615e3ba0ab1d43817a31e34ad0f2fec177013ebd68ac288eac1fa.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7f4a30ba742f1725538af9d04a72595a7629ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
