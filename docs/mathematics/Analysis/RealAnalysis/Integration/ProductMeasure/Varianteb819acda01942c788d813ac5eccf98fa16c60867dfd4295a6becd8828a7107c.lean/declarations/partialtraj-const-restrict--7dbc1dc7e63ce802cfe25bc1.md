# partialTraj_const_restrict₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6807386801297f718eb3a42dc57a41ab26179413",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d696cc8d-552f-c874-5df3-fb813ecaafe3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c5e2041e-ca01-fddc-3f3a-178bfa5c565b",
  "kind": "theorem",
  "lexical_name": "partialTraj_const_restrict₂",
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
  "slug": "partialtraj-const-restrict--7dbc1dc7e63ce802cfe25bc1",
  "source": {
    "blob": "6807386801297f718eb3a42dc57a41ab26179413",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dbc1dc7e63ce802cfe25bc19b74d349ee2fa23c76c839bc0231b916a6db3f0c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c5e2041e-ca01-fddc-3f3a-178bfa5c565b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialTraj_const_restrict₂ {a b : ℕ} :
    (partialTraj (fun n ↦ const _ (μ (n + 1))) a b).map (restrict₂ Ioc_subset_Iic_self) =
    const _ (Measure.pi (fun i : Ioc a b ↦ μ i)) := by
  obtain hab | hba := lt_or_ge a b
  · refine Nat.le_induction ?_ (fun n hn hind ↦ ?_) b (Nat.succ_le_of_lt hab) <;> ext1 x₀
    · rw [partialTraj_succ_self, ← map_comp_right, map_apply, prod_apply, map_apply, const_apply,
        const_apply, Measure.map_piSingleton, restrict₂_comp_IicProdIoc, Measure.map_snd_prod,
        measure_univ, one_smul]
      all_goals fun_prop
    · have : (restrict₂ (Ioc_subset_Iic_self (a := a))) ∘ (IicProdIoc (X := X) n (n + 1)) =
          (IocProdIoc a n (n + 1)) ∘ (Prod.map (restrict₂ Ioc_subset_Iic_self) id) := rfl
      rw [const_apply, partialTraj_succ_of_le (by lia), map_const, prod_const_comp, id_comp,
        ← map_comp_right, this, map_comp_right, ← map_prod_map, hind, Kernel.map_id, map_apply,
        prod_apply, const_apply, const_apply, Measure.map_piSingleton,
        Measure.pi_prod_map_IocProdIoc]
      any_goals fun_prop
      all_goals lia
  · have : IsEmpty (Ioc a b) := by simpa [hba] using Subtype.isEmpty_false
    ext x s ms
    by_cases hs : s.Nonempty
    · rw [Subsingleton.eq_univ_of_nonempty hs, @measure_univ .., measure_univ]
      exact (IsMarkovKernel.map _ (measurable_restrict₂ _)) |>.isProbabilityMeasure x
    · rw [Set.not_nonempty_iff_eq_empty.1 hs]
      simp

/-- `partialTraj κ a b` is a kernel which up to an equivalence is equal to
`Kernel.id ×ₖ (κ a ⊗ₖ ... ⊗ₖ κ (b - 1))`. This lemma therefore states that if the kernel `κ i`
is constant equal to `μ i` for all `i`, then up to an equivalence
`partialTraj κ a b = Kernel.id ×ₖ Kernel.const (⨂ μ i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Varianteb819acda01942c788d813ac5eccf98fa16c60867dfd4295a6becd8828a7107c.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6807386801297f718eb3a42dc57a41ab26179413` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
