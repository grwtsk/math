# terminal_weight_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5f2c409-de57-d48a-9480-44e28b94e2c9",
  "kind": "theorem",
  "lexical_name": "terminal_weight_nonneg",
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
  "slug": "terminal-weight-nonneg--6df1338f3f13de8fc8ee024a",
  "source": {
    "blob": "cde7568f2e2af14adc8a7fc16423b1d1be4f3d11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 190,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant01a1a43db37f8ed2feb295bd2f4bbe383a7fb781e39d98f12615c8f90e4c1c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6df1338f3f13de8fc8ee024a4d361e0d24e9b8a8e1879fdce161106f60ccfadd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant01a1a43db37f8ed2feb295bd2f4bbe383a7fb781e39d98f12615c8f90e4c1c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5f2c409-de57-d48a-9480-44e28b94e2c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem terminal_weight_nonneg {T : ℝ} (hT : Real.log 7 ≤ T) {n : ℕ}
    (hn : n ∈ Finset.Icc 7 (Nat.floor (Real.exp T))) :
    0 ≤ actualXiTerminalCellLogWeight T n := by
  unfold actualXiTerminalCellLogWeight
  split_ifs with he
  · subst n
    exact sub_nonneg.mpr (terminal_floor_orders hT).2.1
  · apply Real.log_nonneg
    have hnp : 0 < (n : ℝ) := by
      exact_mod_cast (show 0 < n by have := (Finset.mem_Icc.mp hn).1; omega)
    apply (le_div_iff₀ hnp).2
    push_cast
    linarith

/-- Actual weights telescope to the complete real interval length, including its final fraction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant01a1a43db37f8ed2feb295bd2f4bbe383a7fb781e39d98f12615c8f90e4c1c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant01a1a43db37f8ed2feb295bd2f4bbe383a7fb781e39d98f12615c8f90e4c1c64.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cde7568f2e2af14adc8a7fc16423b1d1be4f3d11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
