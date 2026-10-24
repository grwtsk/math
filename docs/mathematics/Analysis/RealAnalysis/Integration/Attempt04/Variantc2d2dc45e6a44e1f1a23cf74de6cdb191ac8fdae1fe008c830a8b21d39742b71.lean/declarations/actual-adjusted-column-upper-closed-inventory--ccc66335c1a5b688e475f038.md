# actual_adjusted_column_upper_closed_inventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b95e3d83-1d81-62c9-9142-aff18f59e39e",
  "kind": "theorem",
  "lexical_name": "actual_adjusted_column_upper_closed_inventory",
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
  "slug": "actual-adjusted-column-upper-closed-inventory--ccc66335c1a5b688e475f038",
  "source": {
    "blob": "5aed1da93a5f0391d6b7f6d617a53236c83d96a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantc2d2dc45e6a44e1f1a23cf74de6cdb191ac8fdae1fe008c830a8b21d39742b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ccc66335c1a5b688e475f038a27ec69f70c264ec94b27d86c31ef76ba03278a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt04/Variantc2d2dc45e6a44e1f1a23cf74de6cdb191ac8fdae1fe008c830a8b21d39742b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b95e3d83-1d81-62c9-9142-aff18f59e39e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_adjusted_column_upper_closed_inventory {A : ℝ} (hA : 1 ≤ A) :
    actualCriticalAdjustedColumnPrimitive A (actualColumnUpper A) =
      2 * Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) *
        actualCenteredHalfZetaMain (vaughanCutoff A) := by
  let K := sourceKernelCutoff A / (vaughanCutoff A + 1)
  have hK : vaughanCutoff A + 1 ≤ K := actual_column_window_nonempty hA
  have hK0 : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by omega)
  have hexp : Real.exp (actualColumnUpper A) = (K : ℝ) := Real.exp_log hK0
  rw [actual_adjusted_column_eq_closed_inventory hA (column_upper_order hA) le_rfl,
    hexp, Nat.floor_natCast]
  have he := closed_half_inventory_terminal_succ (vaughanCutoff A) K hK
  have hz : Real.sqrt (K : ℝ) ≠ 0 := (Real.sqrt_pos.2 hK0).ne'
  unfold actualCenteredHalfUpperDefect actualCenteredColumnHalfInventory
    actualCenteredColumnTerminalTrace
  change 2 * Real.sqrt (K : ℝ) * closedCenteredHalfInventory (vaughanCutoff A) K -
      2 * (∑ n ∈ Finset.Ioc (vaughanCutoff A) K, centeredBeta (vaughanCutoff A) n) +
      2 * Real.sqrt (K : ℝ) *
        ((∑ n ∈ Finset.Ioc (vaughanCutoff A) (K - 1), centeredBeta (vaughanCutoff A) n) /
          Real.sqrt (K : ℝ) -
          (closedCenteredHalfInventory (vaughanCutoff A) (K - 1) -
            actualCenteredHalfZetaMain (vaughanCutoff A))) = _
  field_simp at he ⊢
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualVariableColumnDivisor
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt04/Variantc2d2dc45e6a44e1f1a23cf74de6cdb191ac8fdae1fe008c830a8b21d39742b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt04/Variantc2d2dc45e6a44e1f1a23cf74de6cdb191ac8fdae1fe008c830a8b21d39742b71.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5aed1da93a5f0391d6b7f6d617a53236c83d96a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
