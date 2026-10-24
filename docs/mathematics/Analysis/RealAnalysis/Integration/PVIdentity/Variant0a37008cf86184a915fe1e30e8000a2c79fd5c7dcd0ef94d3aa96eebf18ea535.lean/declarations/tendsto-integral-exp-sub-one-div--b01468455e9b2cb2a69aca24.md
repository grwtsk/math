# tendsto_integral_exp_sub_one_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:381fcc03-2743-dc53-321a-547e7ce8d212",
  "kind": "lemma",
  "lexical_name": "tendsto_integral_exp_sub_one_div",
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
  "slug": "tendsto-integral-exp-sub-one-div--b01468455e9b2cb2a69aca24",
  "source": {
    "blob": "3e99e0d243ed412a74cc9818d017ee0608d86936",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b01468455e9b2cb2a69aca24323f4a7f5e075c26064f095965d83595faf813dc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:381fcc03-2743-dc53-321a-547e7ce8d212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_integral_exp_sub_one_div {y : ℝ} (hy : 0 < y) :
    Tendsto (fun ε => ∫ u in ε..y, (exp u - 1) / u)
      (𝓝[>] (0 : ℝ)) (𝓝 (∫ u in (0:ℝ)..y, (exp u - 1) / u)) := by
  -- The function (exp(u)-1)/u is integrable on (0,y].
  have h_integrable : MeasureTheory.IntegrableOn (fun u => (Real.exp u - 1) / u) (Set.Ioc 0 y) := by
    exact integrableOn_exp_sub_one_div hy;
  -- Let's choose any $M > 0$ such that $y < M$.
  obtain ⟨M, hM⟩ : ∃ M > y, True := by
    exact ⟨ y + 1, by linarith, trivial ⟩;
  -- The integral of (exp(u)-1)/u over (0, M) is continuous at 0.
  have h_cont : ContinuousOn (fun ε => ∫ u in ε..y, (Real.exp u - 1) / u) (Set.Icc 0 M) := by
    have h_integrable_M : MeasureTheory.IntegrableOn (fun u => (Real.exp u - 1) / u) (Set.Ioc 0 M) := by
      have h_integrable_M : MeasureTheory.IntegrableOn (fun u => (Real.exp u - 1) / u) (Set.Ioc y M) := by
        exact ContinuousOn.integrableOn_Icc ( by exact continuousOn_of_forall_continuousAt fun u hu => ContinuousAt.div ( ContinuousAt.sub ( Real.continuous_exp.continuousAt ) continuousAt_const ) continuousAt_id <| by linarith [ hu.1 ] ) |> fun h => h.mono_set <| Set.Ioc_subset_Icc_self;
      convert h_integrable.union h_integrable_M using 1 ; rw [ Set.Ioc_union_Ioc_eq_Ioc ] <;> linarith;
    have h_cont : ContinuousOn (fun ε => ∫ u in (y)..ε, (Real.exp u - 1) / u) (Set.Icc 0 M) := by
      intro ε hε; apply_rules [ intervalIntegral.continuousWithinAt_primitive ] ; aesop;
      rw [ min_eq_right hy.le, max_eq_right hM.1.le ] ; rw [ intervalIntegrable_iff_integrableOn_Ioc_of_le ( by linarith ) ] ; aesop;
    exact ContinuousOn.congr ( h_cont.neg ) fun x hx => by rw [ ← intervalIntegral.integral_symm ] ;
  have := h_cont 0 ⟨ by norm_num, by linarith ⟩;
  convert this.tendsto.mono_left _ using 2;
  norm_num [ nhdsWithin, Filter.mem_inf_principal ];
  exact Filter.eventually_of_mem ( Iio_mem_nhds <| show 0 < M by linarith ) fun x hx => fun hx' => ⟨ le_of_lt hx', le_of_lt hx ⟩
/-
PROBLEM
The Euler-Mascheroni constant equals ∫_0^1 (1-e^{-t})/t dt - ∫_1^∞ e^{-t}/t dt
PROVIDED SOLUTION
This follows from γ = -Γ'(1) and the fact that Γ'(1) = ∫_0^∞ e^{-t} log(t) dt.
Key steps:
1. γ = -Γ'(1) (from eulerMascheroniConstant_eq_neg_deriv)
2. Γ'(1) = ∫_0^∞ e^{-t} log(t) dt (this is the derivative of the Gamma integral ∫_0^∞ e^{-t} t^{s-1} dt at s=1)
3. -∫_0^∞ e^{-t} log(t) dt = ∫_0^1 (1-e^{-t})/t dt - ∫_1^∞ e^{-t}/t dt
Step 3 proof: Write log(t) as an integral.
For t ∈ (0,1): log(t) = -∫_t^1 1/s ds, so -e^{-t} log(t) = e^{-t} ∫_t^1 1/s ds
For t ∈ (1,∞): log(t) = ∫_1^t 1/s ds, so -e^{-t} log(t) = -e^{-t} ∫_1^t 1/s ds
By Fubini:
-∫_0^1 e^{-t} log(t) dt = ∫_0^1 e^{-t} (∫_t^1 1/s ds) dt = ∫_0^1 (1/s) (∫_0^s e^{-t} dt) ds = ∫_0^1 (1-e^{-s})/s ds
-∫_1^∞ e^{-t} log(t) dt = -∫_1^∞ e^{-t} (∫_1^t 1/s ds) dt = -∫_1^∞ (1/s)(∫_s^∞ e^{-t} dt) ds = -∫_1^∞ e^{-s}/s ds
Adding: γ = ∫_0^1 (1-e^{-s})/s ds - ∫_1^∞ e^{-s}/s ds
-/
set_option maxHeartbeats 1600000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PVIdentity/Variant0a37008cf86184a915fe1e30e8000a2c79fd5c7dcd0ef94d3aa96eebf18ea535.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e99e0d243ed412a74cc9818d017ee0608d86936` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
