# mixedDensity_continuousOn_cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2c2682e-bdc3-4961-6071-1a17572030cc",
  "kind": "theorem",
  "lexical_name": "mixedDensity_continuousOn_cell",
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
  "slug": "mixeddensity-continuouson-cell--2462b714b574a7d9c027e1f1",
  "source": {
    "blob": "20088cb8a06d593170bbe0d32f1baf219b1ec673",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 306,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2462b714b574a7d9c027e1f105777ea94508bbe03ba37e644899d9bda9c91a3e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2c2682e-bdc3-4961-6071-1a17572030cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem mixedDensity_continuousOn_cell
    {A k : ℝ} (hA : 0 < A) (hk : 0 < k) (t : ℝ) :
    ContinuousOn (mixedDensity A t) (Icc k (k + 1)) := by
  intro u hu
  have hu0 : 0 < u := hk.trans_le hu.1
  have hl := (Real.continuousAt_log hu0.ne').const_add t
  have hc := (sourceCorrelation_contDiff A hA).continuous.continuousAt.comp hl
  have hd := ((sourceCorrelation_deriv_contDiff hA).continuous_deriv
    (by norm_num)).continuousAt.comp hl
  have hden : ContinuousAt (fun x : ℝ => x * Real.sqrt x) u :=
      continuousAt_id.mul continuousAt_id.sqrt
  have hne : u * Real.sqrt u ≠ 0 :=
    mul_ne_zero hu0.ne' (Real.sqrt_ne_zero'.mpr hu0)
  exact ((continuousAt_const.div hden hne).mul
    (hd.sub (hc.div_const 4))).continuousWithinAt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualMixedWorkFubiniAttempt05/Variant2c409a051c4b1ce6bd0d62b26cff64a800ca6d36b9c1df2882d2c67559dad8ff.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `20088cb8a06d593170bbe0d32f1baf219b1ec673` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
