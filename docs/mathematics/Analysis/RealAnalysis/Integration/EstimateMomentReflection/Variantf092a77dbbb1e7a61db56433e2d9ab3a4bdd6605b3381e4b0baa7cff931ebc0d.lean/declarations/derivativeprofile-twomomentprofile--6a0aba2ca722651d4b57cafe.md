# derivativeProfile_twoMomentProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 226,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:602a8b6b-15f9-6885-3aa3-730b21659c37",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6af7dd8c-e7ff-b16c-8348-a5580fc207c4",
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
  "slug": "derivativeprofile-twomomentprofile--6a0aba2ca722651d4b57cafe",
  "source": {
    "blob": "4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 226,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a0aba2ca722651d4b57cafe865650aca3c34d062693cf92eeecec3fa2ca3e3a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6af7dd8c-e7ff-b16c-8348-a5580fc207c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–256.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateMomentReflection/Variantf092a77dbbb1e7a61db56433e2d9ab3a4bdd6605b3381e4b0baa7cff931ebc0d.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4241bed57dd60a5012d3809e24bc8d2b8d2e7c9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
