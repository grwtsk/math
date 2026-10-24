# affineCombination_mem_affineSpan

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0e910b6e24421f7e28319ba76c456279a9dd7e51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1014,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbf9f955-5371-9706-38cc-7230a263c68b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1026463a-21f9-b087-d80d-642ba30d9dd2",
  "kind": "theorem",
  "lexical_name": "affineCombination_mem_affineSpan",
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
  "slug": "affinecombination-mem-affinespan--d845d44e4cd895b21c8844b9",
  "source": {
    "blob": "0e910b6e24421f7e28319ba76c456279a9dd7e51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1042,
    "line": 1014,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d845d44e4cd895b21c8844b96d16753413354bdf91cc6c4c14ecdea87a39e3b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1026463a-21f9-b087-d80d-642ba30d9dd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1014–1042.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineCombination_mem_affineSpan [Nontrivial k] {s : Finset ι} {w : ι → k}
    (h : ∑ i in s, w i = 1) (p : ι → P) :
    s.affineCombination k p w ∈ affineSpan k (Set.range p) := by
  classical
    have hnz : ∑ i in s, w i ≠ 0 := h.symm ▸ one_ne_zero
    have hn : s.Nonempty := Finset.nonempty_of_sum_ne_zero hnz
    cases' hn with i1 hi1
    let w1 : ι → k := Function.update (Function.const ι 0) i1 1
    have hw1 : ∑ i in s, w1 i = 1 := by
      simp only [Pi.const_zero, Finset.sum_update_of_mem hi1, Pi.zero_apply,
          Finset.sum_const_zero, add_zero]
    have hw1s : s.affineCombination k p w1 = p i1 :=
      s.affineCombination_of_eq_one_of_eq_zero w1 p hi1 (Function.update_same _ _ _) fun _ _ hne =>
        Function.update_noteq hne _ _
    have hv : s.affineCombination k p w -ᵥ p i1 ∈ (affineSpan k (Set.range p)).direction := by
      rw [direction_affineSpan, ← hw1s, Finset.affineCombination_vsub]
      apply weightedVSub_mem_vectorSpan
      -- Porting note: Rest was `simp [Pi.sub_apply, h, hw1]`,
      -- but `Pi.sub_apply` transforms the goal into nonsense
      change (Finset.sum s fun i => w i - w1 i) = 0
      simp only [Finset.sum_sub_distrib, h, hw1, sub_self]
    rw [← vsub_vadd (s.affineCombination k p w) (p i1)]
    exact AffineSubspace.vadd_mem_of_mem_direction hv (mem_affineSpan k (Set.mem_range_self _))
#align affine_combination_mem_affine_span affineCombination_mem_affineSpan

variable (k)

/-- A vector is in the `vectorSpan` of an indexed family if and only
if it is a `weightedVSub` with sum of weights 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variant153e9f425dcbb0a02171354d19365a8f2955c6186d5caab63a520cf096ba109f.lean#L1014).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e910b6e24421f7e28319ba76c456279a9dd7e51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
