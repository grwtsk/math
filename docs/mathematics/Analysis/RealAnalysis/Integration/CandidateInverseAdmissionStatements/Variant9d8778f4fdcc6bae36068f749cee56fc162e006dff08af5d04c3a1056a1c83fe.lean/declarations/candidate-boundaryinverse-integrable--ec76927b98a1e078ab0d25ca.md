# candidate_boundaryInverse_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29eeb321-0713-5bba-d57e-1d87a9db182f",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_integrable",
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
  "slug": "candidate-boundaryinverse-integrable--ec76927b98a1e078ab0d25ca",
  "source": {
    "blob": "9dc84d32aaf7b71e1ec2d6999b789348f98cdff1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 298,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec76927b98a1e078ab0d25ca714e32411a1dbbbf36abcbcc0c450d9456bd9042",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29eeb321-0713-5bba-d57e-1d87a9db182f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (boundaryInverse (candidate X ε h)) := by
  obtain ⟨C, _, hb⟩ := candidate_boundaryInverse_exp_bound X hX ε h hε hh hh1
  have hp : IntegrableOn (boundaryInverse (candidate X ε h)) (Ioi (0 : ℝ)) := by
    apply ((integrableOn_exp_mul_Ioi (by linarith : -(ε / 2) < 0) 0).const_mul C).mono'
      (candidate_boundaryInverse_continuous X hX ε h hε hh hh1).aestronglyMeasurable
    filter_upwards [] with x
    exact hb x
  have hm : IntegrableOn (boundaryInverse (candidate X ε h)) (Iic (0 : ℝ)) := by
    apply integrableOn_zero.congr_fun_ae
    filter_upwards [ae_restrict_of_ae (volume.ae_ne (0 : ℝ)),
      ae_restrict_mem measurableSet_Iic] with x hx hmem
    exact (candidate_boundaryInverse_eq_zero X hX ε h hε hh hh1 x
      (lt_of_le_of_ne hmem hx)).symm
  have hu := hp.union hm
  simpa only [Ioi_union_Iic, integrableOn_univ] using hu

/-- Every nonnegative Laplace tilt of the actual inverse is genuinely integrable on the half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionStatements/Variant9d8778f4fdcc6bae36068f749cee56fc162e006dff08af5d04c3a1056a1c83fe.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc84d32aaf7b71e1ec2d6999b789348f98cdff1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
