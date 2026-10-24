# eLpNorm_le_eLpNorm_fderiv_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "359c21256d5d3db3bcee9bc271792a403e3f66a6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a6/a6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce47aa6a-ab17-9597-e136-4c0142102316",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4cfe85ba-0144-3d27-3b54-e4756120138b",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_eLpNorm_fderiv_one",
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
  "slug": "elpnorm-le-elpnorm-fderiv-one--1af604b4a5f82b8be7b753fa",
  "source": {
    "blob": "359c21256d5d3db3bcee9bc271792a403e3f66a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 441,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1af604b4a5f82b8be7b753fa2c9de47ca2828d274453ff7bca6c235a44102d9a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4cfe85ba-0144-3d27-3b54-e4756120138b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_eLpNorm_fderiv_one {u : E → F} (hu : ContDiff ℝ 1 u) (h2u : HasCompactSupport u)
    {p : ℝ≥0} (hp : NNReal.HolderConjugate (finrank ℝ E) p) :
    eLpNorm u p μ ≤ eLpNormLESNormFDerivOneConst μ p * eLpNorm (fderiv ℝ u) 1 μ := by
  have h0p : 0 < (p : ℝ) := hp.coe.symm.pos
  rw [eLpNorm_one_eq_lintegral_enorm,
    ← ENNReal.rpow_le_rpow_iff h0p, ENNReal.mul_rpow_of_nonneg _ _ h0p.le,
    ← ENNReal.coe_rpow_of_nonneg _ h0p.le, eLpNormLESNormFDerivOneConst, ← NNReal.rpow_mul,
    eLpNorm_nnreal_pow_eq_lintegral hp.symm.pos.ne',
    inv_mul_cancel₀ h0p.ne', NNReal.rpow_one]
  exact lintegral_pow_le_pow_lintegral_fderiv μ hu h2u hp.coe

/-- The constant factor occurring in the conclusion of `eLpNorm_le_eLpNorm_fderiv_of_eq_inner`.
It only depends on `E`, `μ` and `p`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Varianta6e0d80f0c6ccbb7ead8b1861c77a8ba0165ef89e754eef88df8234aa634a1ea.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359c21256d5d3db3bcee9bc271792a403e3f66a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
