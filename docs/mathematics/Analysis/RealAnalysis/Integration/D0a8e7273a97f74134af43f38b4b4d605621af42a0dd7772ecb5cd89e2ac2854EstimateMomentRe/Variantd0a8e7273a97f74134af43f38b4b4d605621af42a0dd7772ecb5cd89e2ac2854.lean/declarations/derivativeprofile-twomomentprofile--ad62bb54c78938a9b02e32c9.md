# derivativeProfile_twoMomentProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "083f03b018d616e82b33800b2053ec3fcc41888d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d0/d0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79a19080-4d2e-5409-b855-830b53cffef5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9b18914-6ff3-076b-64fa-a3f82003adf0",
  "kind": "theorem",
  "lexical_name": "derivativeProfile_twoMomentProfile",
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
  "slug": "derivativeprofile-twomomentprofile--ad62bb54c78938a9b02e32c9",
  "source": {
    "blob": "083f03b018d616e82b33800b2053ec3fcc41888d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 222,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad62bb54c78938a9b02e32c9fe1ad219958d3466dfbb9ffe970446e1274dc6b7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9b18914-6ff3-076b-64fa-a3f82003adf0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeProfile_twoMomentProfile
    (A : ℝ) (hA : 1 ≤ A) :
    TwoMomentProfile (derivativeProfile A) := by
  have hc :=
    sourceCorrelation_contDiff A (by linarith)
  have hcont :
      Continuous (derivativeProfile A) := by
    unfold derivativeProfile
    exact
      (hc.continuous_deriv (by norm_num)).sub
        (hc.continuous.div_const 2)
  have hsupp :
      HasCompactSupport (derivativeProfile A) := by
    have hC :=
      sourceCorrelation_hasCompactSupport A (by linarith)
    have hhalf :
        HasCompactSupport
          (fun t =>
            sourceCorrelation explicitSecondDerivative A t / 2) := by
      simp only [div_eq_mul_inv]
      exact hC.mul_right
          (f' := fun _ : ℝ => (2 : ℝ)⁻¹)
    unfold derivativeProfile
    exact hC.deriv.sub hhalf
  exact
    ⟨hcont, hsupp,
      EstimateKernelMoments.derivativeProfile_exponential_moment_zero
        A hA,
      EstimateKernelMoments.derivativeProfile_first_exponential_moment_zero
        A hA⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe/Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `083f03b018d616e82b33800b2053ec3fcc41888d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
