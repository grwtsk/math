# actual_first_small_time

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8126bbba-eb11-20a1-5879-05f6c5487f27",
  "kind": "theorem",
  "lexical_name": "actual_first_small_time",
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
  "slug": "actual-first-small-time--a221ef79ff6349125959ffed",
  "source": {
    "blob": "94334492a5cc5a404823f0aa5eb826fb5235fe2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1dc88412cd8f8383cdef7f5a149ae59dcbff4cefa0b1f049e8289252cbb7194e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a221ef79ff6349125959ffed62088f01e3841c8662d436d76a65602098e4ec46",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1dc88412cd8f8383cdef7f5a149ae59dcbff4cefa0b1f049e8289252cbb7194e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8126bbba-eb11-20a1-5879-05f6c5487f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_first_small_time {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      actualCorrelation_second_abs_le_five hA x)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).1, sub_zero] using he

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1dc88412cd8f8383cdef7f5a149ae59dcbff4cefa0b1f049e8289252cbb7194e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceGrowingXiHead/Variant1dc88412cd8f8383cdef7f5a149ae59dcbff4cefa0b1f049e8289252cbb7194e.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `94334492a5cc5a404823f0aa5eb826fb5235fe2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
