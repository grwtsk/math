# cesaroWeight_second_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2658e3f-5a32-5934-eecf-6346f95a86f8",
  "kind": "theorem",
  "lexical_name": "cesaroWeight_second_deriv",
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
  "slug": "cesaroweight-second-deriv--90dff442998dd29c00969881",
  "source": {
    "blob": "9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 96,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90dff442998dd29c00969881718166b756ccd845945263a2edae4b144f73b3e9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2658e3f-5a32-5934-eecf-6346f95a86f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cesaroWeight_second_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (deriv (cesaroWeight A)) t =
      deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t +
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t / 2 := by
  have he : deriv (cesaroWeight A) = fun u =>
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) u +
        deriv (sourceCorrelation explicitSecondDerivative A) u / 2 :=
    funext fun u => (cesaroWeight_hasDerivAt A u hA).deriv
  rw [he]
  exact ((actual_correlation_third_derivative A hA t).differentiableAt.hasDerivAt.add
    (((sourceCorrelation_deriv_contDiff hA).differentiable
      (by norm_num) t).hasDerivAt.div_const 2)).deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCesaroKernelBudget/Variantb022426caa932263468eec22257c5aeff341cd41830f79dce98b492e55acea0a.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bf9b4b68ac4bd0a0df4e4a4169703bbcd4d0c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
