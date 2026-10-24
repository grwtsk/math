# RCLike.copy_of_normedField

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:072e0a1cc1990c53d6092bbc91263c139f8085c35cf9b0e6211892f7ab974185",
  "kind": "def",
  "lexical_name": "RCLike.copy_of_normedField",
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
  "slug": "rclike-copy-of-normedfield--06a378b32a78028f8151d70c",
  "source": {
    "blob": "e1e3953b08dfa64478defc40e0ff5ca7ef8814d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1198,
    "line": 1156,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06a378b32a78028f8151d70c19f87a6f7e9b3ef5ac31ee14f8d2776da7bac560",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:072e0a1cc1990c53d6092bbc91263c139f8085c35cf9b0e6211892f7ab974185`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1156–1198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def RCLike.copy_of_normedField {𝕜 : Type*} (h : RCLike 𝕜) (hk : NormedField 𝕜)
    (h'' : hk = h.toNormedField) : RCLike 𝕜 where
  __ := hk
  toPartialOrder := h.toPartialOrder
  toDecidableEq := h.toDecidableEq
  complete := by subst h''; exact h.complete
  lt_norm_lt := by subst h''; exact h.lt_norm_lt
  -- star fields
  star := (@StarMul.toInvolutiveStar _ (_) (@StarRing.toStarMul _ (_) h.toStarRing)).star
  star_involutive := by subst h''; exact h.star_involutive
  star_mul := by subst h''; exact h.star_mul
  star_add := by subst h''; exact h.star_add
  -- algebra fields
  smul := (@Algebra.toSMul _ _ _ (_) (@NormedAlgebra.toAlgebra _ _ _ (_) h.toNormedAlgebra)).smul
  algebraMap :=
  { toFun := @Algebra.algebraMap _ _ _ (_) (@NormedAlgebra.toAlgebra _ _ _ (_) h.toNormedAlgebra)
    map_one' := by subst h''; exact h.algebraMap.map_one'
    map_mul' := by subst h''; exact h.algebraMap.map_mul'
    map_zero' := by subst h''; exact h.algebraMap.map_zero'
    map_add' := by subst h''; exact h.algebraMap.map_add' }
  commutes' := by subst h''; exact h.commutes'
  smul_def' := by subst h''; exact h.smul_def'
  norm_smul_le := by subst h''; exact h.norm_smul_le
  -- RCLike fields
  re := by subst h''; exact h.re
  im := by subst h''; exact h.im
  I := h.I
  I_re_ax := by subst h''; exact h.I_re_ax
  I_mul_I_ax := by subst h''; exact h.I_mul_I_ax
  re_add_im_ax := by subst h''; exact h.re_add_im_ax
  ofReal_re_ax := by subst h''; exact h.ofReal_re_ax
  ofReal_im_ax := by subst h''; exact h.ofReal_im_ax
  mul_re_ax := by subst h''; exact h.mul_re_ax
  mul_im_ax := by subst h''; exact h.mul_im_ax
  conj_re_ax := by subst h''; exact h.conj_re_ax
  conj_im_ax := by subst h''; exact h.conj_im_ax
  conj_I_ax := by subst h''; exact h.conj_I_ax
  norm_sq_eq_def_ax := by subst h''; exact h.norm_sq_eq_def_ax
  mul_im_I_ax := by subst h''; exact h.mul_im_I_ax
  le_iff_re_im := by subst h''; exact h.le_iff_re_im

/-- Given a normed field `𝕜` satisfying `IsRCLikeNormedField 𝕜`, build an associated `RCLike 𝕜`
structure on `𝕜` which is definitionally compatible with the given normed field structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantc0cab26026e8ad82143cea922df2a66e765a8d0a5b4df8cec1971570ec693373.lean#L1156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1e3953b08dfa64478defc40e0ff5ca7ef8814d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
