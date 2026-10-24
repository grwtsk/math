# candidate_boundaryInverse_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e94cb671-1537-c9b9-acee-1ab943ba9b11",
  "kind": "theorem",
  "lexical_name": "candidate_boundaryInverse_laplace_integrable",
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
  "slug": "candidate-boundaryinverse-laplace-integrable--676eca65ca191790fe6a403f",
  "source": {
    "blob": "585603d2bffaf2ac1eedf19d34aff5d73d2baa54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variant545fbaa8383a994972e2944051505ed103f5254f24edbf39fed8314e3a52d174.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:676eca65ca191790fe6a403fb89c65b4822331e800c95c982b6fa118134a32bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variant545fbaa8383a994972e2944051505ed103f5254f24edbf39fed8314e3a52d174.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e94cb671-1537-c9b9-acee-1ab943ba9b11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem candidate_boundaryInverse_laplace_integrable (X : ℕ) (hX : 1 ≤ X) (ε h : ℝ)
    (hε : 0 < ε) (hh : 0 < h) (hh1 : h ≤ 1) (z : ℂ) (hz : 0 ≤ z.re) :
    IntegrableOn (fun x : ℝ => Complex.exp (-z * (x : ℂ)) *
      boundaryInverse (candidate X ε h) x) (Ioi (0 : ℝ)) := by
  apply ((candidate_boundaryInverse_integrable X hX ε h hε hh hh1).norm.integrableOn).mono'
    (((by fun_prop : Continuous (fun x : ℝ => Complex.exp (-z * (x : ℂ)))).mul
      (candidate_boundaryInverse_continuous X hX ε h hε hh hh1)).aestronglyMeasurable)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with x hx
  change ‖Complex.exp (-z * (x : ℂ)) * boundaryInverse (candidate X ε h) x‖ ≤
    ‖boundaryInverse (candidate X ε h) x‖
  rw [norm_mul]
  have hn : ‖Complex.exp (-z * (x : ℂ))‖ ≤ 1 := by
    rw [Complex.norm_exp, Real.exp_le_one_iff]
    simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
      Complex.ofReal_im, mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hz) hx.le
  simpa only [one_mul] using mul_le_mul_of_nonneg_right hn (norm_nonneg _)

end
end CandidateInverseAdmissionScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variant545fbaa8383a994972e2944051505ed103f5254f24edbf39fed8314e3a52d174.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variant545fbaa8383a994972e2944051505ed103f5254f24edbf39fed8314e3a52d174.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585603d2bffaf2ac1eedf19d34aff5d73d2baa54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
