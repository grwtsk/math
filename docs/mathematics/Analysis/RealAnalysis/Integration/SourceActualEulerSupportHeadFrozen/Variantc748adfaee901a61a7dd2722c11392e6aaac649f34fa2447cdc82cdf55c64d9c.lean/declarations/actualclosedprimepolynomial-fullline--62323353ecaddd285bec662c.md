# actualClosedPrimePolynomial_fullLine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c28eec15-9805-c936-66c4-6c74a39ab520",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimePolynomial_fullLine",
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
  "slug": "actualclosedprimepolynomial-fullline--62323353ecaddd285bec662c",
  "source": {
    "blob": "59cbe8113b80108b02728d2da8cb4c8c8380cc07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadFrozen/Variantc748adfaee901a61a7dd2722c11392e6aaac649f34fa2447cdc82cdf55c64d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62323353ecaddd285bec662c35f53342e32a444f6b4a111d01171bc0ff68bf54",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadFrozen/Variantc748adfaee901a61a7dd2722c11392e6aaac649f34fa2447cdc82cdf55c64d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c28eec15-9805-c936-66c4-6c74a39ab520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimePolynomial_fullLine (A c : ℝ) (hA : 1 ≤ A) :
    (1/(2*Real.pi):ℂ) * (∫ t : ℝ, actualInitialPrimeMellin A ((c:ℂ)+(t:ℂ)*I) *
      actualClosedPrimeDirichletPolynomial A ((c:ℂ)+(t:ℂ)*I)) =
      (primePowerContribution explicitSecondDerivative A:ℂ) := by
  unfold actualClosedPrimeDirichletPolynomial
  simp_rw [Finset.mul_sum]
  rw [integral_finsetSum _ (fun n _ => term_density_integrable A c hA n), Finset.mul_sum]
  simp_rw [term_density_integral A c hA]
  exact closed_actual_weight_sum A hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadFrozen/Variantc748adfaee901a61a7dd2722c11392e6aaac649f34fa2447cdc82cdf55c64d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadFrozen/Variantc748adfaee901a61a7dd2722c11392e6aaac649f34fa2447cdc82cdf55c64d9c.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59cbe8113b80108b02728d2da8cb4c8c8380cc07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
