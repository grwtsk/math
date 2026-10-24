# ContMDiff.inr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a33f07b7-8ab2-6fb0-aede-cd43c3d2df89",
  "kind": "lemma",
  "lexical_name": "ContMDiff.inr",
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
  "slug": "contmdiff-inr--f2d860a5eff70a0922f64bfd",
  "source": {
    "blob": "846b17490b007add1cf432d6e58ed42a3c11b01f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 427,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2d860a5eff70a0922f64bfdeb3a045b5bfecd02278f5d54c522761b543894af",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a33f07b7-8ab2-6fb0-aede-cd43c3d2df89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiff.inr : ContMDiff I I n (@Sum.inr M M') := by
  intro x
  rw [contMDiffAt_iff]
  refine ⟨continuous_inr.continuousAt, ?_⟩
  -- In extended charts, .inl equals the identity (on the chart sources).
  apply contDiffWithinAt_id.congr_of_eventuallyEq; swap
  · simp only [mfld_simps, sum_chartAt_inr]
    congr
    apply Sum.inr_injective.extend_apply (chartAt _ x)
  set C := chartAt H x with hC
  have : I.symm ⁻¹' (chartAt H x).target ∩ range I ∈ 𝓝[range I] (extChartAt I x) x := by
    rw [← I.image_eq (chartAt H x).target]
    exact (chartAt H x).extend_image_target_mem_nhds (mem_chart_source _ x)
  filter_upwards [this] with y hy
  simp [extChartAt, sum_chartAt_inr, ← hC, Sum.inr_injective.extend_apply C, C.right_inv hy.1,
    I.right_inv hy.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Constructions/Variantdfcf3264bd2290b7821f0cfc256cd26e06de3e2abf694114c957cd788433477e.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846b17490b007add1cf432d6e58ed42a3c11b01f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
