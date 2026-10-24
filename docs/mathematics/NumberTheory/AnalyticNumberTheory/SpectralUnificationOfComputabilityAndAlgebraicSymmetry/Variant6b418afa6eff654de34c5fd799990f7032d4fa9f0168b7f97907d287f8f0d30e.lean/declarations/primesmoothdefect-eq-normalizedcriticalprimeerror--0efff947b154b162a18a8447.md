# primeSmoothDefect_eq_normalizedCriticalPrimeError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3769788-adca-1207-1104-ddab4407b297",
  "kind": "theorem",
  "lexical_name": "primeSmoothDefect_eq_normalizedCriticalPrimeError",
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
  "slug": "primesmoothdefect-eq-normalizedcriticalprimeerror--0efff947b154b162a18a8447",
  "source": {
    "blob": "55e35b671e3716a378ea08bad41336edc43494a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0efff947b154b162a18a8447d452bd0ab45e8e3e993b504a3ce27edf36d969bc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3769788-adca-1207-1104-ddab4407b297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSmoothDefect_eq_normalizedCriticalPrimeError (A : ℝ) (hA : 1 ≤ A) :
    primeSmoothDefect A = normalizedCriticalPrimeError A := by
  unfold primeSmoothDefect normalizedCriticalPrimeError
  rw [closedPrimeMoment_eq_criticalWeight_sum A hA,
    smoothMoment_eq_unitCorrelation_integral A hA]

/-- The complete signed residual differs only by the existing bounded companion. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant6b418afa6eff654de34c5fd799990f7032d4fa9f0168b7f97907d287f8f0d30e.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `55e35b671e3716a378ea08bad41336edc43494a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
