# firstPrimeMoment_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef600590-58b5-7cfd-64f5-5056743433b8",
  "kind": "theorem",
  "lexical_name": "firstPrimeMoment_hasDerivAt",
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
  "slug": "firstprimemoment-hasderivat--1ce94c384b9c001b9337a87d",
  "source": {
    "blob": "f255f442bd0eebc7c8c54ff7bd085bc0655ea375",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 301,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ce94c384b9c001b9337a87d35d7af75b5f448c0cbad77a0d479044bf3fbd6bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef600590-58b5-7cfd-64f5-5056743433b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–309.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeMoment_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt firstPrimeMoment (firstPrimeMomentScaleDerivative A) A := by
  have hN : ⌊Real.exp (2 * A)⌋₊ ≤ localUpperCutoff A :=
    Nat.floor_mono (Real.exp_le_exp.mpr (by linarith))
  have hd := firstPrimeMomentFixed_hasDerivAt hA (localUpperCutoff A)
  rw [← firstPrimeMomentScaleDerivative_eq_fixed hA _ hN] at hd
  exact hd.congr_of_eventuallyEq (firstPrimeMoment_eventually_eq_fixed hA)

/-- Literal closed prime moment C¹ needs no noninteger cutoff hypothesis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/CalculusV1Prebytes/Variant8559a4ae85ad9f50f374a37bdd272b1c662136d28c2b2d2b2ba91f81e0a72eed.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f255f442bd0eebc7c8c54ff7bd085bc0655ea375` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
