# first_convolution_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f6876bc-591f-7b0e-158a-d4648726cc2e",
  "kind": "theorem",
  "lexical_name": "first_convolution_moment",
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
  "slug": "first-convolution-moment--3f4b4e9036fe3cdcbdf1ce05",
  "source": {
    "blob": "20cd0fb6a9cbcb5385757995f36ef86f587e0095",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 22,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f4b4e9036fe3cdcbdf1ce0523e09791dadcbe84c8e0d6805fcf967f2f5bc864",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f6876bc-591f-7b0e-158a-d4648726cc2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_convolution_moment (f g : ℝ → ℝ)
    (hf : Continuous f) (hg : Continuous g)
    (hsf : HasCompactSupport f) (hsg : HasCompactSupport g) :
    (∫ t : ℝ, t * (f ⋆ g) t) =
      (∫ x : ℝ, x * f x) * (∫ x : ℝ, g x) +
      (∫ x : ℝ, f x) * (∫ x : ℝ, x * g x) := by
  let xf : ℝ → ℝ := fun x => x * f x
  let xg : ℝ → ℝ := fun x => x * g x
  have hif : Integrable f := hf.integrable_of_hasCompactSupport hsf
  have hig : Integrable g := hg.integrable_of_hasCompactSupport hsg
  have hixf : Integrable xf :=
    (continuous_id.mul hf).integrable_of_hasCompactSupport hsf.mul_left
  have hixg : Integrable xg :=
    (continuous_id.mul hg).integrable_of_hasCompactSupport hsg.mul_left
  have he (t : ℝ) : t * (f ⋆ g) t = (xf ⋆ g) t + (f ⋆ xg) t := by
    have hi1 : Integrable (fun x : ℝ => (x * f x) * g (t - x)) :=
      ((continuous_id.mul hf).mul
        (hg.comp (continuous_const.sub continuous_id))).integrable_of_hasCompactSupport
          hsf.mul_left.mul_right
    have hi2 : Integrable (fun x : ℝ => f x * ((t-x) * g (t-x))) :=
      (hf.mul ((continuous_const.sub continuous_id).mul
        (hg.comp (continuous_const.sub continuous_id)))).integrable_of_hasCompactSupport
          hsf.mul_right
    simp only [convolution_lsmul, smul_eq_mul]
    change t * (∫ x : ℝ, f x * g (t-x)) =
      (∫ x : ℝ, (x*f x)*g (t-x)) + (∫ x : ℝ, f x*((t-x)*g (t-x)))
    rw [← integral_const_mul, ← integral_add hi1 hi2]
    apply integral_congr_ae
    filter_upwards [] with x
    change t * (f x * g (t-x)) = (x*f x)*g (t-x)+f x*((t-x)*g (t-x))
    ring
  have hie1 := hixf.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hig
  have hie2 := hif.integrable_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixg
  simp_rw [he]
  rw [integral_add hie1 hie2, integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hixf hig,
    integral_convolution (ContinuousLinearMap.lsmul ℝ ℝ) hif hixg]
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variant195d1ee82d2c56acf83578fd7b79bb1948427eccf9b91a27fee9183c1d09c869.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20cd0fb6a9cbcb5385757995f36ef86f587e0095` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
