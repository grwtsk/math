# actual_halfstrip_quartic_argument_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cfd4d388-ab22-c805-c6f4-c9fe8df44bc4",
  "kind": "theorem",
  "lexical_name": "actual_halfstrip_quartic_argument_pos",
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
  "slug": "actual-halfstrip-quartic-argument-pos--3890214e30c41c4d1564ef9a",
  "source": {
    "blob": "c664003b67cd540158cf621d825ff9721e8ea6c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 126,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3890214e30c41c4d1564ef9aa7b71c94ed60ea3ccbc211dcd8fe4bb6af321c96",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfd4d388-ab22-c805-c6f4-c9fe8df44bc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_halfstrip_quartic_argument_pos {A : ℝ} (hA : 1 ≤ A) {s : ℂ}
    (hl : 1/2 < s.re) : 0 < (((A : ℂ)*(s-1/2)).re) := by
  have hp : 0 < A := by linarith
  simpa only [Complex.mul_re,Complex.ofReal_re,Complex.ofReal_im,Complex.sub_re,
    Complex.div_ofNat_re,Complex.ofNat_re,zero_mul,sub_zero] using mul_pos hp (sub_pos.mpr hl)


end ContinuousResearch.ActualMellinFilter

#check ContinuousResearch.ActualMellinFilter.quarticBumpLaplace
#print axioms ContinuousResearch.ActualMellinFilter.quarticBumpLaplace
#print ContinuousResearch.ActualMellinFilter.quarticBumpLaplace

#check ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable
#print axioms ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable
#print ContinuousResearch.ActualMellinFilter.quarticBumpLaplace_integrable

#check ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval
#print axioms ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval
#print ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_interval

#check ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic
#print axioms ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic
#print ContinuousResearch.ActualMellinFilter.primitiveTransform_eq_quartic

#check ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform
#print ContinuousResearch.ActualMellinFilter.actual_mellin_eq_normalizedTransform

#check ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter
#print ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter

#check ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized
#print ContinuousResearch.ActualMellinFilter.actual_mellin_pole_filter_unnormalized

#check ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump
#print ContinuousResearch.ActualMellinFilter.actual_mellin_nonzero_iff_bump

#check ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump
#print ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_bump

#check ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic
#print ContinuousResearch.ActualMellinFilter.actual_mellin_eq_quartic

#check ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic
#print axioms ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic
#print ContinuousResearch.ActualMellinFilter.actual_mellin_halfstrip_nonzero_iff_quartic

#check ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
#print axioms ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
#print ContinuousResearch.ActualMellinFilter.actual_halfstrip_quartic_argument_pos
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt05/Variantc8cb51b69cc8e0c92f2e02f6348d1186fca6e3e8427bf9695b2c062cc5e88e2d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c664003b67cd540158cf621d825ff9721e8ea6c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
