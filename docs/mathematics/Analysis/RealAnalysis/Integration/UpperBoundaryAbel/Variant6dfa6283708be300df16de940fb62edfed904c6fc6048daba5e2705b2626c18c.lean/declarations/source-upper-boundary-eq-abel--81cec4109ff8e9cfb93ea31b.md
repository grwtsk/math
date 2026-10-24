# source_upper_boundary_eq_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:189144b0-98b2-16da-5f3f-f5aabe13749d",
  "kind": "theorem",
  "lexical_name": "source_upper_boundary_eq_abel",
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
  "slug": "source-upper-boundary-eq-abel--81cec4109ff8e9cfb93ea31b",
  "source": {
    "blob": "a33321a56381efad3900beb9a84c5a1e7eeb5176",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 187,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81cec4109ff8e9cfb93ea31b1a6edd4606982a726ce71ded9fa00a883fad2ecb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:189144b0-98b2-16da-5f3f-f5aabe13749d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_upper_boundary_eq_abel (A : ℝ) (hA : 1 ≤ A) :
    JointBoundaryTransport.rectangle
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊)
      (fun n ↦ SourceSampling.sourceSamplingKernel A n) =
      -∫ x in 1..Real.exp (2 * A), upperProductSummatory ⌊Real.exp A⌋₊ x *
        deriv (SourceSampling.sourceSamplingKernel A) x := by
  apply upper_rectangle_eq_abel _ _ _ (source_index_two A hA)
    (Real.one_le_exp_iff.mpr (by linarith)) (source_square_cutoff A)
  · intro x hx
    exact (SourceSamplingDerivative.sourceSamplingKernel_hasDerivAt A x hA
      (lt_of_lt_of_le (by norm_num) hx.1)).differentiableAt
  · exact MertensTransport.sourceSamplingKernel_derivative_integrableOn A 1 _ hA (by norm_num)
  · exact MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (Real.exp_pos _) le_rfl

end
end UpperBoundaryAbelScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperBoundaryAbel/Variant6dfa6283708be300df16de940fb62edfed904c6fc6048daba5e2705b2626c18c.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33321a56381efad3900beb9a84c5a1e7eeb5176` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
