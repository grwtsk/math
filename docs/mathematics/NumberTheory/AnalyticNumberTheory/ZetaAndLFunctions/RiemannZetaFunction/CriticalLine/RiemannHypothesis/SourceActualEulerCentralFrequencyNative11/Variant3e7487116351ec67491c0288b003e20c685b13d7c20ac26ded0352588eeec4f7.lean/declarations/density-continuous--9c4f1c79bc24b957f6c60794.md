# density_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2e24c93-0c15-7e4b-28fc-217e5049e336",
  "kind": "theorem",
  "lexical_name": "density_continuous",
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
  "slug": "density-continuous--9c4f1c79bc24b957f6c60794",
  "source": {
    "blob": "15ffda90dad773e8d74a02a5af12a6ae0f549291",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 344,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c4f1c79bc24b957f6c607947d8e810fe007780e82c3a3b72e0dac09950fd4ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2e24c93-0c15-7e4b-28fc-217e5049e336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem density_continuous {A : ℝ} (hA : 1 ≤ A) :
    Continuous (actualClosedFrequencyDensity A) := by
  have hB : Continuous bumpLaplace := by
    have he : bumpLaplace = bumpLaplaceMoment 0 := by
      funext z
      exact (bump_laplace_moment_zero z).symm
    rw [he]
    exact bump_laplace_moment_continuous 0
  have hb : Continuous (fun t : ℝ =>
      bumpLaplace ((A : ℂ) * ((3 / 2 : ℂ) + (t : ℂ) * I - 1 / 2))) :=
    hB.comp (by fun_prop)
  have hm : Continuous (fun t : ℝ =>
      actualInitialPrimeMellin A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
    simp_rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA]
    unfold bumpMellinWeight
    fun_prop
  have hd : Continuous (fun t : ℝ =>
      actualClosedPrimeDirichletPolynomial A ((3 / 2 : ℂ) + (t : ℂ) * I)) := by
    unfold actualClosedPrimeDirichletPolynomial
    apply continuous_finsetSum
    intro n _
    rcases eq_or_ne n 0 with rfl | hn
    · simp only [LSeries.term_zero]
      exact continuous_const
    · simp only [LSeries.term_of_ne_zero hn]
      refine continuous_const.div ?_ (fun _ => ?_)
      · exact Continuous.const_cpow (by fun_prop) (Or.inl (by exact_mod_cast hn))
      · exact cpow_ne_zero_iff.mpr (Or.inl (by exact_mod_cast hn))
  exact Complex.continuous_re.comp (hm.mul hd)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative11/Variant3e7487116351ec67491c0288b003e20c685b13d7c20ac26ded0352588eeec4f7.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15ffda90dad773e8d74a02a5af12a6ae0f549291` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
