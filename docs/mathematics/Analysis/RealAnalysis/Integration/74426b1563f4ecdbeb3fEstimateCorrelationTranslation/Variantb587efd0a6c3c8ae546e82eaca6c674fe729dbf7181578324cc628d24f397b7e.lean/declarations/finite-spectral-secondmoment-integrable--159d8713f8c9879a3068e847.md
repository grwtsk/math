# finite_spectral_secondMoment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b5c18c6-7016-1f65-a5b9-c0736ee31cc7",
  "kind": "theorem",
  "lexical_name": "finite_spectral_secondMoment_integrable",
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
  "slug": "finite-spectral-secondmoment-integrable--159d8713f8c9879a3068e847",
  "source": {
    "blob": "225d3a34d6f678c5f74cad27f8b40b76fcdcabd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 319,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159d8713f8c9879a3068e84714da35455686a5e425d4a87b5704ce77d31c3320",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b5c18c6-7016-1f65-a5b9-c0736ee31cc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 319–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_spectral_secondMoment_integrable (A : ℝ) (hA : 1 ≤ A)
    (S : Finset ℕ) (a : ℕ → ℝ) :
    Integrable (fun ξ ↦ spectralWeight A ξ *
      Complex.normSq (dirichletPolynomial S a ξ)) := by
  have hp : Continuous (fun ξ ↦ Complex.normSq (dirichletPolynomial S a ξ)) := by
    unfold dirichletPolynomial
    fun_prop
  apply (spectralWeight_integrable_mass A hA).1.mul_bdd (c := (∑ n ∈ S, |a n|) ^ 2)
    hp.aestronglyMeasurable
  filter_upwards [] with ξ
  have hn := dirichletPolynomial_norm_le S a ξ
  have hn0 := norm_nonneg (dirichletPolynomial S a ξ)
  rw [Real.norm_eq_abs, abs_of_nonneg (Complex.normSq_nonneg _), Complex.normSq_eq_norm_sq]
  nlinarith

/-- The exact weighted second moment is the finite difference-frequency correlation sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/74426b1563f4ecdbeb3fEstimateCorrelationTranslation/Variantb587efd0a6c3c8ae546e82eaca6c674fe729dbf7181578324cc628d24f397b7e.lean#L319).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `225d3a34d6f678c5f74cad27f8b40b76fcdcabd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
