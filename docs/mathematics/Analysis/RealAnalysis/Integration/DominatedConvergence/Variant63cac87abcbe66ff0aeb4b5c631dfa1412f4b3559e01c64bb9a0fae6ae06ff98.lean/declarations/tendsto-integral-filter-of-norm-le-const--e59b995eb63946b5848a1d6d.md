# tendsto_integral_filter_of_norm_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74d5f2f2-3d1b-0b5f-84ec-71250a3438da",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_filter_of_norm_le_const",
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
  "slug": "tendsto-integral-filter-of-norm-le-const--e59b995eb63946b5848a1d6d",
  "source": {
    "blob": "4c9c2804830d9693d63c4708e83da3dcc9ccf9c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 128,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e59b995eb63946b5848a1d6d7c0e02eaad3a056a9764479c3a5a9d9b457e8d39",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74d5f2f2-3d1b-0b5f-84ec-71250a3438da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_filter_of_norm_le_const {ι} {l : Filter ι} [l.IsCountablyGenerated]
    {F : ι → α → G} [IsFiniteMeasure μ] {f : α → G}
    (h_meas : ∀ᶠ n in l, AEStronglyMeasurable (F n) μ)
    (h_bound : ∃ C, ∀ᶠ n in l, (∀ᵐ ω ∂μ, ‖F n ω‖ ≤ C))
    (h_lim : ∀ᵐ ω ∂μ, Tendsto (fun n => F n ω) l (𝓝 (f ω))) :
    Tendsto (fun n => ∫ ω, F n ω ∂μ) l (nhds (∫ ω, f ω ∂μ)) := by
  simp only [integral_eq_setToFun]
  exact tendsto_setToFun_filter_of_norm_le_const _ h_meas h_bound h_lim

end MeasureTheory

section TendstoMono

variable {α E : Type*} [MeasurableSpace α]
  {μ : Measure α} [NormedAddCommGroup E] [NormedSpace ℝ E] {s : ℕ → Set α}
  {f : α → E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DominatedConvergence/Variant63cac87abcbe66ff0aeb4b5c631dfa1412f4b3559e01c64bb9a0fae6ae06ff98.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c9c2804830d9693d63c4708e83da3dcc9ccf9c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
