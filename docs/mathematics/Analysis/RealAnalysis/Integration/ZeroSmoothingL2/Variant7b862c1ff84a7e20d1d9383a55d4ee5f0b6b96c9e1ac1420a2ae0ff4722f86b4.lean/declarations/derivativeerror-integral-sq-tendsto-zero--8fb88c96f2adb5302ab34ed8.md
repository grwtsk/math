# derivativeError_integral_sq_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dee1faa9-8e99-cbf8-0c8b-9d67bbd33763",
  "kind": "theorem",
  "lexical_name": "derivativeError_integral_sq_tendsto_zero",
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
  "slug": "derivativeerror-integral-sq-tendsto-zero--8fb88c96f2adb5302ab34ed8",
  "source": {
    "blob": "c1caf539c24fca1f3a45380e56d30e82b4f6d38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 158,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fb88c96f2adb5302ab34ed8fe25aa497c2e663f796f8bdf8b961735042eec4d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dee1faa9-8e99-cbf8-0c8b-9d67bbd33763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem derivativeError_integral_sq_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ ∫ x,
      (deriv (smoothedTest A (ε i) (hε i)) x - deriv (actualTest A) x) ^ 2)
      l (𝓝 0) := by
  simp_rw [smoothedTest_deriv_eq_convolution A _ hA]
  exact ZeroSmoothingL2Core.mollify_integral_sq_tendsto_zero A hA
    (actualTest_deriv_continuous A hA) (actualTest_deriv_hasCompactSupport A hA)
    (actualTest_deriv_support_subset A hA) ε hε hlim

/-- The first genuine L² limit holds for every positive radius family tending to zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1caf539c24fca1f3a45380e56d30e82b4f6d38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
