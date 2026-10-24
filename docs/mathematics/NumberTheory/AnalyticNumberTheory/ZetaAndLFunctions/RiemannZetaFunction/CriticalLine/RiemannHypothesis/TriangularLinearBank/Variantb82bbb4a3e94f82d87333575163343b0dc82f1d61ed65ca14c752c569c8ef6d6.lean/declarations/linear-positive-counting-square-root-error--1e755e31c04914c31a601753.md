# linear_positive_counting_square_root_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:440e9823-8a74-e9ce-0a5b-f6767757c790",
  "kind": "theorem",
  "lexical_name": "linear_positive_counting_square_root_error",
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
  "slug": "linear-positive-counting-square-root-error--1e755e31c04914c31a601753",
  "source": {
    "blob": "d4853a09c9152330b7d9fa8ce422f4821f27e905",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 49,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularLinearBank/Variantb82bbb4a3e94f82d87333575163343b0dc82f1d61ed65ca14c752c569c8ef6d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e755e31c04914c31a601753058a1793ddeea66c41c5a3ead20ea4af22b1cdb2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularLinearBank/Variantb82bbb4a3e94f82d87333575163343b0dc82f1d61ed65ca14c752c569c8ef6d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:440e9823-8a74-e9ce-0a5b-f6767757c790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem linear_positive_counting_square_root_error :
    (∀ n : ℕ, 0 < bankWeight linearSize (1 / 2) n) ∧
      ∀ x : ℝ, 1 ≤ x → |count linearSize (1 / 2) x - x| ≤ (3 / 2) * Real.sqrt x := by
  constructor
  · intro n
    exact every_bank_weight_positive linearSize linear_size_sufficient n
      (by norm_num) (by norm_num)
  · intro x hx
    convert all_real_bank_counting_error linearSize linear_size_sufficient
      (a := (1 / 2 : ℝ)) (by norm_num) hx using 1; norm_num

end
end GRWTSK.RiemannHypothesis.Conversation.TriangularLinearBank
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularLinearBank/Variantb82bbb4a3e94f82d87333575163343b0dc82f1d61ed65ca14c752c569c8ef6d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/TriangularLinearBank/Variantb82bbb4a3e94f82d87333575163343b0dc82f1d61ed65ca14c752c569c8ef6d6.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4853a09c9152330b7d9fa8ce422f4821f27e905` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
