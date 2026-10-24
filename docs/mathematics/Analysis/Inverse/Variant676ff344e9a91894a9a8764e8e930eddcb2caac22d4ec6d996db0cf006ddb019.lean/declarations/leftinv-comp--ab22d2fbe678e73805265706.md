# leftInv_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab3406b5-c6b8-e260-4c71-7047ab9587da",
  "kind": "theorem",
  "lexical_name": "leftInv_comp",
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
  "slug": "leftinv-comp--ab22d2fbe678e73805265706",
  "source": {
    "blob": "c64d69d3cc3617cbc299981ad781813f657778d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 106,
    "path": "GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab22d2fbe678e73805265706995a687a451121d3c9a62aff145de668755b1846",
  "verification": {
    "reference": "docs/verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3406b5-c6b8-e260-4c71-7047ab9587da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem leftInv_comp (p : FormalMultilinearSeries 𝕜 E F) (i : E ≃L[𝕜] F) (x : E)
    (h : p 1 = (continuousMultilinearCurryFin1 𝕜 E F).symm i) :
    (leftInv p i x).comp p = id 𝕜 E x := by
  ext n v
  classical
  match n with
  | 0 =>
    simp only [comp_coeff_zero', leftInv_coeff_zero, ContinuousMultilinearMap.uncurry0_apply,
      id_apply_zero]
  | 1 =>
    simp only [leftInv_coeff_one, comp_coeff_one, h, id_apply_one, ContinuousLinearEquiv.coe_apply,
      ContinuousLinearEquiv.symm_apply_apply, continuousMultilinearCurryFin1_symm_apply]
  | n + 2 =>
    have A :
      (Finset.univ : Finset (Composition (n + 2))) =
        {c | Composition.length c < n + 2}.toFinset ∪ {Composition.ones (n + 2)} := by
      refine Subset.antisymm (fun c _ => ?_) (subset_univ _)
      by_cases h : c.length < n + 2
      · simp [h, Set.mem_toFinset (s := {c | Composition.length c < n + 2})]
      · simp [Composition.eq_ones_iff_le_length.2 (not_lt.1 h)]
    have B :
      Disjoint ({c | Composition.length c < n + 2} : Set (Composition (n + 2))).toFinset
        {Composition.ones (n + 2)} := by
      simp [Set.mem_toFinset (s := {c | Composition.length c < n + 2})]
    have C :
      ((p.leftInv i x (Composition.ones (n + 2)).length)
          fun j : Fin (Composition.ones n.succ.succ).length =>
          p 1 fun _ => v ((Fin.castLE (Composition.length_le _)) j)) =
        p.leftInv i x (n + 2) fun j : Fin (n + 2) => p 1 fun _ => v j := by
      apply FormalMultilinearSeries.congr _ (Composition.ones_length _) fun j hj1 hj2 => ?_
      exact FormalMultilinearSeries.congr _ rfl fun k _ _ => by congr
    have D :
      (p.leftInv i x (n + 2) fun j : Fin (n + 2) => p 1 fun _ => v j) =
        -∑ c ∈ {c : Composition (n + 2) | c.length < n + 2}.toFinset,
            (p.leftInv i x c.length) (p.applyComposition c v) := by
      simp only [leftInv, ContinuousMultilinearMap.neg_apply, neg_inj,
        ContinuousMultilinearMap.sum_apply]
      convert
        (sum_toFinset_eq_subtype
          (fun c : Composition (n + 2) => c.length < n + 2)
          (fun c : Composition (n + 2) =>
          (ContinuousMultilinearMap.compAlongComposition
            (p.compContinuousLinearMap (i.symm : F →L[𝕜] E)) c (p.leftInv i x c.length))
            fun j : Fin (n + 2) => p 1 fun _ : Fin 1 => v j)).symm.trans
          _
      simp only [compContinuousLinearMap_applyComposition,
        ContinuousMultilinearMap.compAlongComposition_apply]
      congr
      ext c
      congr
      ext k
      simp [h, Function.comp_def]
    simp [FormalMultilinearSeries.comp, show n + 2 ≠ 1 by omega, A, Finset.sum_union B,
      applyComposition_ones, C, D, -Set.toFinset_setOf]

/-! ### The right inverse of a formal multilinear series -/


/-- The right inverse of a formal multilinear series, where the `n`-th term is defined inductively
in terms of the previous ones to make sure that `p ∘ (rightInv p i) = id`. For this, the linear
term `p₁` in `p` should be invertible. In the definition, `i` is a linear isomorphism that should
coincide with `p₁`, so that one can use its inverse in the construction. The definition does not
use that `i = p₁`, but proofs that the definition is well-behaved do.

The `n`-th term in `p ∘ q` is `∑ pₖ (q_{j₁}, ..., q_{jₖ})` over `j₁ + ... + jₖ = n`. In this
expression, `qₙ` appears only once, in `p₁ (qₙ)`. We adjust the definition of `qₙ` so that this
term compensates the rest of the sum, using `i⁻¹` as an inverse to `p₁`.

These formulas only make sense when the constant term `p₀` vanishes. The definition we give is
general, but it ignores the value of `p₀`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Inverse/Variant676ff344e9a91894a9a8764e8e930eddcb2caac22d4ec6d996db0cf006ddb019.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c64d69d3cc3617cbc299981ad781813f657778d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
