# typeTwoDiagonal_eq_longBase_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78286e9c-520d-c112-b2d5-fb65602fdb30",
  "kind": "theorem",
  "lexical_name": "typeTwoDiagonal_eq_longBase_sum",
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
  "slug": "typetwodiagonal-eq-longbase-sum--b99f897bc4ba53c67c002398",
  "source": {
    "blob": "421b34c6dc2dd6dfd82bc861c0d19b7b0716991b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 171,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b99f897bc4ba53c67c00239896fd36fa9e0a467a7af9609d0646cb3f0dd40653",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78286e9c-520d-c112-b2d5-fb65602fdb30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoDiagonal_eq_longBase_sum (A : ℝ) (hA : 1 ≤ A) :
    typeTwoDiagonal A = -
      ∑ m ∈ (Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A)).filter
          (fun m ↦ vaughanCutoff A < m.minFac),
        vonMangoldt m / (m : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log m) := by
  classical
  rw [typeTwoDiagonal_eq_sum, Finset.sum_filter, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [mangoldt_mul_beta _ _ (vaughanCutoff_pos A hA)]
  split_ifs <;> ring

/-- Inside the actual inventory, a long prime square leaves this exact weighted atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant3a595918333e60d9dfaddb7eec4f5841075b928b8a3c0f0dc00cb9bca5c38bc7.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `421b34c6dc2dd6dfd82bc861c0d19b7b0716991b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
