# edgeWindow_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d67e5f6c-dcf5-43fc-2330-7a319aabe54b",
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
  "slug": "edgewindow-subset--24987e41e52acd3db9847083",
  "source": {
    "blob": "79a81e684390272d7a89ff41438c205ce74651df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variante70d62be6900e5f7f066447389c4ff1affca243e7e00e5bab191fa82a4b13b60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:24987e41e52acd3db984708358da63f7ca72389e2a8b5643f78bc45ad6728490",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variante70d62be6900e5f7f066447389c4ff1affca243e7e00e5bab191fa82a4b13b60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d67e5f6c-dcf5-43fc-2330-7a319aabe54b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variante70d62be6900e5f7f066447389c4ff1affca243e7e00e5bab191fa82a4b13b60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualOddNegativeEdgeNative02/Variante70d62be6900e5f7f066447389c4ff1affca243e7e00e5bab191fa82a4b13b60.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79a81e684390272d7a89ff41438c205ce74651df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
