# mertensResidual_eq_criticalRelative_add_baseline

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a679f061-a85a-112a-e13b-2c75e741616c",
  "kind": "theorem",
  "lexical_name": "mertensResidual_eq_criticalRelative_add_baseline",
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
  "slug": "mertensresidual-eq-criticalrelative-add-baseline--8a4c73502122c82f4ed0b113",
  "source": {
    "blob": "d8915a1083d23e7826474dd70fa5a85b3810f151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 203,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a4c73502122c82f4ed0b11396f5fd1e697403abac4716ee55eb8533d6b0333f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a679f061-a85a-112a-e13b-2c75e741616c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_eq_criticalRelative_add_baseline {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = criticalRelativePairing A + 1 + criticalContinuousMoment A := by
  rw [actualPsi_log_stieltjes hA]
  have he : psiLogKernel A = fun t => criticalKernel A t + baselineLogKernel A t :=
    funext (actualPsi_kernel_decomposition A)
  rw [he, integral_add (criticalKernel_integrable hA) (baselineLogKernel_integrable hA),
    baselineLogKernel_integral hA]
  change criticalRelativePairing A + (1 + criticalContinuousMoment A) = _
  ring

/-- The genuine source compensation is bounded; no lattice/calibration loss is needed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCriticalRelativeCompensationAttempt02/Variant37d5dc48dec6c95be2085a09e3f833b3841e4318c74398e31623c6c454a3eb7f.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8915a1083d23e7826474dd70fa5a85b3810f151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
