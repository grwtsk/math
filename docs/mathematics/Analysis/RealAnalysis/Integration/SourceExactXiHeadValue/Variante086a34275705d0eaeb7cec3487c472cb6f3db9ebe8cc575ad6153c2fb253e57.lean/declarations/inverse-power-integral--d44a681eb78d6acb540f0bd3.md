# inverse_power_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33d82206-c050-d9c9-7d3b-83408e96e536",
  "kind": "theorem",
  "lexical_name": "inverse_power_integral",
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
  "slug": "inverse-power-integral--d44a681eb78d6acb540f0bd3",
  "source": {
    "blob": "138889f831987ef434facaa7ec583ee83e9843b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 60,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44a681eb78d6acb540f0bd310a5bfd0fb36f5403082a07acda6e8a2fac18d4a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33d82206-c050-d9c9-7d3b-83408e96e536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inverse_power_integral {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (∫ y in a..b, 1 / y ^ (3 / 2 : ℝ)) =
      2 * (1 / Real.sqrt a - 1 / Real.sqrt b) := by
  have hb : 0 < b := ha.trans_le hab
  have hz : (0 : ℝ) ∉ uIcc a b := by
    rw [uIcc_of_le hab]
    intro h
    linarith [h.1]
  have hi := integral_rpow (a := a) (b := b) (r := (-3 / 2 : ℝ))
    (Or.inr ⟨by norm_num, hz⟩)
  have he : (∫ y in a..b, 1 / y ^ (3 / 2 : ℝ)) =
      ∫ y in a..b, y ^ (-3 / 2 : ℝ) := by
    apply intervalIntegral.integral_congr
    intro y hy
    have hy0 : 0 ≤ y := by
      rw [uIcc_of_le hab] at hy
      exact (ha.trans_le hy.1).le
    change 1 / y ^ (3 / 2 : ℝ) = y ^ (-3 / 2 : ℝ)
    rw [show (-3 / 2 : ℝ) = -(3 / 2 : ℝ) by ring, Real.rpow_neg hy0, one_div]
  rw [he, hi]
  norm_num only [show (-3 / 2 : ℝ) + 1 = -(1 / 2 : ℝ) by ring]
  rw [Real.rpow_neg hb.le, Real.rpow_neg ha.le,
    ← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceExactXiHeadValue/Variante086a34275705d0eaeb7cec3487c472cb6f3db9ebe8cc575ad6153c2fb253e57.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `138889f831987ef434facaa7ec583ee83e9843b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
