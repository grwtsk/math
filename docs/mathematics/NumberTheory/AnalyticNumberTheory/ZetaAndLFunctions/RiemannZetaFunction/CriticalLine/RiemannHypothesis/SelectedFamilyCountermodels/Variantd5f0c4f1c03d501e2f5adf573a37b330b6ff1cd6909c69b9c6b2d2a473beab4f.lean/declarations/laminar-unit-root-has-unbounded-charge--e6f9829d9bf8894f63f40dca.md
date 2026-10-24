# laminar_unit_root_has_unbounded_charge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:005776b5-cb50-15c6-c114-270d9cc5ab59",
  "kind": "theorem",
  "lexical_name": "laminar_unit_root_has_unbounded_charge",
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
  "slug": "laminar-unit-root-has-unbounded-charge--e6f9829d9bf8894f63f40dca",
  "source": {
    "blob": "36d341ba5d3c0c68fa854a3692dc0040f6cff78b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 94,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectedFamilyCountermodels/Variantd5f0c4f1c03d501e2f5adf573a37b330b6ff1cd6909c69b9c6b2d2a473beab4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6f9829d9bf8894f63f40dcab904395db7ffbb9a0d5d55be4cf8b9031215ae39",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectedFamilyCountermodels/Variantd5f0c4f1c03d501e2f5adf573a37b330b6ff1cd6909c69b9c6b2d2a473beab4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:005776b5-cb50-15c6-c114-270d9cc5ab59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laminar_unit_root_has_unbounded_charge (C : ℝ) :
    ∃ M : ℕ, C < ∑ j ∈ Finset.range M, (MeasureTheory.volume (panel j)).toReal := by
  obtain ⟨M, hM⟩ := exists_nat_gt (2 * C)
  have hsum : (M : ℝ) * (1 / 2) ≤ ∑ j ∈ Finset.range M, panelLength j := by
    simpa using Finset.sum_le_sum (s := Finset.range M)
      (fun j _ => (panel_length_bounds j).1)
  refine ⟨M, ?_⟩
  simp_rw [literal_panel_length]
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.SelectedFamilyCountermodels
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectedFamilyCountermodels/Variantd5f0c4f1c03d501e2f5adf573a37b330b6ff1cd6909c69b9c6b2d2a473beab4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelectedFamilyCountermodels/Variantd5f0c4f1c03d501e2f5adf573a37b330b6ff1cd6909c69b9c6b2d2a473beab4f.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d341ba5d3c0c68fa854a3692dc0040f6cff78b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
