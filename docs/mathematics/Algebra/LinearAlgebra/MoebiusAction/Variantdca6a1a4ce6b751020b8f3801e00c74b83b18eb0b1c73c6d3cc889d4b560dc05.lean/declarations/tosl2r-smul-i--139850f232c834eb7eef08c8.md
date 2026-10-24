# toSL2R_smul_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0244a922-6282-91a6-5dd8-2ec18347dcf1",
  "kind": "lemma",
  "lexical_name": "toSL2R_smul_I",
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
  "slug": "tosl2r-smul-i--139850f232c834eb7eef08c8",
  "source": {
    "blob": "39084e4f4ae97c9dc588675a4f50607fdeffcddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 358,
    "path": "GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:139850f232c834eb7eef08c8197c5e634d9971789c4ca20cee92833741b25c58",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0244a922-6282-91a6-5dd8-2ec18347dcf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 358–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toSL2R_smul_I (z : ℍ) : z.toSL2R • I = z := by
  have : √z.im ≠ (0 : ℂ) := by simpa [Real.sqrt_ne_zero'] using z.im_pos
  ext
  suffices z.re / √z.im + √z.im * Complex.I = z * (↑√z.im)⁻¹ by
    rw [coe_specialLinearGroup_apply, div_eq_iff (mod_cast denom_ne_zero z.toSL2R I)]
    simpa [add_comm]
  rw [div_add' (hc := this), mul_right_comm, ← Complex.ofReal_mul, ← Real.sqrt_mul z.im_pos.le,
    Real.sqrt_mul_self z.im_pos.le, re_add_im, div_eq_mul_inv]

/-- `SL(2, ℝ)` acts transitively on the upper half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/MoebiusAction/Variantdca6a1a4ce6b751020b8f3801e00c74b83b18eb0b1c73c6d3cc889d4b560dc05.lean#L358).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39084e4f4ae97c9dc588675a4f50607fdeffcddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
