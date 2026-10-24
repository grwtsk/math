# angularContour_eq_closedPrimeMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf1e2b78-9e48-0d37-20c9-37b0646f16a8",
  "kind": "theorem",
  "lexical_name": "angularContour_eq_closedPrimeMoment",
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
  "slug": "angularcontour-eq-closedprimemoment--8915992cf949456b6809f00a",
  "source": {
    "blob": "67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 189,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8915992cf949456b6809f00a6d63dc6eb88d895d3f355577daf1bd9c11c66b9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf1e2b78-9e48-0d37-20c9-37b0646f16a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem angularContour_eq_closedPrimeMoment (A : ℝ) (hA : 1 ≤ A) :
    angularContour A = (closedPrimeMoment A : ℂ) := by
  rw [angularContour_eq_dirichlet_integral_tsum A hA, ← tsum_mul_left]
  simp_rw [dirichletSourceTerm_scalar_integral A hA, inverted_coefficient_eq_source]
  calc
    _ = ∑ n ∈ primePowerInventory (2 * A),
        ((vonMangoldt n * exponentialTest (sourceCorrelation explicitSecondDerivative A)
          (Real.log n) : ℝ) : ℂ) := by
      apply tsum_eq_sum
      intro n hn
      exact_mod_cast source_coefficient_zero_outside_inventory A hA n hn
    _ = (closedPrimeMoment A : ℂ) := by
      unfold closedPrimeMoment
      push_cast
      rfl

/-- The literal prime-power readout has the actual analytic initial-line truncation bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceNativeDirichletFubini/Variant1db59984eb80347aecf8398c060237eeeeaf4ef3432e30caa4e0e02481b80b86.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7951da4ede4ecc10eaff51e2f53dd5c4e5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
