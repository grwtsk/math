# exponential_height_sup_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:058419bf-09eb-3650-fe8b-39bc59fecb10",
  "kind": "theorem",
  "lexical_name": "exponential_height_sup_bound",
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
  "slug": "exponential-height-sup-bound--daeeb8fab9111ffb0f6799ff",
  "source": {
    "blob": "1a43053c6d7ff60e19aaafb0467dae7c10645d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 493,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daeeb8fab9111ffb0f6799ff1e3da608f335ce426aec2fcf5debe2f02769afd4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058419bf-09eb-3650-fe8b-39bc59fecb10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 493–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_height_sup_bound (R : ℝ) (hR : 1 ≤ R) :
    sSup (Set.range (fun A : {A : ℝ // R ≤ A} ↦ tailError A.val (Real.exp A.val))) ≤
      tailConstant * R ^ (-9 : ℝ) := by
  apply csSup_le
  · exact ⟨tailError R (Real.exp R), ⟨⟨R, le_rfl⟩, rfl⟩⟩
  · intro x hx
    obtain ⟨A, rfl⟩ := hx
    exact exponential_height_uniform R hR A.val A.property

#check Z0_pos
#check normalization_lower
#check normalized_square_eq
#check normalized_squares_summable
#check normalized_square_norms_summable
#check normalized_square_norm_le
#check pseries_tail_le
#check heightRetained_finite
#check tail_floor_le
#check floor_half_le
#check heightShellToShell_injective
#check heightShell_finite
#check heightShell_card_le
#check heightShell_norm_sum_le
#check height_tail_summable
#check height_tail_norms_le
#check height_tail_norm_le
#check decayConstant_sq_eq
#check shellConstant_pos
#check shellConstant_count
#check tailConstant_nonneg
#check readout_partition
#check truncation_error_eq
#check actual_source_tail_bound
#check exists_uniform_tail_bound
#check actual_source_truncation_bound
#check exponential_height_bound
#check exponential_height_uniform
#check exponential_height_tendsto_zero
#check exponential_height_sup_bound
#print axioms Z0_pos
#print axioms normalization_lower
#print axioms normalized_square_eq
#print axioms normalized_squares_summable
#print axioms normalized_square_norms_summable
#print axioms normalized_square_norm_le
#print axioms pseries_tail_le
#print axioms heightRetained_finite
#print axioms tail_floor_le
#print axioms floor_half_le
#print axioms heightShellToShell_injective
#print axioms heightShell_finite
#print axioms heightShell_card_le
#print axioms heightShell_norm_sum_le
#print axioms height_tail_summable
#print axioms height_tail_norms_le
#print axioms height_tail_norm_le
#print axioms decayConstant_sq_eq
#print axioms shellConstant_pos
#print axioms shellConstant_count
#print axioms tailConstant_nonneg
#print axioms readout_partition
#print axioms truncation_error_eq
#print axioms actual_source_tail_bound
#print axioms exists_uniform_tail_bound
#print axioms actual_source_truncation_bound
#print axioms exponential_height_bound
#print axioms exponential_height_uniform
#print axioms exponential_height_tendsto_zero
#print axioms exponential_height_sup_bound

end
end ContinuousResearch.SourceZeroTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceZeroTail/Varianta3490481dc6721bb619f823b9805bdc5684ffcbe6c83c01b1ffb67e8fe82f805.lean#L493).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a43053c6d7ff60e19aaafb0467dae7c10645d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
