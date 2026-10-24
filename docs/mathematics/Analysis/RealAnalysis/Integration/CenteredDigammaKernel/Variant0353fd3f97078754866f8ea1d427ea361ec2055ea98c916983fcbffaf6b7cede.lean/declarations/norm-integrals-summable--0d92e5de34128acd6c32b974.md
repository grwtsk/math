# norm_integrals_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:450b71fa-c495-424c-bc88-3fb65c18bb13",
  "kind": "theorem",
  "lexical_name": "norm_integrals_summable",
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
  "slug": "norm-integrals-summable--0d92e5de34128acd6c32b974",
  "source": {
    "blob": "c41288a3e75bca56cbcb58d317c52f4c27a3d48b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d92e5de34128acd6c32b9745d3c969645ce4915546de827cdeab2ae57999ba7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:450b71fa-c495-424c-bc88-3fb65c18bb13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_integrals_summable (ξ : ℝ) :
    Summable (fun n : ℕ => ∫ t : ℝ in Ioi 0, ‖term ξ n t‖) := by
  have he (n : ℕ) (t : ℝ) : ‖term ξ n t‖ = term ξ n t :=
    Real.norm_of_nonneg (term_nonneg ξ n t)
  simp_rw [he]
  simpa only [term, integral_const_mul] using
    (actual_multiplier_hasSum_integrals ξ).summable

/-- Actual complex quarter-line psi difference, all real frequencies including zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CenteredDigammaKernel/Variant0353fd3f97078754866f8ea1d427ea361ec2055ea98c916983fcbffaf6b7cede.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c41288a3e75bca56cbcb58d317c52f4c27a3d48b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
