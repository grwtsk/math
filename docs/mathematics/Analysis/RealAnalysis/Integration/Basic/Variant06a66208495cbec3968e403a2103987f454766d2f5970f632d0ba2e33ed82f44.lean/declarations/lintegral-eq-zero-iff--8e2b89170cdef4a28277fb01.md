# lintegral_eq_zero_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:62fd32aa-4cff-5c9f-133a-9274f5f1c179",
  "kind": "theorem",
  "lexical_name": "lintegral_eq_zero_iff'",
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
  "slug": "lintegral-eq-zero-iff--8e2b89170cdef4a28277fb01",
  "source": {
    "blob": "1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e2b89170cdef4a28277fb0123b9f63a607a06edf11500e31ce756232144b51c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62fd32aa-4cff-5c9f-133a-9274f5f1c179`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_eq_zero_iff' {f : α → ℝ≥0∞} (hf : AEMeasurable f μ) :
    ∫⁻ a, f a ∂μ = 0 ↔ f =ᵐ[μ] 0 := by
  -- The proof implicitly uses Markov's inequality,
  -- but it has been inlined for the sake of imports
  refine ⟨fun h ↦ ?_, lintegral_eq_zero_of_ae_eq_zero⟩
  have meas_levels_0 : ∀ ε > 0, μ { x | ε ≤ f x } = 0 := fun ε εpos ↦ by
    by_contra! h'
    refine ((ENNReal.mul_pos εpos.ne' h').trans_le ?_).ne' h
    calc
      _ ≥ ∫⁻ a in {x | ε ≤ f x}, f a ∂μ := setLIntegral_le_lintegral _ _
      _ ≥ ∫⁻ _ in {x | ε ≤ f x}, ε ∂μ :=
        setLIntegral_mono_ae hf.restrict (ae_of_all μ fun _ ↦ id)
      _ = _ := setLIntegral_const _ _
  obtain ⟨u, -, bu, tu⟩ := exists_seq_strictAnti_tendsto' (α := ℝ≥0∞) zero_lt_one
  have u_union : {x | f x ≠ 0} = ⋃ n, {x | u n ≤ f x} := by
    ext x
    rw [mem_iUnion, mem_ofPred_eq, ← pos_iff_ne_zero]
    rw [ENNReal.tendsto_atTop_zero] at tu
    constructor <;> intro h'
    · obtain ⟨n, hn⟩ := tu _ h'; use n, hn _ le_rfl
    · obtain ⟨n, hn⟩ := h'; exact (bu n).1.trans_le hn
  have res := measure_iUnion_null_iff.mpr fun n ↦ meas_levels_0 _ (bu n).1
  rwa [← u_union] at res

/-- The measurability assumption is necessary, otherwise there are counterexamples: for instance,
the conclusion fails if `f` is the characteristic function of a Vitali set. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant06a66208495cbec3968e403a2103987f454766d2f5970f632d0ba2e33ed82f44.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef957f14cd9e7a26cce43a9b409c62fe1dd40f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
