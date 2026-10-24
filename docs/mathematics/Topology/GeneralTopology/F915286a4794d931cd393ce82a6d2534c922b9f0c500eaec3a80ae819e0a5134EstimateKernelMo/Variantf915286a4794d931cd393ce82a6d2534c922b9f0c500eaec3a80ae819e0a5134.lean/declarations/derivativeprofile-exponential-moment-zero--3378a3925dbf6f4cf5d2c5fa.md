# derivativeProfile_exponential_moment_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f10d7a5fefac851fd909ef517f7a8785807f1817",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1adf7118-ee33-9c39-f934-25903a62a961",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d30b7382-cd45-cfc0-4060-8f33c2d12a45",
  "kind": "theorem",
  "lexical_name": "derivativeProfile_exponential_moment_zero",
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
  "slug": "derivativeprofile-exponential-moment-zero--3378a3925dbf6f4cf5d2c5fa",
  "source": {
    "blob": "f10d7a5fefac851fd909ef517f7a8785807f1817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 375,
    "path": "GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3378a3925dbf6f4cf5d2c5fad8819948a928f8724857680592a14840ec408eb8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d30b7382-cd45-cfc0-4060-8f33c2d12a45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeProfile_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      Real.exp (t / 2) * derivativeProfile A t) = 0 := by
  have hd0 :
      (∫ t, deriv (weightedCorrelation A) t) = 0 :=
    integral_eq_zero_of_hasDerivAt_of_integrable
      (fun t =>
        ((weightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)
      (weightedCorrelation_deriv_integrable A hA)
      (weightedCorrelation_integrable A hA)
  have hC0 :=
    CorrelationMoment.full_correlation_moment_zero A hA
  have heq :
      (fun t =>
        Real.exp (t / 2) * derivativeProfile A t) =
        fun t =>
          deriv (weightedCorrelation A) t -
            weightedCorrelation A t := by
    funext t
    rw [weightedCorrelation_deriv A t hA]
    unfold weightedCorrelation derivativeProfile
    ring
  rw [heq, integral_sub
    (weightedCorrelation_deriv_integrable A hA)
    (weightedCorrelation_integrable A hA), hd0]
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  have hw0 :
      (∫ t, weightedCorrelation A t) = 0 := by
    simpa only [weightedCorrelation, hscale] using hC0
  rw [hw0, sub_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/F915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134EstimateKernelMo/Variantf915286a4794d931cd393ce82a6d2534c922b9f0c500eaec3a80ae819e0a5134.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10d7a5fefac851fd909ef517f7a8785807f1817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
