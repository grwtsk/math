# scaled_cauchy_integrable_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:905dcd41-c7ff-ab59-21ff-4b4932c94bf3",
  "kind": "theorem",
  "lexical_name": "scaled_cauchy_integrable_integral",
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
  "slug": "scaled-cauchy-integrable-integral--6c5ff315019fe54c287d46f8",
  "source": {
    "blob": "4793a667b01d80b377a6c725ac8e8421d3cef98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 522,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c5ff315019fe54c287d46f8f3254c608c87522703611202204cd12dabdfdafa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:905dcd41-c7ff-ab59-21ff-4b4932c94bf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–530.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_cauchy_integrable_integral (h : ℝ) (hh : 0 < h) :
    Integrable (fun t : ℝ => (1+(h*t)^2)⁻¹) ∧
      (∫ t : ℝ, (1+(h*t)^2)⁻¹) = Real.pi / h := by
  constructor
  · exact integrable_inv_one_add_sq.comp_mul_left' hh.ne'
  · have hi := Measure.integral_comp_mul_left (fun t : ℝ => (1+t^2)⁻¹) h
    simpa only [integral_univ_inv_one_add_sq, abs_of_pos (inv_pos.mpr hh),
      smul_eq_mul, div_eq_mul_inv, mul_comm] using hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4793a667b01d80b377a6c725ac8e8421d3cef98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
