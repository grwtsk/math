# setToFun_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cab48fca-f1c9-d479-5827-d94a38461ce4",
  "kind": "theorem",
  "lexical_name": "setToFun_tsum",
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
  "slug": "settofun-tsum--f200f4d98b879a42ff03ff69",
  "source": {
    "blob": "ed7dd78b7ebd13ab9f4889e53465bc20dddb734a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f200f4d98b879a42ff03ff69334ece7ee86805635327fe37a40bcff831f18716",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cab48fca-f1c9-d479-5827-d94a38461ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToFun_tsum [CompleteSpace E] (hT : DominatedFinMeasAdditive μ T C)
    {ι} [Countable ι] {f : ι → α → E} (hf : ∀ i, AEStronglyMeasurable (f i) μ)
    (hf' : ∑' i, ∫⁻ a : α, ‖f i a‖ₑ ∂μ ≠ ∞) :
    setToFun μ T hT (fun a ↦ ∑' i, f i a) = ∑' i, setToFun μ T hT (f i) := by
  by_cases hF : CompleteSpace F; swap
  · simp [setToFun, hF]
  have hf'' i : AEMeasurable (‖f i ·‖ₑ) μ := (hf i).enorm
  have hhh : ∀ᵐ a : α ∂μ, Summable fun n => (‖f n a‖₊ : ℝ) := by
    rw [← lintegral_tsum hf''] at hf'
    refine (ae_lt_top' (AEMeasurable.tsum hf'') hf').mono ?_
    intro x hx
    rw [← ENNReal.tsum_coe_ne_top_iff_summable_coe]
    exact hx.ne
  convert!
    (MeasureTheory.hasSum_setToFun_of_dominated_convergence hT (fun i a => ‖f i a‖₊) hf _ hhh ⟨_, _⟩
        _).tsum_eq.symm
  · intro n
    filter_upwards with x
    rfl
  · fun_prop
  · dsimp [HasFiniteIntegral]
    have : ∫⁻ a, ∑' n, ‖f n a‖ₑ ∂μ < ⊤ := by rwa [lintegral_tsum hf'', lt_top_iff_ne_top]
    convert! this using 1
    apply lintegral_congr_ae
    simp_rw [← coe_nnnorm, ← NNReal.coe_tsum, enorm_eq_nnnorm, NNReal.nnnorm_eq]
    filter_upwards [hhh] with a ha
    exact ENNReal.coe_tsum (NNReal.summable_coe.mp ha)
  · filter_upwards [hhh] with x hx
    exact hx.of_norm.hasSum

/-- Corollary of the Lebesgue dominated convergence theorem: If a sequence of functions `F n` is
(eventually) uniformly bounded by a constant and converges (eventually) pointwise to a
function `f`, then the integrals of `F n` with respect to a finite measure `μ` converge
to the integral of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DominatedConvergence/Variantfcb93c6243d6b6aa7e495cae38ac892d5894e2d3037a27e03daf01e827055cfc.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed7dd78b7ebd13ab9f4889e53465bc20dddb734a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
