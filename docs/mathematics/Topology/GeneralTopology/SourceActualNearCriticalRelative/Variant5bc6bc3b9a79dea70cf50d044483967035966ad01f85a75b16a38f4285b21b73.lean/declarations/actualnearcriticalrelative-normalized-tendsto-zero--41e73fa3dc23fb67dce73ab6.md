# actualNearCriticalRelative_normalized_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1caf8801-ab1f-49be-3968-ed86c1d36807",
  "kind": "theorem",
  "lexical_name": "actualNearCriticalRelative_normalized_tendsto_zero",
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
  "slug": "actualnearcriticalrelative-normalized-tendsto-zero--41e73fa3dc23fb67dce73ab6",
  "source": {
    "blob": "28daff445024da5c4170e5a73031aaa8c71bd927",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 287,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41e73fa3dc23fb67dce73ab6d2bfce2ed38145777c8dfbeceb76f56f045da353",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1caf8801-ab1f-49be-3968-ed86c1d36807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNearCriticalRelative_normalized_tendsto_zero :
    Tendsto (fun A : ℝ => actualNearCriticalRelativePairing A / A) atTop (𝓝 0) := by
  have hp := actualHalfMangoldtPrefix_square_normalized_tendsto_two
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hpsi := actualRelativePsiTimeError_tendsto_zero.comp ht
  have hpsi' : Tendsto (fun A : ℝ => Chebyshev.psi (A ^ 2) / A ^ 2) atTop (𝓝 1) := by
    apply (hpsi.add_const 1).congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have ha : 0 < A := by linarith
    have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
      rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
        Real.exp_add, Real.exp_log ha]
      ring
    unfold actualRelativePsiTimeError
    rw [hex, Real.exp_neg, hex]
    field_simp
  have hinv : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 0) := tendsto_inv_atTop_zero
  have hmain := (((hp.sub hpsi').sub_const 1).add hinv)
  norm_num at hmain
  have hm : Tendsto (fun A : ℝ => actualNearCriticalRelativeMain A / A) atTop (𝓝 0) := by
    apply hmain.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    unfold actualNearCriticalRelativeMain
    field_simp
    ring
  have he := actualNearCriticalRelative_sub_main_tendsto_zero.mul hinv
  simpa only [mul_zero, zero_add, div_eq_mul_inv, sub_mul, sub_add_cancel] using he.add hm

/-- The entire original tail remains in the exact signed split at the real closed cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualNearCriticalRelative/Variant5bc6bc3b9a79dea70cf50d044483967035966ad01f85a75b16a38f4285b21b73.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28daff445024da5c4170e5a73031aaa8c71bd927` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
