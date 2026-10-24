# fourth_tail_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1175a8ec-86d3-ccc3-b9ca-4fe4df099484",
  "kind": "theorem",
  "lexical_name": "fourth_tail_sum",
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
  "slug": "fourth-tail-sum--f0cae61c8522cdc27320db2a",
  "source": {
    "blob": "d7465ebe927d7c5597ebb704dffa1db1b20fdf2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhase/Variant2e9c606969ebfef8c5db561ce77f98744d7f08dcdb07c2c0bf9896bad492796a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0cae61c8522cdc27320db2a8afe00228c198289f00e7f57bf3ca2e5af79d5a2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhase/Variant2e9c606969ebfef8c5db561ce77f98744d7f08dcdb07c2c0bf9896bad492796a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1175a8ec-86d3-ccc3-b9ca-4fe4df099484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem fourth_tail_sum (N : ℕ) :
    ∑ k ∈ Finset.range N, 1/((k:ℝ)+3)^4 ≤ 1/24 := by
  have hs : ∑ k ∈ Finset.range N, 1/((k:ℝ)+3)^4 ≤
      1/24-1/(3*((N:ℝ)+2)^3) := by
    induction N with
    | zero => norm_num
    | succ N ih =>
      rw [Finset.sum_range_succ]
      have h := fourth_tail_step ((N:ℝ)+3) (by exact le_add_of_nonneg_left (Nat.cast_nonneg N))
      push_cast
      convert! add_le_add ih h using 1
      ring
  exact hs.trans (sub_le_self _ (by positivity))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhase/Variant2e9c606969ebfef8c5db561ce77f98744d7f08dcdb07c2c0bf9896bad492796a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerPotentialPhase/Variant2e9c606969ebfef8c5db561ce77f98744d7f08dcdb07c2c0bf9896bad492796a.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7465ebe927d7c5597ebb704dffa1db1b20fdf2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
