# candidate_boundaryInverse_laplace_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a64b7fad6a964167ed6e29df94101aa69038a0b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d329aaa-cb60-5f96-e52e-635991aa1028",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a42ff800-51db-f040-5ad5-16d77f3355da",
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
  "slug": "candidate-boundaryinverse-laplace-integrable--6a1dab5da6ef8366d2c35a72",
  "source": {
    "blob": "5a64b7fad6a964167ed6e29df94101aa69038a0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 79,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a1dab5da6ef8366d2c35a72bf340846147ddae118b0351f9804ea76add2f6a5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a42ff800-51db-f040-5ad5-16d77f3355da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–98.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateInverseAdmissionFragment/Variantb5fc755210a92061e8c157d8223a84f2926120d5ecb15c0f5920514e92fa289b.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a64b7fad6a964167ed6e29df94101aa69038a0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
