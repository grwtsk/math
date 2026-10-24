# sourceMobiusKernel_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a01d06fe-077f-17c2-5225-01118994fc7d",
  "kind": "theorem",
  "lexical_name": "sourceMobiusKernel_deriv",
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
  "slug": "sourcemobiuskernel-deriv--51afc05fc4057ba25181f834",
  "source": {
    "blob": "9eb67302332a36e79b672f8a0a5e9bbf1e579476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 87,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51afc05fc4057ba25181f8344267586cf3b2eae8947339e856cd53ed07a63793",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a01d06fe-077f-17c2-5225-01118994fc7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMobiusKernel_deriv
    (A x : ℝ) (hA : 0 < A) (hx : 0 < x) :
    deriv (sourceMobiusKernel A) x =
      ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
        Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
          (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
              (Real.log (x * (k : ℝ))) -
            sourceCorrelation Realization.explicitSecondDerivative A
              (Real.log (x * (k : ℝ))) / 2) := by
  unfold sourceMobiusKernel
  rw [deriv_fun_sum]
  · apply Finset.sum_congr rfl
    intro k hk
    exact sourceKernelTerm_deriv A x k hA hx (Finset.mem_Icc.mp hk).1
  · intro k hk
    exact (sourceKernelTerm_hasDerivAt A x k hA hx (Finset.mem_Icc.mp hk).1).differentiableAt

/-- At and beyond the positive support endpoint, the correlation derivative
vanishes as well. The endpoint uses the exact right-hand zero extension. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb67302332a36e79b672f8a0a5e9bbf1e579476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
