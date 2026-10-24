# rnDeriv_self_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b85032-e812-b3c9-888c-1d726fdccdbc",
  "kind": "lemma",
  "lexical_name": "rnDeriv_self_add",
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
  "slug": "rnderiv-self-add--c7f87ff53b2c714f80d1b45d",
  "source": {
    "blob": "b954d3293cfdd64aef6ac7ddef1e400e41990636",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 453,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7f87ff53b2c714f80d1b45dc5db7c0a0603364b69feff1797e4ec2624cda81d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b85032-e812-b3c9-888c-1d726fdccdbc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rnDeriv_self_add (μ ν : Measure α) [SigmaFinite μ] [SigmaFinite ν] :
    μ.rnDeriv (μ + ν) =ᵐ[ν] fun x ↦ μ.rnDeriv ν x / (μ.rnDeriv ν x + 1) := by
  have h_add : (μ + ν).rnDeriv (μ + ν) =ᵐ[ν] μ.rnDeriv (μ + ν) + ν.rnDeriv (μ + ν) :=
    (ae_add_measure_iff.mp (μ.rnDeriv_add' ν (μ + ν))).2
  have h_one_add := (ae_add_measure_iff.mp (μ + ν).rnDeriv_self).2
  have : (μ.rnDeriv (μ + ν)) =ᵐ[ν] fun x ↦ 1 - (μ.rnDeriv ν x + 1)⁻¹ := by
    filter_upwards [h_add, h_one_add, rnDeriv_add_self ν μ] with a h4 h5 h6
    rw [h5, Pi.add_apply] at h4
    nth_rw 1 [h4, h6]
    simp
  filter_upwards [this, μ.rnDeriv_lt_top ν] with a ha ha_lt_top
  rw [ha, div_eq_mul_inv]
  refine ENNReal.sub_eq_of_eq_add (by simp) ?_
  nth_rewrite 2 [← one_mul (μ.rnDeriv ν a + 1)⁻¹]
  have h := add_mul (μ.rnDeriv ν a) 1 (μ.rnDeriv ν a + 1)⁻¹
  rwa [ENNReal.mul_inv_cancel (by simp) (by simp [ha_lt_top.ne])] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RadonNikodym/Variant87c0e1607b04dc67b3e229fe02c239f5dc5a2cbee46e4e786325652b42da7fe3.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b954d3293cfdd64aef6ac7ddef1e400e41990636` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
