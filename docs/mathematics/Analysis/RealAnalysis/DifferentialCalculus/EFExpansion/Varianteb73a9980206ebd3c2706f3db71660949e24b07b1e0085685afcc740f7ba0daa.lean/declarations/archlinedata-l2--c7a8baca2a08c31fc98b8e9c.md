# archLineData_L2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd870bd0-c47e-bad1-4fcd-2e657dccbef7",
  "kind": "theorem",
  "lexical_name": "archLineData_L2",
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
  "slug": "archlinedata-l2--c7a8baca2a08c31fc98b8e9c",
  "source": {
    "blob": "9b07462fa708a42283cb7334515d99edaba3fc28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 553,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7a8baca2a08c31fc98b8e9c2817235b2b403706ba10708888395755b1de108f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd870bd0-c47e-bad1-4fcd-2e657dccbef7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archLineData_L2 (hc1 : 9/8 ≤ c) (hc2 : c ≤ 5/4) :
    ArchLineData c L2 (fun τ => ((L2star τ : ℝ) : ℂ)) where
  one_lt := by linarith
  le := by linarith
  analytic := fun t => L2_analyticAt_goodStrip (mem_goodStrip_line hc1 hc2 t)
  conj_symm := fun z _ hz => L2_conj hz
  two_pt := norm_L2_sub_L2star_le hc1 hc2
  deriv_le := by
    obtain ⟨C, h⟩ := norm_deriv_L2_le hc1 hc2
    refine ⟨C, fun t ht => ?_⟩
    have h' := h t (by rw [abs_of_pos (by linarith)]; exact ht)
    rwa [abs_of_pos (by linarith : (0:ℝ) < t)] at h'
  lower := by
    obtain ⟨C, h⟩ := norm_L2_ge hc1 hc2
    refine ⟨C, fun t ht => ?_⟩
    have h' := h t (by rw [abs_of_pos (by linarith)]; exact ht)
    rwa [abs_of_pos (by linarith : (0:ℝ) < t)] at h'
  lower_par := ⟨1, fun τ hτ => norm_L2star_ge (by linarith)⟩
  upper := (norm_L2_line hc1 hc2).imp fun _ h => h.2

/-! ## X5–X6. The freeze on the line -/

section freeze

/-- E₂′/E₂ in the (L₂′+B)/(L₂−A) form on the line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EFExpansion/Varianteb73a9980206ebd3c2706f3db71660949e24b07b1e0085685afcc740f7ba0daa.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b07462fa708a42283cb7334515d99edaba3fc28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
