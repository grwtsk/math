# contDiffOn_succ_iff_fderivWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 848,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7490f333-6179-667a-a3fa-30aa33ec220f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9cc8bb4-b774-fd6a-0ab2-3969a4f933e7",
  "kind": "theorem",
  "lexical_name": "contDiffOn_succ_iff_fderivWithin",
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
  "slug": "contdiffon-succ-iff-fderivwithin--fb76381bb7c7db0a598c9156",
  "source": {
    "blob": "4ab507f7d08758f6092f4529f1eb045208584f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 874,
    "line": 848,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb76381bb7c7db0a598c915696c69b9d51e6af4e5ffecbfc0c153b87e8f653d8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9cc8bb4-b774-fd6a-0ab2-3969a4f933e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 848–874.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffOn_succ_iff_fderivWithin (hs : UniqueDiffOn 𝕜 s) :
    ContDiffOn 𝕜 (n + 1) f s ↔
      DifferentiableOn 𝕜 f s ∧ (n = ω → AnalyticOn 𝕜 f s) ∧
      ContDiffOn 𝕜 n (fderivWithin 𝕜 f s) s := by
  refine ⟨fun H => ?_, fun h => contDiffOn_succ_of_fderivWithin h.1 h.2.1 h.2.2⟩
  refine ⟨H.differentiableOn (by simp), ?_, fun x hx => ?_⟩
  · rintro rfl
    exact H.analyticOn
  have A (m : ℕ) (hm : m ≤ n) : ContDiffWithinAt 𝕜 m (fun y => fderivWithin 𝕜 f s y) s x := by
    rcases (contDiffWithinAt_succ_iff_hasFDerivWithinAt (n := m) (ne_of_beq_false rfl)).1
      (H.of_le (by gcongr) x hx) with ⟨u, hu, -, f', hff', hf'⟩
    rcases mem_nhdsWithin.1 hu with ⟨o, o_open, xo, ho⟩
    rw [inter_comm, insert_eq_of_mem hx] at ho
    have := hf'.mono ho
    rw [contDiffWithinAt_inter' (mem_nhdsWithin_of_mem_nhds (IsOpen.mem_nhds o_open xo))] at this
    apply this.congr_of_eventuallyEq_of_mem _ hx
    have : o ∩ s ∈ 𝓝[s] x := mem_nhdsWithin.2 ⟨o, o_open, xo, Subset.refl _⟩
    rw [inter_comm] at this
    refine Filter.eventuallyEq_of_mem this fun y hy => ?_
    have A : fderivWithin 𝕜 f (s ∩ o) y = f' y :=
      ((hff' y (ho hy)).mono ho).fderivWithin (hs.inter o_open y hy)
    rwa [fderivWithin_inter (o_open.mem_nhds hy.2)] at A
  match n with
  | ω => exact (H.analyticOn.fderivWithin hs).contDiffOn hs (n := ω) x hx
  | ∞ => exact contDiffWithinAt_infty.2 (fun m ↦ A m (mod_cast le_top))
  | (n : ℕ) => exact A n le_rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Defs/Variantb1bbfe431bab224de42a989f3f31d7480868b415dd80abf43bf318310c05ed02.lean#L848).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ab507f7d08758f6092f4529f1eb045208584f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
