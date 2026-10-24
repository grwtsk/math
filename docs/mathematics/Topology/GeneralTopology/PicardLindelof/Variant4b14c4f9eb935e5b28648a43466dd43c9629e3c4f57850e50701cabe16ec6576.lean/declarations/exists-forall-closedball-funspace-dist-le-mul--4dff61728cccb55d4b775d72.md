# exists_forall_closedBall_funSpace_dist_le_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e72f07e5-cd75-7353-5058-e6a88d4681fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09491e82-0e3e-4bff-b389-1286b470e299",
  "kind": "lemma",
  "lexical_name": "exists_forall_closedBall_funSpace_dist_le_mul",
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
  "slug": "exists-forall-closedball-funspace-dist-le-mul--4dff61728cccb55d4b775d72",
  "source": {
    "blob": "bcd2276d677e667f58c96e09126c3cafb8bb4506",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 483,
    "line": 447,
    "path": "GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dff61728cccb55d4b775d72ac9aa00aa19889273dfc6a8eaeed445a8c9a5769",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09491e82-0e3e-4bff-b389-1286b470e299`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–483.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_forall_closedBall_funSpace_dist_le_mul [CompleteSpace E]
    (hf : IsPicardLindelof f t₀ x₀ a r L K) :
    ∃ L' : ℝ≥0, ∀ (x y : E) (hx : x ∈ closedBall x₀ r) (hy : y ∈ closedBall x₀ r)
      (α β : FunSpace t₀ x₀ r L) (_ : IsFixedPt (next hf hx) α) (_ : IsFixedPt (next hf hy) β),
      dist α β ≤ L' * dist x y := by
  obtain ⟨m, C, h⟩ := exists_contractingWith_iterate_next hf
  let L' := (∑ i ∈ Finset.range m, (K * max (tmax - t₀) (t₀ - tmin)) ^ i / i !) * (1 - C)⁻¹
  have hL' : 0 ≤ L' := by
    have : 0 ≤ max (tmax - t₀) (t₀ - tmin) := le_max_of_le_left <| sub_nonneg_of_le t₀.2.2
    positivity
  refine ⟨.mk L' hL', fun x y hx hy α β hα hβ ↦ ?_⟩
  rw [NNReal.coe_mk]
  apply le_of_tendsto_of_tendsto' (b := Filter.atTop) _ _ <|
    dist_iterate_iterate_next_le_of_lipschitzWith hf hy α (h y hy).2
  · apply Filter.Tendsto.comp (y := 𝓝 β) (tendsto_const_nhds.dist Filter.tendsto_id)
    rw [h y hy |>.fixedPoint_unique (hβ.iterate m)]
    exact h y hy |>.tendsto_iterate_fixedPoint α
  · nth_rw 1 [← hα, dist_next_next]
    apply Filter.Tendsto.mul_const
    apply Filter.Tendsto.const_mul
    convert! hasSum_geometric_of_lt_one C.2 (h y hy).1 |>.tendsto_sum_nat
    simp [NNReal.coe_sub <| le_of_lt (h y hy).1, NNReal.coe_one]

end

end FunSpace

/-! ## Properties of the integral equation -/

section

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [CompleteSpace E]
  {f : ℝ → E → E} {α : ℝ → E} {s : Set ℝ} {u : Set E} {t₀ tmin tmax : ℝ}

-- TODO: generalise to open sets and `Ici` and `Iic`
/-- If the time-dependent vector field `f` and the curve `α` are continuous, then `f t (α t)` is the
derivative of `picard f t₀ x₀ α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PicardLindelof/Variant4b14c4f9eb935e5b28648a43466dd43c9629e3c4f57850e50701cabe16ec6576.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd2276d677e667f58c96e09126c3cafb8bb4506` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
