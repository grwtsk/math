# edgeWindow_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f851e8a-2266-3192-4b78-d1c710732c54",
  "kind": "theorem",
  "lexical_name": "edgeWindow_subset",
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
  "slug": "edgewindow-subset--c9cba065a660c3bfe580f4a4",
  "source": {
    "blob": "039ae427307baedae611ddbf05a33a6515577e2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9cba065a660c3bfe580f4a4a82d6bbdace3340849e525177d610790e63b15ef",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f851e8a-2266-3192-4b78-d1c710732c54`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem edgeWindow_subset {A : ℝ} (hA : 20000000000000 ≤ A) :
    actualNegativeEdgeWindow A ⊆ primePowerInventory (2 * A) := by
  intro n hn
  have hm := Finset.mem_Ioc.mp hn
  have hl : 1 ≤ ⌊Real.exp (2 * A - 13)⌋₊ :=
    Nat.le_floor (by simpa only [Nat.cast_one] using Real.one_le_exp_iff.mpr (by linarith))
  have hu : ⌊Real.exp (2 * A - 12)⌋₊ ≤ ⌊Real.exp (2 * A)⌋₊ :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  exact Finset.mem_Icc.mpr ⟨by omega, by omega⟩

/-- The even window's absolute coefficient sum pays its signed value uniformly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variant2e8d785215675f9b7d8def399cd5960249937db6cb2c11e57658e8ec318ade3e.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `039ae427307baedae611ddbf05a33a6515577e2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
