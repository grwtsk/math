# XYIdeal_neg_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "779406a776c31d94819e06bbde069db277b2fb89",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 722,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19727855-0973-3e5b-69f4-fb70021fdef0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85121b7f-48a5-ab7c-3d9b-3872476aa869",
  "kind": "lemma",
  "lexical_name": "XYIdeal_neg_mul",
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
  "slug": "xyideal-neg-mul--8f8b47af4e205aa3aec0c1d5",
  "source": {
    "blob": "779406a776c31d94819e06bbde069db277b2fb89",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 754,
    "line": 722,
    "path": "GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f8b47af4e205aa3aec0c1d53f88d7d731904309785c72e59a4cd13dc28e699a",
  "verification": {
    "reference": "docs/verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85121b7f-48a5-ab7c-3d9b-3872476aa869`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 722–754.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma XYIdeal_neg_mul : XYIdeal W x₁ (C <| W.negY x₁ y₁) * XYIdeal W x₁ (C y₁) = XIdeal W x₁ := by
  have Y_rw :
    (Y - C (C y₁)) * (Y - C (C (W.negY x₁ y₁))) -
        C (X - C x₁) *
          (C (X ^ 2 + C (x₁ + W.a₂) * X + C (x₁ ^ 2 + W.a₂ * x₁ + W.a₄)) - C (C W.a₁) * Y) =
      W.polynomial * 1 := by
    linear_combination (norm := (rw [negY, WeierstrassCurve.polynomial]; C_simp; ring1))
      congr_arg C (congr_arg C ((W.equation_iff _ _).mp h₁.left).symm)
  simp_rw [XYIdeal, XClass, YClass, span_pair_mul_span_pair, mul_comm, ← _root_.map_mul,
    AdjoinRoot.mk_eq_mk.mpr ⟨1, Y_rw⟩, _root_.map_mul, span_insert,
    ← span_singleton_mul_span_singleton, ← mul_sup, ← span_insert]
  convert mul_top (_ : Ideal W.CoordinateRing) using 2
  simp_rw [← @Set.image_singleton _ _ <| CoordinateRing.mk W, ← Set.image_insert_eq, ← map_span]
  convert map_top (R := F[X][Y]) (CoordinateRing.mk W) using 1
  apply congr_arg
  simp_rw [eq_top_iff_one, mem_span_insert', mem_span_singleton']
  rcases ((W.nonsingular_iff' _ _).mp h₁).right with hx | hy
  · let W_X := W.a₁ * y₁ - (3 * x₁ ^ 2 + 2 * W.a₂ * x₁ + W.a₄)
    refine
      ⟨C (C W_X⁻¹ * -(X + C (2 * x₁ + W.a₂))), C (C <| W_X⁻¹ * W.a₁), 0, C (C <| W_X⁻¹ * -1), ?_⟩
    rw [← mul_right_inj' <| C_ne_zero.mpr <| C_ne_zero.mpr hx]
    simp only [mul_add, ← mul_assoc, ← C_mul, mul_inv_cancel hx]
    C_simp
    ring1
  · let W_Y := 2 * y₁ + W.a₁ * x₁ + W.a₃
    refine ⟨0, C (C W_Y⁻¹), C (C <| W_Y⁻¹ * -1), 0, ?_⟩
    rw [negY, ← mul_right_inj' <| C_ne_zero.mpr <| C_ne_zero.mpr hy]
    simp only [mul_add, ← mul_assoc, ← C_mul, mul_inv_cancel hy]
    C_simp
    ring1
set_option linter.uppercaseLean3 false in
#align weierstrass_curve.XY_ideal_neg_mul WeierstrassCurve.XYIdeal_neg_mul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Point/Variant5debe080904ce041ced3aa9a6b509acc472ce008f149d91f0e34589435d3fd30.lean#L722).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `779406a776c31d94819e06bbde069db277b2fb89` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
