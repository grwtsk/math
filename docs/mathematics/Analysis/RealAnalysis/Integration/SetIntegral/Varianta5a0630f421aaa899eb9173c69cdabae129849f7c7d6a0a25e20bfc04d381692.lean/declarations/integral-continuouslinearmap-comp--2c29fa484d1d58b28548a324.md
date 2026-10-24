# integral_continuousLinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 386,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f2c94a1-e457-7041-f441-41291dfc8805",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d73a857-ca42-ec6f-bc85-50cd10f4c310",
  "kind": "theorem",
  "lexical_name": "integral_continuousLinearMap_comp",
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
  "slug": "integral-continuouslinearmap-comp--2c29fa484d1d58b28548a324",
  "source": {
    "blob": "ffed85567055957af5325ba9761e2f3ebd7792e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 386,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c29fa484d1d58b28548a324cad4855247bb9582f12072c2e2ad32fa4031f89c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d73a857-ca42-ec6f-bc85-50cd10f4c310`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_continuousLinearMap_comp
    {f : X → H} {C : H →L[ℝ] E} (hf : Integrable f μ.variation) :
    ∫ᵛ y, C (f y) ∂[B; μ] = ∫ᵛ y, f y ∂[B ∘L C; μ] := by
  by_cases hG : CompleteSpace G; swap
  · simp [integral_of_not_completeSpace hG]
  apply hf.induction (P := fun f ↦ ∫ᵛ y, C (f y) ∂[B; μ] = ∫ᵛ y, f y ∂[B ∘L C; μ])
  · intro c s hs hc
    have : IsFiniteMeasure (μ.variation.restrict s) := ⟨by simpa⟩
    rw [integral_indicator_const _ hs]
    have : (fun y ↦ C (s.indicator (fun x ↦ c) y)) = s.indicator (fun x ↦ C c) := by
      ext; simp only [indicator]; grind
    simp_rw [this]
    rw [integral_indicator_const _ hs]
    rfl
  · intro f g _ f_int g_int hf hg
    simp only [Pi.add_apply, _root_.map_add]
    rw [integral_fun_add (C.integrable_comp f_int) (C.integrable_comp g_int), hf, hg,
      integral_fun_add f_int g_int]
  · apply isClosed_eq
    · have I (f : Lp H 1 μ.variation) : ∫ᵛ x, C (f x) ∂[B; μ] = ∫ᵛ x, (C.compLp f) x ∂[B; μ] :=
        (integral_congr_ae (coeFn_compLp _ _)).symm
      simp_rw [I]
      exact continuous_integral.comp (C.compLpL 1 μ.variation).continuous
    · exact continuous_integral
  · intro f g hfg _ hf
    have : ∀ᵐ x ∂μ.variation, C (f x) = C (g x) := by
      filter_upwards [hfg] with x hx using by simp [hx]
    rw [← integral_congr_ae hfg, ← integral_congr_ae this, hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Varianta5a0630f421aaa899eb9173c69cdabae129849f7c7d6a0a25e20bfc04d381692.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffed85567055957af5325ba9761e2f3ebd7792e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
