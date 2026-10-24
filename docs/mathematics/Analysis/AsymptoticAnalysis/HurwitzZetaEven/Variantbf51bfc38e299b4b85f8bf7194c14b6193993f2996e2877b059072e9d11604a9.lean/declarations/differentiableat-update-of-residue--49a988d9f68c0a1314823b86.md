# differentiableAt_update_of_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 556,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb5404ff-8051-d3b8-4bb1-7a53c030be89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:05c3a23d-99df-e3e4-d2f3-d962a2b61039",
  "kind": "lemma",
  "lexical_name": "differentiableAt_update_of_residue",
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
  "slug": "differentiableat-update-of-residue--49a988d9f68c0a1314823b86",
  "source": {
    "blob": "92ffff2cca27f74c6f2ef2925ea61dae82f90ba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 584,
    "line": 556,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49a988d9f68c0a1314823b86c0b50250f0aa52312011c48a76cfcc0f3249e85c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c3a23d-99df-e3e4-d2f3-d962a2b61039`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 556–584.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma differentiableAt_update_of_residue
    {Λ : ℂ → ℂ} (hf : ∀ (s : ℂ) (_ : s ≠ 0) (_ : s ≠ 1), DifferentiableAt ℂ Λ s)
    {L : ℂ} (h_lim : Tendsto (fun s ↦ s * Λ s) (𝓝[≠] 0) (𝓝 L)) (s : ℂ) (hs' : s ≠ 1) :
    DifferentiableAt ℂ (Function.update (fun s ↦ Λ s / Gammaℝ s) 0 (L / 2)) s := by
  have claim (t) (ht : t ≠ 0) (ht' : t ≠ 1) : DifferentiableAt ℂ (fun u : ℂ ↦ Λ u / Gammaℝ u) t :=
    (hf t ht ht').mul differentiable_Gammaℝ_inv.differentiableAt
  have claim2 : Tendsto (fun s : ℂ ↦ Λ s / Gammaℝ s) (𝓝[≠] 0) (𝓝 <| L / 2) := by
    refine Tendsto.congr' ?_ (h_lim.div Gammaℝ_residue_zero two_ne_zero)
    filter_upwards [self_mem_nhdsWithin] with s (hs : s ≠ 0)
    rw [Pi.div_apply, ← div_div, mul_div_cancel_left₀ _ hs]
  rcases ne_or_eq s 0 with hs | rfl
  · -- Easy case : `s ≠ 0`
    refine (claim s hs hs').congr_of_eventuallyEq ?_
    filter_upwards [isOpen_compl_singleton.mem_nhds hs] with x hx
    simp [Function.update_of_ne hx]
  · -- Hard case : `s = 0`
    simp_rw [← claim2.limUnder_eq]
    have S_nhds : {(1 : ℂ)}ᶜ ∈ 𝓝 (0 : ℂ) := isOpen_compl_singleton.mem_nhds hs'
    refine ((Complex.differentiableOn_update_limUnder_of_isLittleO S_nhds
      (fun t ht ↦ (claim t ht.2 ht.1).differentiableWithinAt) ?_) 0 hs').differentiableAt S_nhds
    simp only [Gammaℝ, zero_div, div_zero, Complex.Gamma_zero, mul_zero, sub_zero]
    -- Remains to show completed zeta is `o (s ^ (-1))` near 0.
    refine (isBigO_const_of_tendsto claim2 <| one_ne_zero' ℂ).trans_isLittleO ?_
    rw [isLittleO_iff_tendsto']
    · exact Tendsto.congr (fun x ↦ by rw [← one_div, one_div_one_div]) nhdsWithin_le_nhds
    · exact eventually_of_mem self_mem_nhdsWithin fun x hx hx' ↦ (hx <| inv_eq_zero.mp hx').elim

/-- The even part of the Hurwitz zeta function, i.e. the meromorphic function of `s` which agrees
with `1 / 2 * ∑' (n : ℤ), 1 / |n + a| ^ s` for `1 < re s` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantbf51bfc38e299b4b85f8bf7194c14b6193993f2996e2877b059072e9d11604a9.lean#L556).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92ffff2cca27f74c6f2ef2925ea61dae82f90ba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
