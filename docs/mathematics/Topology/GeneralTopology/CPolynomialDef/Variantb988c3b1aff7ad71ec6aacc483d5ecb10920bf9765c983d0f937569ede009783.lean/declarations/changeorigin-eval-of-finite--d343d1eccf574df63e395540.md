# changeOrigin_eval_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a5b9f5f-ab87-74ee-9a48-3f5a86bf69ec",
  "kind": "theorem",
  "lexical_name": "changeOrigin_eval_of_finite",
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
  "slug": "changeorigin-eval-of-finite--d343d1eccf574df63e395540",
  "source": {
    "blob": "fa7e1c740894a3be648b71ad686c0f7b11e831b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 440,
    "line": 402,
    "path": "GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d343d1eccf574df63e395540b309228e160dc7335607ebc9bc0e4f8251ce3fdf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a5b9f5f-ab87-74ee-9a48-3f5a86bf69ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–440.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem changeOrigin_eval_of_finite (p : FormalMultilinearSeries 𝕜 E F) {n : ℕ}
    (hn : ∀ (m : ℕ), n ≤ m → p m = 0) (x y : E) :
    (p.changeOrigin x).sum y = p.sum (x + y) := by
  let f (s : Σ k l : ℕ, { s : Finset (Fin (k + l)) // s.card = l }) : F :=
    p.changeOriginSeriesTerm s.1 s.2.1 s.2.2 s.2.2.2 (fun _ ↦ x) fun _ ↦ y
  have finsupp : f.support.Finite := by
    apply Set.Finite.subset (s := changeOriginIndexEquiv ⁻¹' (Sigma.fst ⁻¹' {m | m < n}))
    · apply Set.Finite.preimage (Equiv.injective _).injOn
      simp_rw [← {m | m < n}.iUnion_of_singleton_coe, preimage_iUnion, ← range_sigmaMk]
      exact finite_iUnion fun _ ↦ finite_range _
    · refine fun s ↦ Not.imp_symm fun hs ↦ ?_
      simp only [preimage_setOf_eq, changeOriginIndexEquiv_apply_fst, mem_setOf, not_lt] at hs
      dsimp only [f]
      rw [changeOriginSeriesTerm_bound p hn _ _ _ hs, ContinuousMultilinearMap.zero_apply,
        ContinuousMultilinearMap.zero_apply]
  have hfkl k l : HasSum (f ⟨k, l, ·⟩) (changeOriginSeries p k l (fun _ ↦ x) fun _ ↦ y) := by
    simp_rw [changeOriginSeries, ContinuousMultilinearMap.sum_apply]; apply hasSum_fintype
  have hfk k : HasSum (f ⟨k, ·⟩) (changeOrigin p x k fun _ ↦ y) := by
    have (m) (hm : m ∉ Finset.range n) : changeOriginSeries p k m (fun _ ↦ x) = 0 := by
      rw [Finset.mem_range, not_lt] at hm
      rw [changeOriginSeries_finite_of_finite _ hn _ (le_add_of_le_right hm),
        ContinuousMultilinearMap.zero_apply]
    rw [changeOrigin, FormalMultilinearSeries.sum,
      ContinuousMultilinearMap.tsum_eval (summable_of_ne_finset_zero this)]
    refine (summable_of_ne_finset_zero (s := Finset.range n) fun m hm ↦ ?_).hasSum.sigma_of_hasSum
      (hfkl k) (summable_of_finite_support <| finsupp.preimage sigma_mk_injective.injOn)
    rw [this m hm, ContinuousMultilinearMap.zero_apply]
  have hf : HasSum f ((p.changeOrigin x).sum y) :=
    ((p.changeOrigin x).hasSum_of_finite (fun _ ↦ changeOrigin_finite_of_finite p hn) _)
      |>.sigma_of_hasSum hfk (summable_of_finite_support finsupp)
  refine hf.unique (changeOriginIndexEquiv.symm.hasSum_iff.1 ?_)
  refine (p.hasSum_of_finite hn (x + y)).sigma_of_hasSum (fun n ↦ ?_)
    (changeOriginIndexEquiv.symm.summable_iff.2 hf.summable)
  rw [← Pi.add_def, (p n).map_add_univ (fun _ ↦ x) fun _ ↦ y]
  simp_rw [← changeOriginSeriesTerm_changeOriginIndexEquiv_symm]
  exact hasSum_fintype fun c ↦ f (changeOriginIndexEquiv.symm ⟨n, c⟩)

/-- The terms of the formal multilinear series `p.changeOrigin` are continuously polynomial
as we vary the origin -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CPolynomialDef/Variantb988c3b1aff7ad71ec6aacc483d5ecb10920bf9765c983d0f937569ede009783.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa7e1c740894a3be648b71ad686c0f7b11e831b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
