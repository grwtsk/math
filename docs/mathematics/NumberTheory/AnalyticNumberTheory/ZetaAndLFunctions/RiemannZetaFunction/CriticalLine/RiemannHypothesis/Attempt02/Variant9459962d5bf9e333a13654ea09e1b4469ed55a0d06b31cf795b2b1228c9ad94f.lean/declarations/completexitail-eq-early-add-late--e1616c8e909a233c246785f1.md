# completeXiTail_eq_early_add_late

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:069ec174-d857-dd07-aeca-97e3fb9f2bea",
  "kind": "theorem",
  "lexical_name": "completeXiTail_eq_early_add_late",
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
  "slug": "completexitail-eq-early-add-late--e1616c8e909a233c246785f1",
  "source": {
    "blob": "0320eb6a6af218d425f3502f9b59c02c5c6a51fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 165,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1616c8e909a233c246785f185da80fe5a4c5e709550dfa3d91a85ee3f2b1175",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:069ec174-d857-dd07-aeca-97e3fb9f2bea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completeXiTail_eq_early_add_late {A : ℝ} (hA : 91 ≤ A) :
    completeXiTail A = actualXiEarlyReturnedWork A + actualXiLateReturnedWork A := by
  have hord := actualXiEarlyReturned_split_orders hA
  have hi := actualXiReturnedWork_intervalIntegrable hA (hord.1.trans hord.2)
  have hi1 := actualXiReturnedWork_intervalIntegrable hA hord.1
  have hi2 := hi1.symm.trans hi
  rw [completeXiTail_eq_damped_primitive_return hA]
  unfold actualXiEarlyReturnedWork actualXiLateReturnedWork
  exact (intervalIntegral.integral_add_adjacent_intervals hi1 hi2).symm

end
end FormalResearch.RiemannHypothesis.SourceActualXiEarlyReturnedWork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt02/Variant9459962d5bf9e333a13654ea09e1b4469ed55a0d06b31cf795b2b1228c9ad94f.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0320eb6a6af218d425f3502f9b59c02c5c6a51fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
