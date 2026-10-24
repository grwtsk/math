# actualNearCriticalRelative_normalized_tendsto_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bf977f1-8dfb-8235-7b3a-cda5e372ab52",
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
  "slug": "actualnearcriticalrelative-normalized-tendsto-zero--876f59e5f93790997c53d7a0",
  "source": {
    "blob": "4cd00922da54fe905178cc1b07ae9e2e1ad31f89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 303,
    "path": "GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantffabea88dfab733760ce02e166d77b21c65fe804232b1e70596414a12bc94fae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876f59e5f93790997c53d7a0bc5d93b4fe1c1e9423b965c06f30f5f2959d4b20",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantffabea88dfab733760ce02e166d77b21c65fe804232b1e70596414a12bc94fae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf977f1-8dfb-8235-7b3a-cda5e372ab52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualNearCriticalRelative_normalized_tendsto_zero :
    Tendsto (fun A : ℝ => actualNearCriticalRelativePairing A / A) atTop (𝓝 0) := by
  have hp := actualHalfMangoldtPrefix_square_normalized_tendsto_two
  have ht : Tendsto (fun A : ℝ => 2 * Real.log A) atTop atTop :=
    Real.tendsto_log_atTop.const_mul_atTop (by norm_num)
  have hpsi := actualRelativePsiTimeError_tendsto_zero.comp ht
  have hpsi' : Tendsto (fun A : ℝ => Chebyshev.psi (A ^ 2) / A ^ 2) atTop (𝓝 1) := by
    have hh := hpsi.add_const 1
    simp only [zero_add] at hh
    apply hh.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have ha : 0 < A := by linarith
    have hex : Real.exp (2 * Real.log A) = A ^ 2 := by
      rw [show 2 * Real.log A = Real.log A + Real.log A by ring,
        Real.exp_add, Real.exp_log ha]
      ring
    dsimp only [Function.comp_apply]
    unfold actualRelativePsiTimeError
    rw [hex, Real.exp_neg, hex]
    field_simp
    ring
  have hinv : Tendsto (fun A : ℝ => 1 / A) atTop (𝓝 0) := by
    simpa only [one_div] using (tendsto_inv_atTop_zero :
      Tendsto (fun A : ℝ => A⁻¹) atTop (𝓝 0))
  have hmain := (((hp.sub hpsi').sub_const 1).add hinv)
  norm_num at hmain
  have hm : Tendsto (fun A : ℝ => actualNearCriticalRelativeMain A / A) atTop (𝓝 0) := by
    apply hmain.congr'
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    unfold actualNearCriticalRelativeMain
    field_simp
  have he := actualNearCriticalRelative_sub_main_tendsto_zero.mul hinv
  have hh := he.add hm
  simp only [mul_zero, zero_add] at hh
  apply hh.congr'
  exact Eventually.of_forall (fun A => by ring)

/-- The entire original tail remains in the exact signed split at the real closed cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantffabea88dfab733760ce02e166d77b21c65fe804232b1e70596414a12bc94fae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/1b1c00277c4cf5df40f613c639aee604d64b5bb1d60dd02b4efae8bc6254fea5SourceActualNear/Variantffabea88dfab733760ce02e166d77b21c65fe804232b1e70596414a12bc94fae.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cd00922da54fe905178cc1b07ae9e2e1ad31f89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
