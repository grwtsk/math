# cross_of_centered

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d40f033d-78b7-2fd5-942a-958b62ed73f6",
  "kind": "theorem",
  "lexical_name": "cross_of_centered",
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
  "slug": "cross-of-centered--014e0274892fd40589957b8c",
  "source": {
    "blob": "0db97ae3339973128cd7b44392e5a854ae9d1f95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 157,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:014e0274892fd40589957b8cb78b6110c34d97584a31e03caf15d60407e08eeb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d40f033d-78b7-2fd5-942a-958b62ed73f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cross_of_centered (hrev : NativeReverse137Problem) :
    CenteredPickupPoly → SignedCrossEnergyProblem := by
  rintro ⟨C, p, R, hC, hp, hR, hP⟩
  refine ⟨(10 + 137 * C) ^ 2, 2 * p, R, sq_nonneg _, by positivity, hR, ?_⟩
  intro A hA t ht
  have hA1 := hR.trans hA
  have hF : 0 ≤ C * A ^ p := by positivity
  have hn := hrev A hA1 t ht (C * A ^ p) hF (fun u hu ↦
    hP A hA u ⟨hu.1, hu.2.trans ht.2⟩)
  have hp1 : 1 ≤ A ^ p := Real.one_le_rpow hA1 hp
  have hn2 : sourceNorm A t ≤ (10 + 137 * C) * A ^ p := by nlinarith
  have hs := pow_le_pow_left₀ (Real.sqrt_nonneg (physicalEnergy A t)) hn2 2
  rw [Real.sq_sqrt (physicalEnergy_nonneg A t), mul_pow,
    ← Real.rpow_mul_natCast (by linarith : 0 ≤ A)] at hs
  have hexp : p * (2 : ℕ) = 2 * p := by ring
  simpa only [hexp] using (cross_le_energy hA1 t).trans hs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/BranchWeightedGrowth/Variant74b3f9d1f2c5d02ef7502cebb479aa44e4130dbbc00c0c27fdfdfa4c841af1ea.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0db97ae3339973128cd7b44392e5a854ae9d1f95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
