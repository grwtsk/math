# actual_whole_error_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:758f3b56-27af-09b7-3939-1a825b0a1182",
  "kind": "theorem",
  "lexical_name": "actual_whole_error_integrable",
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
  "slug": "actual-whole-error-integrable--244343bb6a9a42a7202b7577",
  "source": {
    "blob": "5369ebb03a9609c30086e0147eb8d2f52f34e12d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:244343bb6a9a42a7202b7577c8cfb0b6815886ecfd0142f8f36e02beb5cde1bb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:758f3b56-27af-09b7-3939-1a825b0a1182`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_whole_error_integrable {A k : ℝ} (hA : 91 ≤ A) (hk : 0 < k) :
    IntegrableOn (fun u => Int.fract u *
      (deriv (logProfile A k) u - cubicLogModelDerivative A k u)) (Ioi (0 : ℝ)) := by
  apply (wholeCubicMajorant_integrable A k).mono'
  · exact (measurable_fract.mul
      ((logProfile_contDiff (by linarith : 0 < A) k).continuous_deriv_one.measurable.sub
        (cubicLogModelDerivative_measurable A k))).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
    rw [Real.norm_eq_abs]
    exact actual_whole_error_le_majorant hA hk hu

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Source/Variant74c4e86361c408cc1411e32cca87d1d286d7cfc3068b516f300f8775ccf68fa5.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5369ebb03a9609c30086e0147eb8d2f52f34e12d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
