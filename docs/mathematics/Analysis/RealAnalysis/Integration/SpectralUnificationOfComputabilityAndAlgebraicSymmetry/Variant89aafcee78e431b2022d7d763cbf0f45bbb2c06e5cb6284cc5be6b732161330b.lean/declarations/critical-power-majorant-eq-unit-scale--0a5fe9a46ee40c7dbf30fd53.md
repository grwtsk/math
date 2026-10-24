# critical_power_majorant_eq_unit_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b92b0cf-6a11-35e9-3c5b-dcd8e1534b92",
  "kind": "theorem",
  "lexical_name": "critical_power_majorant_eq_unit_scale",
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
  "slug": "critical-power-majorant-eq-unit-scale--0a5fe9a46ee40c7dbf30fd53",
  "source": {
    "blob": "fbed124aeb185947047819816a291a514ad5269c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant89aafcee78e431b2022d7d763cbf0f45bbb2c06e5cb6284cc5be6b732161330b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a5fe9a46ee40c7dbf30fd539816d6b9836fd37a70b298c0a1719e9962973fc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant89aafcee78e431b2022d7d763cbf0f45bbb2c06e5cb6284cc5be6b732161330b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8b92b0cf-6a11-35e9-3c5b-dcd8e1534b92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem critical_power_majorant_eq_unit_scale (A : ℝ) (L : ℝ → ℝ) (hA : 0 < A) :
    (∫ t in lowerEndpoint..2 * A, powerErrorMajorant A (1 / 2) L t) =
      A * ∫ y in lowerEndpoint / A..2, L (Real.exp (A * y)) *
        |deriv (unitCorrelation A) y / A - unitCorrelation A y / 2| := by
  simpa only [sub_self, zero_mul, Real.exp_zero, one_mul] using
    power_majorant_integral_eq_unit_scale A (1 / 2) L hA

/-- The finite source endpoint fixes the exponent `2θ - 1`; this is only an upper factor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant89aafcee78e431b2022d7d763cbf0f45bbb2c06e5cb6284cc5be6b732161330b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant89aafcee78e431b2022d7d763cbf0f45bbb2c06e5cb6284cc5be6b732161330b.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbed124aeb185947047819816a291a514ad5269c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
