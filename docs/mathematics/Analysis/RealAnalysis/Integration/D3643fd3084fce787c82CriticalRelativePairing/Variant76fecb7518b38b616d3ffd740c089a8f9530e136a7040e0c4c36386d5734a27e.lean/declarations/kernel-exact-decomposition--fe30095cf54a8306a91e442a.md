# kernel_exact_decomposition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd19b2fc-42a9-01f9-6a17-218cc68e9c4d",
  "kind": "theorem",
  "lexical_name": "kernel_exact_decomposition",
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
  "slug": "kernel-exact-decomposition--fe30095cf54a8306a91e442a",
  "source": {
    "blob": "75d0e7f280ccddfa7a5e10c3dd408dcb9f1ae06c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 109,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variant76fecb7518b38b616d3ffd740c089a8f9530e136a7040e0c4c36386d5734a27e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe30095cf54a8306a91e442a499afff206c550c19487aabc67ce98e5c944b72c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variant76fecb7518b38b616d3ffd740c089a8f9530e136a7040e0c4c36386d5734a27e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd19b2fc-42a9-01f9-6a17-218cc68e9c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem kernel_exact_decomposition (A t : ℝ) :
    -signedLogKernel A t = criticalKernel A t + latticeKernel A t := by
  have hexp : Real.exp (t / 2) * Real.exp (-t) = Real.exp (-t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hhalf : Real.exp t * Real.exp (-t / 2) = Real.exp (t / 2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hcoef :
      Real.exp (t / 2) * (Real.exp (-t) * Chebyshev.psi (Real.exp t) - 1) +
        (Real.exp t - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2) =
      (Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2) := by
    rw [mul_sub, ← mul_assoc, hexp, sub_mul, hhalf]
    ring
  unfold signedLogKernel criticalKernel relativePsiError latticeKernel criticalWeight
  rw [Int.fract]
  calc
    _ = ((Chebyshev.psi (Real.exp t) - (⌊Real.exp t⌋ : ℝ)) * Real.exp (-t / 2)) *
        (sourceCorrelation explicitSecondDerivative A t / 2 -
          deriv (sourceCorrelation explicitSecondDerivative A) t) := by ring
    _ = _ := by rw [← hcoef]; ring

/-- Integrability follows from the actual signed source and the proved lattice majorant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variant76fecb7518b38b616d3ffd740c089a8f9530e136a7040e0c4c36386d5734a27e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/D3643fd3084fce787c82CriticalRelativePairing/Variant76fecb7518b38b616d3ffd740c089a8f9530e136a7040e0c4c36386d5734a27e.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75d0e7f280ccddfa7a5e10c3dd408dcb9f1ae06c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
