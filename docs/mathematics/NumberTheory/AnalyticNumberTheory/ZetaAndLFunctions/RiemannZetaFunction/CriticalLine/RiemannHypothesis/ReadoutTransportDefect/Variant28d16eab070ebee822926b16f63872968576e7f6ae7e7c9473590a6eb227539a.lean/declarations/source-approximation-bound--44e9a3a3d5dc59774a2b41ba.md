# source_approximation_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:702710be-09b5-85cf-cc85-4d96cddbc06e",
  "kind": "theorem",
  "lexical_name": "source_approximation_bound",
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
  "slug": "source-approximation-bound--44e9a3a3d5dc59774a2b41ba",
  "source": {
    "blob": "702ff632751b13b0ef5657f61fefb357efe0babc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e9a3a3d5dc59774a2b41ba9b49c05fea65447610014ef075a03303113f9f0e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:702710be-09b5-85cf-cc85-4d96cddbc06e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_approximation_bound {A ε : ℝ} (hA : 0 < A) (hε : 0 ≤ ε)
    (B : ComplexL2 →L[ℂ] ComplexL2) (y : ComplexL2)
    (hy : ‖originalSourceState A - y‖ ≤ ε) :
    |EstimatePrimeSmoothDefect.closedPrimeMoment A - readout B y| ≤
      ‖mangoldtInteraction A - B‖ + ‖B‖ * (2 + ε) * ε := by
  rw [closedPrimeMoment_eq_quadratic hA]
  change |readout (mangoldtInteraction A) (originalSourceState A) - readout B y| ≤ _
  have hn := originalSourceState_norm hA
  have hny : ‖y‖ ≤ 1 + ε := by
    calc
      ‖y‖ = ‖originalSourceState A + (y - originalSourceState A)‖ := by congr 1; abel
      _ ≤ ‖originalSourceState A‖ + ‖y - originalSourceState A‖ := norm_add_le _ _
      _ ≤ 1 + ε := by rw [hn, norm_sub_rev]; exact add_le_add (le_refl 1) hy
  have hs := operator_and_state_bound (mangoldtInteraction A) B (originalSourceState A) y
  rw [hn, one_pow, mul_one] at hs
  apply hs.trans
  apply add_le_add (le_refl _)
  apply mul_le_mul
  · exact mul_le_mul_of_nonneg_left (by linarith only [hny]) (norm_nonneg B)
  · exact hy
  · exact norm_nonneg _
  · exact mul_nonneg (norm_nonneg B) (by linarith only [hε])

end
end FormalResearch.PositiveAtlas.Spectral.ReadoutTransportDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReadoutTransportDefect/Variant28d16eab070ebee822926b16f63872968576e7f6ae7e7c9473590a6eb227539a.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702ff632751b13b0ef5657f61fefb357efe0babc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
