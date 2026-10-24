# primeSample_integral_eq_primitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8411af5f-f4d2-3aa2-d8d3-7976dc67f789",
  "kind": "theorem",
  "lexical_name": "primeSample_integral_eq_primitive",
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
  "slug": "primesample-integral-eq-primitive--08c8adcf9f2f3178d2aa278f",
  "source": {
    "blob": "aae5930c09c365323c06ada6904c8975b6ea35f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 159,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c8adcf9f2f3178d2aa278fa2f25bb8dc27949da6bb909c67645bd567eddd1a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8411af5f-f4d2-3aa2-d8d3-7976dc67f789`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSample_integral_eq_primitive (A q : ℝ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    (∫ x in Set.Ioi (1 : ℝ), correlationPrimeSample A (q * x)) = primePrimitiveSample A q := by
  simp_rw [correlationPrimeSample_eq]
  rw [integral_add (differenceKernel_rescaled_integrable A q hA hq)
      ((InnerPrimitiveTransport.sourceKernel_rescaled_integrable A q hA hq).div_const 2),
    integral_div, differenceKernel_integral_eq_primitive A q hA hq,
    differencePrimitiveSamplingKernel_eq,
    InnerPrimitiveTransport.sourceKernel_integral_eq_primitive_sum A q hA hq,
    ← sourcePrimitiveSamplingKernel_eq_fixed_sum A q hA hq, primePrimitiveSample_eq]
  ring

/-- Any actual source-supported profile vanishes beyond the strict product cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variantfd859fb654fdf8ef0911c105e5fedc61fe5e9bfb0a4a988251a48d92617639f4.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aae5930c09c365323c06ada6904c8975b6ea35f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
