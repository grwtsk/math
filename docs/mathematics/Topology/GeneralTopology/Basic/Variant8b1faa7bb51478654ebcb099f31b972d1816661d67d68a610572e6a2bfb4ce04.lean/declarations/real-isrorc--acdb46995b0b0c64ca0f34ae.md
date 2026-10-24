# Real.isROrC

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12b84d3dc5a47c13a0ac568679e43f825449a77fbd39ff1ad0a032da1507c6b3",
  "kind": "instance",
  "lexical_name": "Real.isROrC",
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
  "slug": "real-isrorc--acdb46995b0b0c64ca0f34ae",
  "source": {
    "blob": "713390e029f6f4e754e1598acec0f06945e4df5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 850,
    "line": 822,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acdb46995b0b0c64ca0f34aed2be8294d3ddf0fa3a8150e6506b6178b993f6f0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12b84d3dc5a47c13a0ac568679e43f825449a77fbd39ff1ad0a032da1507c6b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 822–850.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Real.isROrC : IsROrC ℝ where
  re := AddMonoidHom.id ℝ
  im := 0
  I := 0
  I_re_ax := by simp only [AddMonoidHom.map_zero]
  I_mul_I_ax := Or.intro_left _ rfl
  re_add_im_ax z := by
    simp only [add_zero, mul_zero, Algebra.id.map_eq_id, RingHom.id_apply, AddMonoidHom.id_apply]
  ofReal_re_ax f := rfl
  ofReal_im_ax r := rfl
  mul_re_ax z w := by simp only [sub_zero, mul_zero, AddMonoidHom.zero_apply, AddMonoidHom.id_apply]
  mul_im_ax z w := by simp only [add_zero, zero_mul, mul_zero, AddMonoidHom.zero_apply]
  conj_re_ax z := by simp only [starRingEnd_apply, star_id_of_comm]
  conj_im_ax z := by simp only [neg_zero, AddMonoidHom.zero_apply]
  conj_I_ax := by simp only [RingHom.map_zero, neg_zero]
  norm_sq_eq_def_ax z := by simp only [sq, Real.norm_eq_abs, ← abs_mul, abs_mul_self z, add_zero,
    mul_zero, AddMonoidHom.zero_apply, AddMonoidHom.id_apply]
  mul_im_I_ax z := by simp only [mul_zero, AddMonoidHom.zero_apply]
  le_iff_re_im := (and_iff_left rfl).symm
#align real.is_R_or_C Real.isROrC

end Instances

namespace IsROrC

section Order

open scoped ComplexOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant8b1faa7bb51478654ebcb099f31b972d1816661d67d68a610572e6a2bfb4ce04.lean#L822).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `713390e029f6f4e754e1598acec0f06945e4df5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
