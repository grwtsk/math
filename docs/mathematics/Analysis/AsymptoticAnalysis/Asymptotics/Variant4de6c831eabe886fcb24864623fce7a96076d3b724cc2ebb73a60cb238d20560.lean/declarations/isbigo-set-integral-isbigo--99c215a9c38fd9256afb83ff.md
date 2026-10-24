# IsBigO.set_integral_isBigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "69fecde8ba93fa02266b26bc08777e8e7a068afb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:86879d1d-4719-f2c8-3b6a-afe5a20c8e66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8acdcb99-f240-5999-f58a-5e6a34a64ba3",
  "kind": "theorem",
  "lexical_name": "IsBigO.set_integral_isBigO",
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
  "slug": "isbigo-set-integral-isbigo--99c215a9c38fd9256afb83ff",
  "source": {
    "blob": "69fecde8ba93fa02266b26bc08777e8e7a068afb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99c215a9c38fd9256afb83ff5bd123983b1f36b8bf8cf1fb5d9b4b6dad8ce06b",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8acdcb99-f240-5999-f58a-5e6a34a64ba3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBigO.set_integral_isBigO
    (hf : f =O[𝓟 s ×ˢ l] (g ∘ Prod.snd)) (hs : MeasurableSet s) (hμ : μ s < ⊤) :
    (fun x ↦ ∫ i in s, f (i, x) ∂μ) =O[l] g := by
  obtain ⟨C, hC⟩ := hf.bound
  obtain ⟨t, htl, ht⟩ := hC.exists_mem
  obtain ⟨u, hu, v, hv, huv⟩ := Filter.mem_prod_iff.mp htl
  refine isBigO_iff.mpr ⟨C * μ.real s, eventually_iff_exists_mem.mpr ⟨v, hv, fun x hx ↦ ?_⟩⟩
  rw [mul_assoc, ← smul_eq_mul _ ‖g x‖, ← MeasureTheory.measureReal_restrict_apply_univ,
    ← integral_const, mul_comm, ← smul_eq_mul, ← integral_smul_const]
  haveI : IsFiniteMeasure (μ.restrict s) := ⟨by rw [Measure.restrict_apply_univ s]; exact hμ⟩
  refine (norm_integral_le_integral_norm _).trans <|
    integral_mono_of_nonneg (univ_mem' fun _ ↦ norm_nonneg _) (integrable_const _) ?_
  filter_upwards [MeasureTheory.self_mem_ae_restrict hs]
  intro y hy
  rw [smul_eq_mul, mul_comm]
  exact ht (y, x) <| huv ⟨hu hy, hx⟩

end Asymptotics

variable [TopologicalSpace α] [SecondCountableTopology α] [MeasurableSpace α] {μ : Measure α}
  [NormedAddCommGroup F]

namespace MeasureTheory

/-- If `f` is locally integrable, and `f =O[cocompact] g` for some `g` integrable at `cocompact`,
then `f` is integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Asymptotics/Variant4de6c831eabe886fcb24864623fce7a96076d3b724cc2ebb73a60cb238d20560.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69fecde8ba93fa02266b26bc08777e8e7a068afb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
