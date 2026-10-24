# realThetaRemainder_derivative_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6580bd6-e4e2-e4fe-95df-8211eb3b2eec",
  "kind": "theorem",
  "lexical_name": "realThetaRemainder_derivative_abs_le",
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
  "slug": "realthetaremainder-derivative-abs-le--3756d6b56a5674fa976482ce",
  "source": {
    "blob": "d5b62edbe24d154eb42a48080fbdd2f6f5e3e6dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 759,
    "line": 734,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3756d6b56a5674fa976482cea3a8b01982948c209af8dd954c2f912185023aae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6580bd6-e4e2-e4fe-95df-8211eb3b2eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 734–759.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realThetaRemainder_derivative_abs_le (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |deriv (realThetaRemainder A) q| ≤
      (28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / (q * Real.sqrt q) := by
  have hq0 : 0 < q := by linarith
  rw [(realThetaRemainder_hasDerivAt A q hA hq0).deriv, abs_mul,
    abs_of_pos (one_div_pos.mpr hq0)]
  calc
    _ ≤ 1 / q * ((28 + 30 * Real.sqrt (65 / 3) / A + 24 * (65 / (3 * A ^ 2)) +
        8 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q) :=
      mul_le_mul_of_nonneg_left (realThetaDifferenceKernel_add_rankOne_abs_le A q hA hq)
        (one_div_nonneg.mpr hq0.le)
    _ = _ := by ring

end
end RealThetaDerivativeScratch


/-! Conditional scratch transport only: the kernel derivative bound is a premise. -/

set_option autoImplicit false

namespace KernelVariationTransportScratch

open Finset Set

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RealThetaClassVariation/Variant7471e0c26d82e6691878e9f32303b002b3190442549cc9a9dc18bd91c0dc7af8.lean#L734).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5b62edbe24d154eb42a48080fbdd2f6f5e3e6dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
