# ae_const_le_iff_forall_lt_measure_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff1040cd-6435-404f-83ef-bc202fceeb5f",
  "kind": "theorem",
  "lexical_name": "ae_const_le_iff_forall_lt_measure_zero",
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
  "slug": "ae-const-le-iff-forall-lt-measure-zero--65ab1714a1f3168416658a82",
  "source": {
    "blob": "73607fe8a34e63c62707f8d1cd49d5970d967941",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65ab1714a1f3168416658a82258a610a30326704e8baa1d7ed71f579545a0a24",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff1040cd-6435-404f-83ef-bc202fceeb5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_const_le_iff_forall_lt_measure_zero {β} [LinearOrder β] [TopologicalSpace β]
    [OrderTopology β] [FirstCountableTopology β] (f : α → β) (c : β) :
    (∀ᵐ x ∂μ, c ≤ f x) ↔ ∀ b < c, μ {x | f x ≤ b} = 0 := by
  rw [ae_iff]
  push_neg
  constructor
  · intro h b hb
    exact measure_mono_null (fun y hy => (lt_of_le_of_lt hy hb : _)) h
  intro hc
  by_cases h : ∀ b, c ≤ b
  · have : {a : α | f a < c} = ∅ := by
      apply Set.eq_empty_iff_forall_not_mem.2 fun x hx => ?_
      exact (lt_irrefl _ (lt_of_lt_of_le hx (h (f x)))).elim
    simp [this]
  by_cases H : ¬IsLUB (Set.Iio c) c
  · have : c ∈ upperBounds (Set.Iio c) := fun y hy => le_of_lt hy
    obtain ⟨b, b_up, bc⟩ : ∃ b : β, b ∈ upperBounds (Set.Iio c) ∧ b < c := by
      simpa [IsLUB, IsLeast, this, lowerBounds] using H
    exact measure_mono_null (fun x hx => b_up hx) (hc b bc)
  push_neg at H h
  obtain ⟨u, _, u_lt, u_lim, -⟩ :
    ∃ u : ℕ → β,
      StrictMono u ∧ (∀ n : ℕ, u n < c) ∧ Tendsto u atTop (nhds c) ∧ ∀ n : ℕ, u n ∈ Set.Iio c :=
    H.exists_seq_strictMono_tendsto_of_not_mem (lt_irrefl c) h
  have h_Union : {x | f x < c} = ⋃ n : ℕ, {x | f x ≤ u n} := by
    ext1 x
    simp_rw [Set.mem_iUnion, Set.mem_setOf_eq]
    constructor <;> intro h
    · obtain ⟨n, hn⟩ := ((tendsto_order.1 u_lim).1 _ h).exists; exact ⟨n, hn.le⟩
    · obtain ⟨n, hn⟩ := h; exact hn.trans_lt (u_lt _)
  rw [h_Union, measure_iUnion_null_iff]
  intro n
  exact hc _ (u_lt n)
#align measure_theory.ae_const_le_iff_forall_lt_measure_zero MeasureTheory.ae_const_le_iff_forall_lt_measure_zero

section ENNReal

open scoped Topology

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AEEqOfIntegral/Variant760d33af75b6f110e37131d911dc25af99d1f970bc54a33b3376ba171f61fae7.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73607fe8a34e63c62707f8d1cd49d5970d967941` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
