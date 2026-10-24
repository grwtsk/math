# testError_l2_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bc747f9a-2c77-c6f8-0318-ced72e33fe6f",
  "kind": "theorem",
  "lexical_name": "testError_l2_tendsto_zero",
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
  "slug": "testerror-l2-tendsto-zero--a01fdf76711aa2d3da7ac452",
  "source": {
    "blob": "c1caf539c24fca1f3a45380e56d30e82b4f6d38e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 170,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a01fdf76711aa2d3da7ac452711aeb435ad5757274994607a9260e3044524f02",
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

Occurrence: `result:bc747f9a-2c77-c6f8-0318-ced72e33fe6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem testError_l2_tendsto_zero {ι : Type*} {l : Filter ι}
    [l.IsCountablyGenerated] (A : ℝ) (hA : 1 ≤ A)
    (ε : ι → ℝ) (hε : ∀ i, 0 < ε i) (hlim : Tendsto ε l (𝓝 0)) :
    Tendsto (fun i ↦ lpNorm
      (fun x ↦ smoothedTest A (ε i) (hε i) x - actualTest A x) 2 volume) l (𝓝 0) :=
  tendsto_lpNorm_two_of_tendsto_integral_sq (fun i ↦ testError_memLp_two A (ε i) hA (hε i))
    (testError_integral_sq_tendsto_zero A hA ε hε hlim)

/-- The second genuine L² limit concerns the derivatives of the actual zero extensions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingL2/Variant7b862c1ff84a7e20d1d9383a55d4ee5f0b6b96c9e1ac1420a2ae0ff4722f86b4.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c1caf539c24fca1f3a45380e56d30e82b4f6d38e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
