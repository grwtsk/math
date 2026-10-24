# actualCenteredColumnHalfInventory_abs_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d7b1f32-d9c6-2298-9655-b04e6e6ace3c",
  "kind": "theorem",
  "lexical_name": "actualCenteredColumnHalfInventory_abs_le_cutoff",
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
  "slug": "actualcenteredcolumnhalfinventory-abs-le-cutoff--f74b1bd5f2ec7b4695f23917",
  "source": {
    "blob": "2b6865df4b55ffef7276d17cfff39234fe2e6876",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 211,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f74b1bd5f2ec7b4695f23917d3845d4de1ac8d556b97c87789492995d30a9767",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d7b1f32-d9c6-2298-9655-b04e6e6ace3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredColumnHalfInventory_abs_le_cutoff {A : ℝ} (hA : 1 ≤ A) :
    |actualCenteredColumnHalfInventory A| ≤
      ((vaughanCutoff A : ℝ) - 1) / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by
  have hd := actualCenteredColumnHalfInventory_sub_terminal_abs_le hA
  have ht := actualCenteredColumnTerminalTrace_abs_le hA
  have ha := abs_add_le (actualCenteredColumnHalfInventory A -
    actualCenteredColumnTerminalTrace A) (actualCenteredColumnTerminalTrace A)
  rw [sub_add_cancel] at ha
  have he : ((vaughanCutoff A : ℝ) - 1) *
      (1 / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) -
        1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) +
      ((vaughanCutoff A : ℝ) - 1) /
        Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ) =
      ((vaughanCutoff A : ℝ) - 1) / Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) := by ring
  linarith

/-- At every real A at least one, that literal centered-beta half inventory is at most A. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variant5aa3c93a803516e0ffc25b4a0fc7471257949c23c8e2149a09469798611a79ca.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b6865df4b55ffef7276d17cfff39234fe2e6876` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
