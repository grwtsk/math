# exponential_fold_constant_source_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f2d6802c-227c-4178-784e-801d18c90b64",
  "kind": "theorem",
  "lexical_name": "exponential_fold_constant_source_derivative",
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
  "slug": "exponential-fold-constant-source-derivative--99fa83fd7cc14a385ac9db62",
  "source": {
    "blob": "0a5be36465168573473716b56fd98beaa4499318",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99fa83fd7cc14a385ac9db6213d8ad15dc92bd6b0ac79c363514e5d126fd2289",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d6802c-227c-4178-784e-801d18c90b64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponential_fold_constant_source_derivative :
    (∀ u : ℝ, (1 / Real.sqrt (Real.exp u)) =
      (fun _ : ℝ ↦ (1 : ℝ)) u / Real.sqrt (Real.exp u)) ∧
    HasDerivAt (fun y : ℝ ↦ 1 / Real.sqrt y) (-1 / 2) 1 := by
  constructor
  · intro u
    rfl
  · have hd : HasDerivAt (fun y : ℝ ↦ 1 / Real.sqrt y)
        ((0 * Real.sqrt 1 - 1 * (1 / (2 * Real.sqrt 1))) / (Real.sqrt 1) ^ 2) 1 :=
      (hasDerivAt_const (1 : ℝ) (1 : ℝ)).div
        (Real.hasDerivAt_sqrt (by norm_num : (1 : ℝ) ≠ 0)) (by norm_num)
    norm_num at hd ⊢
    exact hd

end
end GRWTSK.RiemannHypothesis.Conversation.NonlinearFoldDebt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NonlinearFoldDebt/Variant7d99a04b6704d26ee238be269c23c1d7c98881738f988d8fb434e2b39ea8f852.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5be36465168573473716b56fd98beaa4499318` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
