# errorProfile_quantitative_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "df5b718d908d9810ad3971de0595a1eed5a6b69e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 91,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a6aab76-bb0c-7f83-63fd-91cfcc7cb29d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd20a90c-d06f-04da-0207-c6bfb3f76656",
  "kind": "theorem",
  "lexical_name": "errorProfile_quantitative_tail",
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
  "slug": "errorprofile-quantitative-tail--737a058df3ba183e0c6807e6",
  "source": {
    "blob": "df5b718d908d9810ad3971de0595a1eed5a6b69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:737a058df3ba183e0c6807e6adba1435cced3bdf509be798d79bb3d5532d5a8a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd20a90c-d06f-04da-0207-c6bfb3f76656`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem errorProfile_quantitative_tail : ∃ c > 0, ∃ C > 0, ∃ T ≥ 1,
    ∀ A ≥ T, ∀ t ≥ A,
      |errorProfile t| ≤ C * Real.exp t * Real.exp (-c * A ^ ((1 : ℝ) / 10)) := by
  obtain ⟨c, hc, hpnt⟩ := _root_.MediumPNT
  obtain ⟨C, hC, T, hT, hb⟩ := errorProfile_tail_of_pnt hc hpnt
  exact ⟨c, hc, C, hC, T, hT, hb⟩

end FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput

#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevPrimePower_eq_psi
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevPrimePower_eq_psi
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_psi_sub
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_psi_sub
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_fun
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_eq_fun
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.chebyshevError_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_abs_le
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_eventual_of_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_eventual_of_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_tail_of_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_tail_of_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.source_quantitative_pnt
#print FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.SourcePNTInput.errorProfile_quantitative_tail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePNTInputSourceAudit/Variantead5130b98d4ef91c84bb6bf05d9457b4ea284e08fcd1fcea98df2e761450706.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df5b718d908d9810ad3971de0595a1eed5a6b69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
