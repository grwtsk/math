# actual_second_correlation_pole_moment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff07e9bf-8d7b-9f4a-bf35-7f222030b8bc",
  "kind": "theorem",
  "lexical_name": "actual_second_correlation_pole_moment",
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
  "slug": "actual-second-correlation-pole-moment--63b9502956cdc1fa147de4cc",
  "source": {
    "blob": "c44cd2c905e7b5772882dba179c46752b8f255df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63b9502956cdc1fa147de4cc38724f3d10ed60880f733677de3df1db43a000c8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff07e9bf-8d7b-9f4a-bf35-7f222030b8bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_correlation_pole_moment {A : ℝ} (hA : 1 ≤ A) :
    (∫ t : ℝ, t^2*criticalPrimeTest A t) = 2*primitivePoleMoment A^2 := by
  have hp : 0 < A := by linarith
  let q := normalizedTest explicitSecondDerivative A
  let F : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x)*q x
  let G : ℝ → ℝ := fun x => Real.exp ((1/2 : ℝ)*x)*q (-x)
  have hq : Continuous q := (normalizedTest_contDiff A hp).continuous
  have hqs : HasCompactSupport q := normalizedTest_hasCompactSupport A hp
  have hF : Continuous F := by fun_prop
  have hG : Continuous G := by fun_prop
  have hFs : HasCompactSupport F := hqs.mul_left
  have hGs : HasCompactSupport G := (hqs.comp_homeomorph (Homeomorph.neg ℝ)).mul_left
  have hFzero : (∫ x : ℝ, F x)=0 := weighted_normalizedTest_integral_zero A (1/2) hA (by norm_num)
  have hGeq : G=F := by
    funext x
    dsimp [F,G,q]
    rw [actual_normalized_even A hA]
  have hfirst : (∫ x : ℝ, x*F x) = primitivePoleMoment A := by
    simpa only [F,q,show ∀ x : ℝ, (1/2 : ℝ)*x=x/2 by intro x; ring,mul_assoc]
      using actual_first_source_pole_moment hA
  have h := second_convolution_moment F G hF hG hFs hGs
  rw [hGeq,hFzero,hfirst,mul_zero,zero_mul,zero_add,add_zero] at h
  have he (t : ℝ) : t^2*criticalPrimeTest A t=t^2*(F ⋆ G) t := by
    have hw := weighted_correlation_eq_convolution q (1/2) t
    change Real.exp ((1/2 : ℝ)*t)*sourceCorrelation explicitSecondDerivative A t=(F ⋆ G) t at hw
    rw [← hw]
    unfold criticalPrimeTest
    congr 2
    congr 1
    ring
  simpa only [he,pow_two,mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Cubic01/Variant042b09bba2e257ef52b0711e08a50444ea824a4e83467c8a2b77a599a3d986c2.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44cd2c905e7b5772882dba179c46752b8f255df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
