# sourceCorrelation_exists_neg_in_half_support

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94d8b765-a793-6b62-3a6d-1c2a33c29d25",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_exists_neg_in_half_support",
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
  "slug": "sourcecorrelation-exists-neg-in-half-support--51f6dc967227056edd8b3b3f",
  "source": {
    "blob": "58c6f307490d1af52f2e60bcc78fce10ac594809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantdce3c62e6e2dd769bd704a8593fd8fc5bf34f200afc0b27db3267ea1813fe37e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51f6dc967227056edd8b3b3fe9919f6674336334810d61359bd91aca6bfdc220",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantdce3c62e6e2dd769bd704a8593fd8fc5bf34f200afc0b27db3267ea1813fe37e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94d8b765-a793-6b62-3a6d-1c2a33c29d25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_exists_neg_in_half_support {A : ℝ} (hA : 0 < A) :
    ∃ t : ℝ, 0 < t ∧ t < 2 * A ∧
      sourceCorrelation explicitSecondDerivative A t < 0 := by
  obtain ⟨x, hx⟩ := sourceCorrelation_exists_neg hA
  have hx0 : x ≠ 0 := by
    intro h
    rw [h, sourceCorrelation_zero hA] at hx
    norm_num at hx
  have hx2 : |x| < 2 * A := by
    by_contra h
    rw [sourceCorrelation_eq_zero_of_two_mul_le_abs A x hA (le_of_not_gt h)] at hx
    norm_num at hx
  have he : sourceCorrelation explicitSecondDerivative A |x| =
      sourceCorrelation explicitSecondDerivative A x := by
    rcases le_total 0 x with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h, sourceCorrelation_even]
  exact ⟨|x|, abs_pos.mpr hx0, hx2, by rwa [he]⟩

end FormalResearch.RiemannHypothesis.SourceCorrelationSignChange
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantdce3c62e6e2dd769bd704a8593fd8fc5bf34f200afc0b27db3267ea1813fe37e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelationSignChange/Variantdce3c62e6e2dd769bd704a8593fd8fc5bf34f200afc0b27db3267ea1813fe37e.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58c6f307490d1af52f2e60bcc78fce10ac594809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
