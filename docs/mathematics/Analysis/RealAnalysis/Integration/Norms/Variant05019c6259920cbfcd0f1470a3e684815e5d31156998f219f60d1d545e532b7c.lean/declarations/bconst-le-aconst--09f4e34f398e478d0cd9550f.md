# bConst_le_aConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4dd504-4524-2e96-dd02-0ee7acc88e84",
  "kind": "theorem",
  "lexical_name": "bConst_le_aConst",
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
  "slug": "bconst-le-aconst--09f4e34f398e478d0cd9550f",
  "source": {
    "blob": "7392f1f6f96b918508d0a01f898f76d8012a9b6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 535,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09f4e34f398e478d0cd9550f95637129a1059604274379c2f8b10e68d2587331",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4dd504-4524-2e96-dd02-0ee7acc88e84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bConst_le_aConst (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    bConst ϱ L w ≤ aConst ϱ L w := by
  have hL := L_pos hw hwL
  unfold bConst aConst
  have hmono : ∫ u : ℝ, phi ϱ L w u ^ 4 ≤ ∫ u : ℝ, phi ϱ L w u ^ 2 := by
    refine MeasureTheory.integral_mono (integrable_phi_pow hϱ hw hwL (by norm_num))
      (integrable_phi_pow hϱ hw hwL (by norm_num)) fun u => ?_
    have h0 := phi_nonneg hϱ (L := L) (w := w) u
    have h1 := phi_le_one hϱ (L := L) (w := w) u
    have hp2 : phi ϱ L w u ^ 2 ≤ 1 := pow_le_one₀ h0 h1
    have hp2n : (0 : ℝ) ≤ phi ϱ L w u ^ 2 := sq_nonneg _
    nlinarith [mul_le_mul_of_nonneg_left hp2 hp2n]
  exact mul_le_mul_of_nonneg_left hmono (by positivity)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant05019c6259920cbfcd0f1470a3e684815e5d31156998f219f60d1d545e532b7c.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7392f1f6f96b918508d0a01f898f76d8012a9b6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
