# tendsto_div_pow_mul_exp_add_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcf25251-c12f-baad-696f-3bf0d8a446a8",
  "kind": "theorem",
  "lexical_name": "tendsto_div_pow_mul_exp_add_atTop",
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
  "slug": "tendsto-div-pow-mul-exp-add-attop--b587e5e93b1d989bb963dece",
  "source": {
    "blob": "fcf5045518281c2442878536854649c2c9065275",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 295,
    "path": "GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b587e5e93b1d989bb963decebdcb4f7f3d7fe03e2f1353b3adeebad50fc273d7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcf25251-c12f-baad-696f-3bf0d8a446a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_div_pow_mul_exp_add_atTop (b c : ℝ) (n : ℕ) (hb : 0 ≠ b) :
    Tendsto (fun x => x ^ n / (b * exp x + c)) atTop (𝓝 0) := by
  have H : ∀ d e, 0 < d → Tendsto (fun x : ℝ => x ^ n / (d * exp x + e)) atTop (𝓝 0) := by
    intro b' c' h
    convert! (tendsto_mul_exp_add_div_pow_atTop b' c' n h).inv_tendsto_atTop using 1
    ext x
    simp
  rcases lt_or_gt_of_ne hb with h | h
  · exact H b c h
  · convert! (H (-b) (-c) (neg_pos.mpr h)).neg using 1
    · ext x
      field_simp
      rw [← neg_add (b * exp x) c, div_neg, neg_neg]
    · rw [neg_zero]

/-- `Real.exp` as an order isomorphism between `ℝ` and `(0, +∞)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Exp/Variant8f93b3fd3c22d8eea77a6af123e6019df03a9b2b6db73397ed7025ac76766f42.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcf5045518281c2442878536854649c2c9065275` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
