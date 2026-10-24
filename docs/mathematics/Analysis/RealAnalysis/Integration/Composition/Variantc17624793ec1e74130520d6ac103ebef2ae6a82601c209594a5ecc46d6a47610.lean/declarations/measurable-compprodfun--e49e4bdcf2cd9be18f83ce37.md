# measurable_compProdFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d4ed952dc3f155e3f9de5f6cf0480a765236331d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c1/c17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efa14409-237b-991f-e511-77ab38f6621e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:866b5bae-cf1e-5e5a-ffe9-e4aa806c1cf5",
  "kind": "theorem",
  "lexical_name": "measurable_compProdFun",
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
  "slug": "measurable-compprodfun--e49e4bdcf2cd9be18f83ce37",
  "source": {
    "blob": "d4ed952dc3f155e3f9de5f6cf0480a765236331d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 173,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49e4bdcf2cd9be18f83ce37e27a2dbe355abc57b11f3834a241223ec9282f10",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:866b5bae-cf1e-5e5a-ffe9-e4aa806c1cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurable_compProdFun (κ : kernel α β) [IsSFiniteKernel κ] (η : kernel (α × β) γ)
    [IsSFiniteKernel η] (hs : MeasurableSet s) : Measurable fun a => compProdFun κ η a s := by
  simp_rw [compProdFun_tsum_right κ η _ hs]
  refine' Measurable.ennreal_tsum fun n => _
  simp only [compProdFun]
  have h_meas : Measurable (Function.uncurry fun a b => seq η n (a, b) {c : γ | (b, c) ∈ s}) := by
    have :
      (Function.uncurry fun a b => seq η n (a, b) {c : γ | (b, c) ∈ s}) = fun p =>
        seq η n p {c : γ | (p.2, c) ∈ s} := by
      ext1 p
      have hp_eq_mk : p = (p.fst, p.snd) := Prod.mk.eta.symm
      rw [hp_eq_mk, Function.uncurry_apply_pair]
    rw [this]
    exact measurable_kernel_prod_mk_left (measurable_fst.snd.prod_mk measurable_snd hs)
  exact h_meas.lintegral_kernel_prod_right
#align probability_theory.kernel.measurable_comp_prod_fun ProbabilityTheory.kernel.measurable_compProdFun

open Classical

/-- Composition-Product of kernels. For s-finite kernels, it satisfies
`∫⁻ bc, f bc ∂(compProd κ η a) = ∫⁻ b, ∫⁻ c, f (b, c) ∂(η (a, b)) ∂(κ a)`
(see `ProbabilityTheory.kernel.lintegral_compProd`).
If either of the kernels is not s-finite, `compProd` is given the junk value 0. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Composition/Variantc17624793ec1e74130520d6ac103ebef2ae6a82601c209594a5ecc46d6a47610.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4ed952dc3f155e3f9de5f6cf0480a765236331d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
