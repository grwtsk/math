# oangle_add_right_smul_rotation_pi_div_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbce0a87-3ed1-9cfc-2169-9522b5372ca4",
  "kind": "theorem",
  "lexical_name": "oangle_add_right_smul_rotation_pi_div_two",
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
  "slug": "oangle-add-right-smul-rotation-pi-div-two--f40cf7f4fb8d130086178020",
  "source": {
    "blob": "2b01bb7ca0659527f3eff4a98da378e4459744e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 454,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f40cf7f4fb8d1300861780200a189a63fc1c153e7d956ddd8db3612048c0c52b",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbce0a87-3ed1-9cfc-2169-9522b5372ca4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 454–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem oangle_add_right_smul_rotation_pi_div_two {x : V} (h : x ≠ 0) (r : ℝ) :
    o.oangle x (x + r • o.rotation (π / 2 : ℝ) x) = Real.arctan r := by
  rcases lt_trichotomy r 0 with (hr | rfl | hr)
  · have ha : o.oangle x (r • o.rotation (π / 2 : ℝ) x) = -(π / 2 : ℝ) := by
      rw [o.oangle_smul_right_of_neg _ _ hr, o.oangle_neg_right h, o.oangle_rotation_self_right h, ←
        sub_eq_zero, add_comm, sub_neg_eq_add, ← Real.Angle.coe_add, ← Real.Angle.coe_add,
        add_assoc, add_halves, ← two_mul, Real.Angle.coe_two_pi]
      simpa using h
    -- Porting note: if the type is not given in `neg_neg` then Lean "forgets" about the instance
    -- `Neg (Orientation ℝ V (Fin 2))`
    rw [← neg_inj, ← oangle_neg_orientation_eq_neg, @neg_neg Real.Angle] at ha
    rw [← neg_inj, oangle_rev, ← oangle_neg_orientation_eq_neg, neg_inj, oangle_rev,
      (-o).oangle_add_right_eq_arctan_of_oangle_eq_pi_div_two ha, norm_smul,
      LinearIsometryEquiv.norm_map, mul_div_assoc, div_self (norm_ne_zero_iff.2 h), mul_one,
      Real.norm_eq_abs, abs_of_neg hr, Real.arctan_neg, Real.Angle.coe_neg, neg_neg]
  · rw [zero_smul, add_zero, oangle_self, Real.arctan_zero, Real.Angle.coe_zero]
  · have ha : o.oangle x (r • o.rotation (π / 2 : ℝ) x) = (π / 2 : ℝ) := by
      rw [o.oangle_smul_right_of_pos _ _ hr, o.oangle_rotation_self_right h]
    rw [o.oangle_add_right_eq_arctan_of_oangle_eq_pi_div_two ha, norm_smul,
      LinearIsometryEquiv.norm_map, mul_div_assoc, div_self (norm_ne_zero_iff.2 h), mul_one,
      Real.norm_eq_abs, abs_of_pos hr]

/-- An angle in a right-angled triangle expressed using `arctan`, where one side is a multiple
of a rotation of another by `π / 2`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/RightAngle/Variantc1b43eeb8c54b7b81bcc2c30395ae6e0fbbb05a94afea494f108831740bb3ca8.lean#L454).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b01bb7ca0659527f3eff4a98da378e4459744e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
