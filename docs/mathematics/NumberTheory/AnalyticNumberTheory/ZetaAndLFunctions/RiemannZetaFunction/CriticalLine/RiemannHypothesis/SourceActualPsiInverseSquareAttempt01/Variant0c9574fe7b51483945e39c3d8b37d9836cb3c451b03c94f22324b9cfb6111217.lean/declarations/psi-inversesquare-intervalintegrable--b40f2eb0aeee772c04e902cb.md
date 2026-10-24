# psi_inverseSquare_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:045e722a-2e92-f2a9-ee10-2a1fe4399d13",
  "kind": "theorem",
  "lexical_name": "psi_inverseSquare_intervalIntegrable",
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
  "slug": "psi-inversesquare-intervalintegrable--b40f2eb0aeee772c04e902cb",
  "source": {
    "blob": "e3c632b630fa74fce425c11ab33d214403331cd7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 30,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt01/Variant0c9574fe7b51483945e39c3d8b37d9836cb3c451b03c94f22324b9cfb6111217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40f2eb0aeee772c04e902cba4a58a23a32347118ac9fd7213c25f6c687a7860",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt01/Variant0c9574fe7b51483945e39c3d8b37d9836cb3c451b03c94f22324b9cfb6111217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:045e722a-2e92-f2a9-ee10-2a1fe4399d13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psi_inverseSquare_intervalIntegrable (X : ℝ) (hX : 2 ≤ X) :
    IntervalIntegrable (fun y => Chebyshev.psi y / y ^ 2) volume 2 X := by
  have hc : ContinuousOn (fun y : ℝ => -(y ^ 2)⁻¹) (Icc 2 X) := by
    intro y hy
    exact ((continuousAt_id.pow 2).inv₀ (by positivity)).neg.continuousWithinAt
  have hi := integrableOn_mul_sum_Icc (vonMangoldt : ℕ → ℝ)
    (by norm_num : (0 : ℝ) ≤ 2) hc.integrableOn_Icc
  rw [intervalIntegrable_iff_integrableOn_Icc_of_le hX]
  apply hi.neg.congr_fun
  · intro y _
    rw [← Chebyshev.psi_eq_sum_Icc]
    ring
  · exact measurableSet_Icc

/-- Raw psi retains its exact closed weighted prefix, with no invented gamma shift. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt01/Variant0c9574fe7b51483945e39c3d8b37d9836cb3c451b03c94f22324b9cfb6111217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiInverseSquareAttempt01/Variant0c9574fe7b51483945e39c3d8b37d9836cb3c451b03c94f22324b9cfb6111217.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3c632b630fa74fce425c11ab33d214403331cd7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
