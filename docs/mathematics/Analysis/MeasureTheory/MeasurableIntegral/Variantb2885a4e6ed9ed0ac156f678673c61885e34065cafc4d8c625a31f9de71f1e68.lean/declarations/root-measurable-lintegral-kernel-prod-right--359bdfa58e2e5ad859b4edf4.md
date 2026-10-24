# _root_.Measurable.lintegral_kernel_prod_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 149,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14b90e01-6dd4-8e8b-02cc-f4bb6ce354f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:87edda02-a893-776c-64d8-b27ab6f98319",
  "kind": "theorem",
  "lexical_name": "_root_.Measurable.lintegral_kernel_prod_right",
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
  "slug": "root-measurable-lintegral-kernel-prod-right--359bdfa58e2e5ad859b4edf4",
  "source": {
    "blob": "52213a5c2fb76687f78d93d536d935668db8bd8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 149,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:359bdfa58e2e5ad859b4edf42792aaec844a78498b04797e12fa6614a05074af",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:87edda02-a893-776c-64d8-b27ab6f98319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Measurable.lintegral_kernel_prod_right {f : α → β → ℝ≥0∞}
    (hf : Measurable (uncurry f)) : Measurable fun a => ∫⁻ b, f a b ∂κ a := by
  let F : ℕ → SimpleFunc (α × β) ℝ≥0∞ := SimpleFunc.eapprox (uncurry f)
  have h : ∀ a, ⨆ n, F n a = uncurry f a := SimpleFunc.iSup_eapprox_apply (uncurry f) hf
  simp only [Prod.forall, uncurry_apply_pair] at h
  simp_rw [← h]
  have : ∀ a, (∫⁻ b, ⨆ n, F n (a, b) ∂κ a) = ⨆ n, ∫⁻ b, F n (a, b) ∂κ a := by
    intro a
    rw [lintegral_iSup]
    · exact fun n => (F n).measurable.comp measurable_prod_mk_left
    · exact fun i j hij b => SimpleFunc.monotone_eapprox (uncurry f) hij _
  simp_rw [this]
  -- Porting note: trouble finding the induction motive
  -- refine' measurable_iSup fun n => SimpleFunc.induction _ _ (F n)
  refine' measurable_iSup fun n => _
  refine' SimpleFunc.induction
    (P := fun f => Measurable (fun (a : α) => ∫⁻ (b : β), f (a, b) ∂κ a)) _ _ (F n)
  · intro c t ht
    simp only [SimpleFunc.const_zero, SimpleFunc.coe_piecewise, SimpleFunc.coe_const,
      SimpleFunc.coe_zero, Set.piecewise_eq_indicator]
    exact kernel.measurable_lintegral_indicator_const (κ := κ) ht c
  · intro g₁ g₂ _ hm₁ hm₂
    simp only [SimpleFunc.coe_add, Pi.add_apply]
    have h_add :
      (fun a => ∫⁻ b, g₁ (a, b) + g₂ (a, b) ∂κ a) =
        (fun a => ∫⁻ b, g₁ (a, b) ∂κ a) + fun a => ∫⁻ b, g₂ (a, b) ∂κ a := by
      ext1 a
      rw [Pi.add_apply]
      -- Porting note: was `rw` (`Function.comp` reducibility)
      erw [lintegral_add_left (g₁.measurable.comp measurable_prod_mk_left)]
      simp_rw [Function.comp_apply]
    rw [h_add]
    exact Measurable.add hm₁ hm₂
#align measurable.lintegral_kernel_prod_right Measurable.lintegral_kernel_prod_right

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableIntegral/Variantb2885a4e6ed9ed0ac156f678673c61885e34065cafc4d8c625a31f9de71f1e68.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52213a5c2fb76687f78d93d536d935668db8bd8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
