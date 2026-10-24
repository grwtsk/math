# shellGrowth_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eb31d6df-2312-0af4-587b-02af93ce40f3",
  "kind": "lemma",
  "lexical_name": "shellGrowth_global",
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
  "slug": "shellgrowth-global--e686bcfeeaadfa5571682dca",
  "source": {
    "blob": "308d83957645250eeb49c1c0ac619c0bee0dd4eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 315,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e686bcfeeaadfa5571682dcab9c5043688dc64c4dd9878f201f0180240b47d64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb31d6df-2312-0af4-587b-02af93ce40f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shellGrowth_global :
    ∃ A : ℝ, 0 < A ∧ ∀ r : ℝ, 1 ≤ r → ∀ z : ℂ, z ∈ Metric.sphere 0 (2 * r) →
      ‖z * (z - 1) * completedRiemannZeta₀ z + 1‖ ≤ Real.exp (A * r ^ 4) := by
  obtain ⟨C, hC, hbound⟩ :=
    FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ShellEndpoint.completed_zero_even_re_bound
  exact shellGrowth_sphere_of_endpoint C hC hbound
#print axioms shellGrowth_global
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Combined/Variant2757f46e0b4928a334243c165e1f311e58d492816e08a7915d0e89e7c1b9a64a.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308d83957645250eeb49c1c0ac619c0bee0dd4eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
