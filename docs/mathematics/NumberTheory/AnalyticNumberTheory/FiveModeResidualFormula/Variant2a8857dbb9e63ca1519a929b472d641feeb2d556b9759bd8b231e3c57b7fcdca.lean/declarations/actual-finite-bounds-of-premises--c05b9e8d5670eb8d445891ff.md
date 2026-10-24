# actual_finite_bounds_of_premises

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59912ba7-99e0-96f4-8305-128c6d3c74f8",
  "kind": "theorem",
  "lexical_name": "actual_finite_bounds_of_premises",
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
  "slug": "actual-finite-bounds-of-premises--c05b9e8d5670eb8d445891ff",
  "source": {
    "blob": "6a3fa0134a83fc0b5ca04ea0860a00593370e7a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeResidualFormula/Variant2a8857dbb9e63ca1519a929b472d641feeb2d556b9759bd8b231e3c57b7fcdca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c05b9e8d5670eb8d445891ff65301b5bc171a804240ad96f2bdce0b0387066a7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/FiveModeResidualFormula/Variant2a8857dbb9e63ca1519a929b472d641feeb2d556b9759bd8b231e3c57b7fcdca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59912ba7-99e0-96f4-8305-128c6d3c74f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_finite_bounds_of_premises
    (verifiedHead strictTail : ℝ → ℝ) (a0 : ℝ)
    (hdecomposition : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) =
        verifiedHead A + strictTail A)
    (hhead : ∀ A : ℝ, 1 ≤ A → A ≤ 160 → 0 ≤ verifiedHead A)
    (htail : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      |strictTail A| ≤ CommonMean20261004.FiniteCertificate.tailBound)
    (hgamma : ∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      archimedeanValue explicitSecondDerivative A ≤ a0 + 390/A^2)
    (ha0 : a0 < -4) :
    (∀ A : ℝ, 1 ≤ A → A ≤ 160 →
      -(1/500000 : ℝ) ≤ dotProduct (alpha A) ((sourceMatrix A).mulVec (alpha A)) ∧
      EstimateMertensResidual.mertensResidual A ≤
        a0/2 + 195/A^2 + (1/1000000 : ℝ)) ∧
    (∀ A : ℝ, 10 ≤ A → A ≤ 160 →
      EstimateMertensResidual.mertensResidual A < 0) := by
  apply CommonMean20261004.FiniteCertificate.finite_bounds
    (verifiedHead := verifiedHead) (strictTail := strictTail)
  exact ⟨hdecomposition, hhead, htail,
    fun A hA _ => actual_residual_matrix_formula A hA, hgamma, ha0⟩

end CommonMeanScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/FiveModeResidualFormula/Variant2a8857dbb9e63ca1519a929b472d641feeb2d556b9759bd8b231e3c57b7fcdca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/FiveModeResidualFormula/Variant2a8857dbb9e63ca1519a929b472d641feeb2d556b9759bd8b231e3c57b7fcdca.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a3fa0134a83fc0b5ca04ea0860a00593370e7a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
