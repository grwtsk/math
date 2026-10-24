# integral_norm_le_of_affine_envelope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61f9a152-4618-31fc-5ca0-bc36ba0f15f4",
  "kind": "theorem",
  "lexical_name": "integral_norm_le_of_affine_envelope",
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
  "slug": "integral-norm-le-of-affine-envelope--30814450c659dad685189601",
  "source": {
    "blob": "3c01638c882fed0a2d4032ee54dc4f6052205d16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 123,
    "path": "GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30814450c659dad685189601be10f08b967782d4ae8f4a1a3f36c59751c6f94f",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f9a152-4618-31fc-5ca0-bc36ba0f15f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_norm_le_of_affine_envelope (g : ℝ → ℂ) (hg : Continuous g)
    (x h A y l : ℝ) (hh : 0 < h) (ha : 1 < x - h) (hA : 0 ≤ A)
    (hy : y ≠ 0) (hl : l ≤ 2)
    (hbound : ∀ σ ≤ 2, ‖g σ‖ ≤
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) :
    (∫ σ in l..2, ‖g σ‖) ≤ affineRayBudget x h A / y ^ 2 := by
  have hc : Continuous (fun σ : ℝ =>
      (A + (2 - σ) / 2) * numeratorProfile x h σ / (h * y ^ 2)) := by
    exact ((by fun_prop : Continuous (fun σ : ℝ => A + (2 - σ) / 2)).mul
      (continuous_numeratorProfile x h)).div_const _
  exact (intervalIntegral.integral_mono_on hl (hg.norm.intervalIntegrable l 2)
    (hc.intervalIntegrable l 2) (fun σ hσ => hbound σ hσ.2)).trans
      (integral_affine_envelope_le x h A y l hh ha hA hy hl)

/-- Absolute integrability is derived from bounds on every finite norm integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentHorizontalRayMajorant.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentHorizontalRayMajorant.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c01638c882fed0a2d4032ee54dc4f6052205d16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
