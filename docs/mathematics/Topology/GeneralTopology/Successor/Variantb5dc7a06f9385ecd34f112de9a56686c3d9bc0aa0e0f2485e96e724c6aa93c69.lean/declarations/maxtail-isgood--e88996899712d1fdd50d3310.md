# maxTail_isGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 536,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fa400e6-84b3-a575-1247-8761c902933c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f1fe46bb-16de-3723-f3ae-9fe998057c34",
  "kind": "theorem",
  "lexical_name": "maxTail_isGood",
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
  "slug": "maxtail-isgood--e88996899712d1fdd50d3310",
  "source": {
    "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 602,
    "line": 536,
    "path": "GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e88996899712d1fdd50d3310d1c9df14691dc2c4dae2bb7b2e7940c652f9225a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1fe46bb-16de-3723-f3ae-9fe998057c34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–602.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem maxTail_isGood (l : MaxProducts C ho)
    (h₁ : ⊤ ≤ Submodule.span ℤ (Set.range (eval (π C (ord I · < o))))) :
    l.val.Tail.isGood (C' C ho) := by
  have : Inhabited I := ⟨term I ho⟩
  -- Write `l.Tail` as a linear combination of smaller products:
  intro h
  rw [Finsupp.mem_span_image_iff_linearCombination, ← max_eq_eval C hsC ho] at h
  obtain ⟨m, ⟨hmmem, hmsum⟩⟩ := h
  rw [Finsupp.linearCombination_apply] at hmsum
  -- Write the image of `l` under `Linear_CC'` as `Linear_CC'` applied to the linear combination
  -- above, with leading `term I ho`'s added to each term:
  have : (Linear_CC' C hsC ho) (l.val.eval C) = (Linear_CC' C hsC ho)
      (Finsupp.sum m fun i a ↦ a • ((term I ho :: i.1).map (e C)).prod) := by
    rw [← hmsum]
    simp only [map_finsuppSum]
    apply Finsupp.sum_congr
    intro q hq
    rw [map_smul]
    rw [Finsupp.mem_supported] at hmmem
    have hx'' : q < l.val.Tail := hmmem hq
    have : ∃ (p : Products I), p.val ≠ [] ∧ p.val.head! = term I ho ∧ q = p.Tail :=
      ⟨⟨term I ho :: q.val, isChain_cons_of_lt C hsC ho l q hx''⟩,
        ⟨List.cons_ne_nil _ _, by simp only [List.head!_cons],
        by simp only [Products.Tail, List.tail_cons, Subtype.coe_eta]⟩⟩
    obtain ⟨p, hp⟩ := this
    rw [hp.2.2, ← Products.max_eq_eval C hsC ho p hp.1 hp.2.1]
    dsimp [Products.eval]
    rw [Products.max_eq_o_cons_tail ho p hp.1 hp.2.1, List.map_cons, List.prod_cons]
  have hse := succ_exact C hC hsC ho
  rw [ShortComplex.moduleCat_exact_iff_range_eq_ker] at hse
  dsimp [ModuleCat.ofHom] at hse
  -- Rewrite `this` using exact sequence manipulations to conclude that a term is in the range of
  -- the linear map `πs`:
  rw [← LinearMap.sub_mem_ker_iff, ← hse] at this
  obtain ⟨(n : LocallyConstant (π C (ord I · < o)) ℤ), hn⟩ := this
  rw [eq_sub_iff_add_eq] at hn
  have hn' := h₁ (Submodule.mem_top : n ∈ ⊤)
  rw [Finsupp.mem_span_range_iff_exists_finsupp] at hn'
  obtain ⟨w, hc⟩ := hn'
  rw [← hc, map_finsuppSum] at hn
  apply l.prop.1
  rw [← hn]
  -- Now we just need to prove that a sum of two terms belongs to a span:
  apply Submodule.add_mem
  · apply Submodule.finsuppSum_mem
    intro q _
    rw [map_smul]
    apply Submodule.smul_mem
    apply Submodule.subset_span
    dsimp only [eval]
    rw [Products.eval_πs C (Products.prop_of_isGood _ _ q.prop)]
    refine ⟨q.val, ⟨?_, rfl⟩⟩
    simp only [Products.lt_iff_lex_lt, Set.mem_ofPred_eq]
    exact good_lt_maxProducts C hsC ho q l
  · apply Submodule.finsuppSum_mem
    intro q hq
    apply Submodule.smul_mem
    apply Submodule.subset_span
    rw [Finsupp.mem_supported] at hmmem
    rw [← Finsupp.mem_support_iff] at hq
    refine ⟨⟨term I ho :: q.val, isChain_cons_of_lt C hsC ho l q (hmmem hq)⟩, ⟨?_, rfl⟩⟩
    simp only [Products.lt_iff_lex_lt, Set.mem_ofPred_eq]
    rw [max_eq_o_cons_tail C hsC ho l]
    exact List.Lex.cons ((Products.lt_iff_lex_lt q l.val.Tail).mp (hmmem hq))

/-- Given `l : MaxProducts C ho`, its `Tail` is a `GoodProducts (C' C ho)`. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48f0ba400d90f653e7a1697bccf77d0919046a48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
