# strictConvexOn_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56b544ff-501b-f7f9-2501-e117a1b98a30",
  "kind": "theorem",
  "lexical_name": "strictConvexOn_rpow",
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
  "slug": "strictconvexon-rpow--5fe3bea352f1bbbfd7862804",
  "source": {
    "blob": "a5323e5947c8553f342672706b6ed03d8e78d61e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 179,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe3bea352f1bbbfd78628042450b4f7c4fc30c6b526b24e3d323fba4cd6eb3c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56b544ff-501b-f7f9-2501-e117a1b98a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictConvexOn_rpow {p : ℝ} (hp : 1 < p) : StrictConvexOn ℝ (Ici 0) fun x : ℝ ↦ x ^ p := by
  apply strictConvexOn_of_slope_strict_mono_adjacent (convex_Ici (0 : ℝ))
  intro x y z (hx : 0 ≤ x) (hz : 0 ≤ z) hxy hyz
  have hy : 0 < y := hx.trans_lt hxy
  have hy' : 0 < y ^ p := rpow_pos_of_pos hy _
  trans p * y ^ (p - 1)
  · have q : 0 < y - x := by rwa [sub_pos]
    rw [div_lt_iff₀ q, ← div_lt_div_iff_of_pos_right hy', _root_.sub_div, div_self hy'.ne',
      ← div_rpow hx hy.le, sub_lt_comm, ← add_sub_cancel_right (x / y) 1, add_comm, add_sub_assoc,
      ← div_mul_eq_mul_div, mul_div_assoc, ← rpow_sub hy, sub_sub_cancel_left, rpow_neg_one,
      mul_assoc, ← div_eq_inv_mul, sub_eq_add_neg, ← mul_neg, ← neg_div, neg_sub, _root_.sub_div,
      div_self hy.ne']
    apply one_add_mul_self_lt_rpow_one_add _ _ hp
    · rw [le_sub_iff_add_le, neg_add_cancel, div_nonneg_iff]
      exact Or.inl ⟨hx, hy.le⟩
    · rw [sub_ne_zero]
      exact ((div_lt_one hy).mpr hxy).ne
  · have q : 0 < z - y := by rwa [sub_pos]
    rw [lt_div_iff₀ q, ← div_lt_div_iff_of_pos_right hy', _root_.sub_div, div_self hy'.ne',
      ← div_rpow hz hy.le, lt_sub_iff_add_lt', ← add_sub_cancel_right (z / y) 1, add_comm _ 1,
      add_sub_assoc, ← div_mul_eq_mul_div, mul_div_assoc, ← rpow_sub hy, sub_sub_cancel_left,
      rpow_neg_one, mul_assoc, ← div_eq_inv_mul, _root_.sub_div, div_self hy.ne']
    apply one_add_mul_self_lt_rpow_one_add _ _ hp
    · rw [le_sub_iff_add_le, neg_add_cancel, div_nonneg_iff]
      exact Or.inl ⟨hz, hy.le⟩
    · rw [sub_ne_zero]
      exact ((one_lt_div hy).mpr hyz).ne'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant7bbcfd2d7ba4536bcebff49ba93a5f8d0190b950677b88cec6c2b328ec12fe3c.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5323e5947c8553f342672706b6ed03d8e78d61e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
