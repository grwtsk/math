# finite_boundary_zero_moment_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7f46472608fc10339d11a256760793b70057cced",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:229d4051-a5ae-ec02-90bf-eaae712701cb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82c1416f-63d9-cc49-ddc5-e3d153308166",
  "kind": "theorem",
  "lexical_name": "finite_boundary_zero_moment_exact",
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
  "slug": "finite-boundary-zero-moment-exact--d4fa608e04e22ab3a16ebb9e",
  "source": {
    "blob": "7f46472608fc10339d11a256760793b70057cced",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4fa608e04e22ab3a16ebb9eb83662b5a0949dec5be3d6331c6970b896945f2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82c1416f-63d9-cc49-ddc5-e3d153308166`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_boundary_zero_moment_exact (A : ℝ) (hA : 1 ≤ A) :
    finiteBoundaryMoment A 0 = boundaryScale A *
      (∫ t in (0 : ℝ)..2 * A, Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) := by
  have h := congrArg (fun x : ℝ ↦ boundaryScale A * x)
    (continuum_boundary_coordinate_exact A hA)
  have hs : boundaryScale A * (Real.exp A / A ^ 9) = 1 := by
    rw [mul_comm]
    exact boundary_prefactor_mul_scale A (by linarith)
  simpa only [← mul_assoc, hs, one_mul, finiteBoundaryMoment, pow_zero, one_mul] using h.symm

/-- Full-line pole cancellation bounds the finite constant moment; it does not set it to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBoundaryFrontierAudit/Variant4ef9ed717160aef1d59d4d65d9adf0beee93a4741ad09e8234f585d01dac7f62.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f46472608fc10339d11a256760793b70057cced` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
