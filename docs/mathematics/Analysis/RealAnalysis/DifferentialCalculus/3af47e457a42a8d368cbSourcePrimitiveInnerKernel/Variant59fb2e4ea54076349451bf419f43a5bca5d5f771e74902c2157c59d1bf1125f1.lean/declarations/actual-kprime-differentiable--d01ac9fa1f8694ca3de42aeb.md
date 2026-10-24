# actual_kprime_differentiable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e047b9e-3066-c47a-b7c2-5cae9b1f1481",
  "kind": "theorem",
  "lexical_name": "actual_kprime_differentiable",
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
  "slug": "actual-kprime-differentiable--d01ac9fa1f8694ca3de42aeb",
  "source": {
    "blob": "fb0ea5ee90fa3260a5904236f6a594a0d6217c70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant59fb2e4ea54076349451bf419f43a5bca5d5f771e74902c2157c59d1bf1125f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d01ac9fa1f8694ca3de42aeb03868135078f7104736d97829a4c6b1e7d9dde1e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant59fb2e4ea54076349451bf419f43a5bca5d5f771e74902c2157c59d1bf1125f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e047b9e-3066-c47a-b7c2-5cae9b1f1481`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_kprime_differentiable (A t : ℝ) (hA : 0 < A) :
    DifferentiableAt ℝ (deriv (cesaroWeight A)) t := by
  have he : deriv (cesaroWeight A) = fun u =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
    funext fun u => (cesaroWeight_hasDerivAt A u hA).deriv
  rw [he]
  exact ((actual_correlation_third_derivative A hA t).add
    (((sourceCorrelation_deriv_contDiff hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)).differentiableAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant59fb2e4ea54076349451bf419f43a5bca5d5f771e74902c2157c59d1bf1125f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3af47e457a42a8d368cbSourcePrimitiveInnerKernel/Variant59fb2e4ea54076349451bf419f43a5bca5d5f771e74902c2157c59d1bf1125f1.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb0ea5ee90fa3260a5904236f6a594a0d6217c70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
