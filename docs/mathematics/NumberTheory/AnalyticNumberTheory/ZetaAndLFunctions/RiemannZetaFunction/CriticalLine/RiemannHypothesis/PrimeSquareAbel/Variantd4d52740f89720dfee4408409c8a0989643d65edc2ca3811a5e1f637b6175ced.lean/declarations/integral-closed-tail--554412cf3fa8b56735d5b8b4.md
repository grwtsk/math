# integral_closed_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "90772f1a4ecf3e195059118dd8cc3c6043fa4133",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9133e6de-2c0f-e4f4-4fb2-554ed71e6850",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f05534ec-19a4-b21c-4fdf-e08e02f3ed1b",
  "kind": "theorem",
  "lexical_name": "integral_closed_tail",
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
  "slug": "integral-closed-tail--554412cf3fa8b56735d5b8b4",
  "source": {
    "blob": "90772f1a4ecf3e195059118dd8cc3c6043fa4133",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 59,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554412cf3fa8b56735d5b8b4b6573677d5e355295fc735a89cab5bc107f7646d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f05534ec-19a4-b21c-4fdf-e08e02f3ed1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_closed_tail (g : ℝ → ℝ) (A r : ℝ) (hr : r ∈ Icc 0 A) :
    (∫ u in 0..A, if r ≤ u then g u else 0) = ∫ u in r..A, g u := by
  rw [intervalIntegral.integral_of_le (hr.1.trans hr.2),
    intervalIntegral.integral_of_le hr.2]
  change (∫ u in Ioc 0 A, (Ici r).indicator g u) = _
  rw [integral_indicator measurableSet_Ici, Measure.restrict_restrict measurableSet_Ici]
  apply setIntegral_congr_set
  filter_upwards [volume.ae_ne r] with u hu
  apply propext
  change (r ≤ u ∧ 0 < u ∧ u ≤ A) ↔ (r < u ∧ u ≤ A)
  constructor
  · rintro ⟨hru, _, huA⟩
    exact ⟨lt_of_le_of_ne hru (Ne.symm hu), huA⟩
  · rintro ⟨hru, huA⟩
    exact ⟨hru.le, hr.1.trans_lt hru, huA⟩

/-- The actual doubled correlation derivative is continuous across its support seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbel/Variantd4d52740f89720dfee4408409c8a0989643d65edc2ca3811a5e1f637b6175ced.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90772f1a4ecf3e195059118dd8cc3c6043fa4133` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
