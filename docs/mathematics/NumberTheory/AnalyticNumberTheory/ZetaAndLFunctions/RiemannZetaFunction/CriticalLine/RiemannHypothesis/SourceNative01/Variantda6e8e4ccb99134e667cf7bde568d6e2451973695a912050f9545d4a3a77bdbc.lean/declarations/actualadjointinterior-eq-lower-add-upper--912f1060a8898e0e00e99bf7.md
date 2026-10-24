# actualAdjointInterior_eq_lower_add_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9a7df3f4-0e84-aa6a-f431-05d65f95f84d",
  "kind": "theorem",
  "lexical_name": "actualAdjointInterior_eq_lower_add_upper",
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
  "slug": "actualadjointinterior-eq-lower-add-upper--912f1060a8898e0e00e99bf7",
  "source": {
    "blob": "82a2955d04544305b91285e80e1565db840b103e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 64,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:912f1060a8898e0e00e99bf71b16a3fd1260c7cd5ed2ac242f44985a26ebcb70",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a7df3f4-0e84-aa6a-f431-05d65f95f84d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointInterior_eq_lower_add_upper {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    actualAdjointInterior A =
      actualLowerStripInterior A 0 w + actualUpperAdjointInterior A w := by
  have ht := (actual_box_orders (by linarith : 1 ≤ A)).1
  have hc : actualLowerStripUpper A w ∈
      uIcc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)) := by
    rw [uIcc_of_le ht]
    exact ⟨le_min ht (by linarith), min_le_left _ _⟩
  have hi := actual_full_interior_intervalIntegrable (by linarith : 1 ≤ A)
  obtain ⟨hl, hu⟩ := (IntervalIntegrable.trans_iff hc).mp hi
  have he := intervalIntegral.integral_add_adjacent_intervals hl hu
  simpa only [actualAdjointInterior, actualLowerStripInterior, actualUpperAdjointInterior,
    actualLowerStripUpper, actualLowerStripDensity] using he.symm

/-- The original compensated work differs from the independently literal remainder by the strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceNative01/Variantda6e8e4ccb99134e667cf7bde568d6e2451973695a912050f9545d4a3a77bdbc.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82a2955d04544305b91285e80e1565db840b103e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
