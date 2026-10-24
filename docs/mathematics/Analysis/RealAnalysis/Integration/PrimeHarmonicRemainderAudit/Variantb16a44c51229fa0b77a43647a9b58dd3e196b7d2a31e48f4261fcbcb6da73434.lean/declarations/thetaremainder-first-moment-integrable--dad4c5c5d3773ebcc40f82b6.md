# thetaRemainder_first_moment_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23245edc-536a-7ad6-e26b-71e15391fa8b",
  "kind": "theorem",
  "lexical_name": "thetaRemainder_first_moment_integrable",
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
  "slug": "thetaremainder-first-moment-integrable--dad4c5c5d3773ebcc40f82b6",
  "source": {
    "blob": "c1cfdfd698c8456e066a496de1a0147735fd0878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dad4c5c5d3773ebcc40f82b6ae9469a897940a20db7516bb4b4c02259bab3eec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23245edc-536a-7ad6-e26b-71e15391fa8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRemainder_first_moment_integrable :
    IntegrableOn (fun u => u * |thetaRemainder u|) (Ioi 0) := by
  have hm : AEStronglyMeasurable (fun u => u * |thetaRemainder u|)
      (volume.restrict (Ioi 0)) :=
    (measurable_id.mul thetaRemainder_measurable.abs).aestronglyMeasurable
  apply (thetaLogError_first_moment_integrable.add
    absolute_tail_first_moment_integrable).mono' hm
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with u hu
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg hu.le (abs_nonneg _))]
  calc
    _ ≤ u * (|thetaLogError u| + ∫ v in Ioi u, |thetaLogError v|) :=
      mul_le_mul_of_nonneg_left (thetaRemainder_abs_le u) hu.le
    _ = _ := mul_add _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PrimeHarmonicRemainderAudit/Variantb16a44c51229fa0b77a43647a9b58dd3e196b7d2a31e48f4261fcbcb6da73434.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1cfdfd698c8456e066a496de1a0147735fd0878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
