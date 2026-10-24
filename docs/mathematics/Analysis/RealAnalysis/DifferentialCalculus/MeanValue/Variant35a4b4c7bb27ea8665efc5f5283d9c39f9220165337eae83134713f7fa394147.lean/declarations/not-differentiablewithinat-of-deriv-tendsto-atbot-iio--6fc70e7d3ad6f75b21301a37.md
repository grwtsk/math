# not_differentiableWithinAt_of_deriv_tendsto_atBot_Iio

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cc5510c22d6128d23e3d73c1244be8465b719487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 233,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ff247ace-ea20-bffe-16a5-3396bf25f54d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4854c2eb-1551-9448-ac59-8d2399e1c1c4",
  "kind": "theorem",
  "lexical_name": "not_differentiableWithinAt_of_deriv_tendsto_atBot_Iio",
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
  "slug": "not-differentiablewithinat-of-deriv-tendsto-atbot-iio--6fc70e7d3ad6f75b21301a37",
  "source": {
    "blob": "cc5510c22d6128d23e3d73c1244be8465b719487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 233,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6fc70e7d3ad6f75b21301a374f3e6fa2317727764e0c754f9009b363b0dc6acd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4854c2eb-1551-9448-ac59-8d2399e1c1c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_differentiableWithinAt_of_deriv_tendsto_atBot_Iio (f : ℝ → ℝ) {a : ℝ}
    (hf : Tendsto (deriv f) (𝓝[<] a) atBot) : ¬ DifferentiableWithinAt ℝ f (Iio a) a := by
  let f' := f ∘ Neg.neg
  have hderiv : deriv f' =ᶠ[𝓝[>] (-a)] -(deriv f ∘ Neg.neg) := by
    rw [atBot_basis.tendsto_right_iff] at hf
    specialize hf (-1) trivial
    rw [(nhdsLT_basis a).eventually_iff] at hf
    rw [EventuallyEq, (nhdsGT_basis (-a)).eventually_iff]
    obtain ⟨b, hb₁, hb₂⟩ := hf
    refine ⟨-b, by linarith, fun x hx => ?_⟩
    simp only [Pi.neg_apply, Function.comp_apply]
    suffices deriv f' x = deriv f (-x) * deriv (Neg.neg : ℝ → ℝ) x by simpa using this
    refine deriv_comp x (differentiableAt_of_deriv_ne_zero ?_) (by fun_prop)
    rw [mem_Ioo] at hx
    have h₁ : -x ∈ Ioo b a := ⟨by linarith, by linarith⟩
    have h₂ : deriv f (-x) ≤ -1 := hb₂ h₁
    exact ne_of_lt (by linarith)
  have hmain : ¬ DifferentiableWithinAt ℝ f' (Ioi (-a)) (-a) := by
    refine not_differentiableWithinAt_of_deriv_tendsto_atTop_Ioi f' <| Tendsto.congr' hderiv.symm ?_
    refine Tendsto.comp (g := -deriv f) ?_ tendsto_neg_nhdsGT_neg
    exact Tendsto.comp (g := Neg.neg) tendsto_neg_atBot_atTop hf
  intro h
  have : DifferentiableWithinAt ℝ f' (Ioi (-a)) (-a) := by
    refine DifferentiableWithinAt.comp (g := f) (f := Neg.neg) (t := Iio a) (-a) ?_ ?_ ?_
    · simp [h]
    · fun_prop
    · intro x
      simp [neg_lt]
  exact hmain this

/-- A real function whose derivative tends to infinity from the left at a point is not
differentiable on the left at that point -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MeanValue/Variant35a4b4c7bb27ea8665efc5f5283d9c39f9220165337eae83134713f7fa394147.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc5510c22d6128d23e3d73c1244be8465b719487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
