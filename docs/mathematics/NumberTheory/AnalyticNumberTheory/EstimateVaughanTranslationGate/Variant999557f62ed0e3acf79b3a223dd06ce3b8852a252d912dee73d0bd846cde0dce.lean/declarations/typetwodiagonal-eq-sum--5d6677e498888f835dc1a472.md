# typeTwoDiagonal_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a432975-4297-f01d-819f-ae873e5417ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18f58103-9445-f3b0-7f2e-8d9d419c712e",
  "kind": "theorem",
  "lexical_name": "typeTwoDiagonal_eq_sum",
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
  "slug": "typetwodiagonal-eq-sum--5d6677e498888f835dc1a472",
  "source": {
    "blob": "b22f9ff26cc6793015e79735324638d19ee07ccc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 115,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d6677e498888f835dc1a47206ecda05e519760f3cbaf5b11e60c739c65069fc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18f58103-9445-f3b0-7f2e-8d9d419c712e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem typeTwoDiagonal_eq_sum (A : ℝ) :
    typeTwoDiagonal A =
      ∑ m ∈ Finset.Ioc (vaughanCutoff A) (sourceKernelCutoff A),
        vonMangoldt m * beta (vaughanCutoff A) m / (m : ℝ) *
          sourceCorrelation explicitSecondDerivative A (2 * Real.log m) := by
  unfold typeTwoDiagonal
  apply Finset.sum_congr rfl
  intro m hm
  have hmpos : 0 < (m : ℝ) := by
    exact_mod_cast (Nat.zero_le _).trans_lt (Finset.mem_Ioc.mp hm).1
  dsimp [sourcePlainWeight]
  rw [Nat.cast_mul, Real.log_mul hmpos.ne' hmpos.ne', ← pow_two,
    Real.sqrt_sq hmpos.le]
  rw [show Real.log (m : ℝ) + Real.log (m : ℝ) = 2 * Real.log m by ring]
  ring

/-- The elementary diagonal estimate is kept separate from off-diagonal cancellation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/EstimateVaughanTranslationGate/Variant999557f62ed0e3acf79b3a223dd06ce3b8852a252d912dee73d0bd846cde0dce.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b22f9ff26cc6793015e79735324638d19ee07ccc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
