# actualCenteredColumnHalfInventory_abs_le_cutoff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88d6d726-0a2a-97d5-2e9b-525ad73ceb85",
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
  "slug": "actualcenteredcolumnhalfinventory-abs-le-cutoff--259f75928afe8e62bca1a638",
  "source": {
    "blob": "f836426536b7865ecc7680fe29f2d9498dcad8e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 219,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:259f75928afe8e62bca1a6389db7292166624e2f587fc0a14675a7ea52759737",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d6d726-0a2a-97d5-2e9b-525ad73ceb85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–235.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/1756306d40c57f87b51aSourceActualAdjointColumnTrace/Variantaedcdac911e5452219844a83f412fe4830d8d48f5cf2f8db012b1d9c38034b4a.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f836426536b7865ecc7680fe29f2d9498dcad8e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
