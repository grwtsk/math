# compProdFun_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2702234f-f03c-dd81-fbcc-32832fb88419",
  "kind": "theorem",
  "lexical_name": "compProdFun_iUnion",
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
  "slug": "compprodfun-iunion--4059d6c0fd385d33588e88fd",
  "source": {
    "blob": "b6c5842276844a959b363d3a5e7e41fc25bcf772",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 107,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4059d6c0fd385d33588e88fd079559b72298c2d2be44fc53d1371451ad33adab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2702234f-f03c-dd81-fbcc-32832fb88419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compProdFun_iUnion (κ : kernel α β) (η : kernel (α × β) γ) [IsSFiniteKernel η] (a : α)
    (f : ℕ → Set (β × γ)) (hf_meas : ∀ i, MeasurableSet (f i))
    (hf_disj : Pairwise (Disjoint on f)) :
    compProdFun κ η a (⋃ i, f i) = ∑' i, compProdFun κ η a (f i) := by
  have h_Union :
    (fun b => η (a, b) {c : γ | (b, c) ∈ ⋃ i, f i}) = fun b =>
      η (a, b) (⋃ i, {c : γ | (b, c) ∈ f i}) := by
    ext1 b
    congr with c
    simp only [Set.mem_iUnion, Set.iSup_eq_iUnion, Set.mem_setOf_eq]
  rw [compProdFun, h_Union]
  have h_tsum :
    (fun b => η (a, b) (⋃ i, {c : γ | (b, c) ∈ f i})) = fun b =>
      ∑' i, η (a, b) {c : γ | (b, c) ∈ f i} := by
    ext1 b
    rw [measure_iUnion]
    · intro i j hij s hsi hsj c hcs
      have hbci : {(b, c)} ⊆ f i := by rw [Set.singleton_subset_iff]; exact hsi hcs
      have hbcj : {(b, c)} ⊆ f j := by rw [Set.singleton_subset_iff]; exact hsj hcs
      simpa only [Set.bot_eq_empty, Set.le_eq_subset, Set.singleton_subset_iff,
        Set.mem_empty_iff_false] using hf_disj hij hbci hbcj
    · -- Porting note: behavior of `@` changed relative to lean 3, was
      -- exact fun i => (@measurable_prod_mk_left β γ _ _ b) _ (hf_meas i)
      exact fun i => (@measurable_prod_mk_left β γ _ _ b) (hf_meas i)
  rw [h_tsum, lintegral_tsum]
  · rfl
  · intro i
    have hm : MeasurableSet {p : (α × β) × γ | (p.1.2, p.2) ∈ f i} :=
      measurable_fst.snd.prod_mk measurable_snd (hf_meas i)
    exact ((measurable_kernel_prod_mk_left hm).comp measurable_prod_mk_left).aemeasurable
#align probability_theory.kernel.comp_prod_fun_Union ProbabilityTheory.kernel.compProdFun_iUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variant506210febe3f0768b65ed4703690bd514fd0568317bc638ba7aed3ba3e9caf15.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c5842276844a959b363d3a5e7e41fc25bcf772` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
