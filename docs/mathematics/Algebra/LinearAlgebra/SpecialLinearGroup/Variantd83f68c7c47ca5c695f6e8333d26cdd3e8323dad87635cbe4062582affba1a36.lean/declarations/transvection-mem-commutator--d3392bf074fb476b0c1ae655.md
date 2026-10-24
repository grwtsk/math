# transvection_mem_commutator₁

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7a5e533-7f78-9444-d867-f09664009707",
  "kind": "lemma",
  "lexical_name": "transvection_mem_commutator₁",
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
  "slug": "transvection-mem-commutator--d3392bf074fb476b0c1ae655",
  "source": {
    "blob": "2336b1615bef41d2a93efe72389be2b1f6172533",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 776,
    "line": 762,
    "path": "GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3392bf074fb476b0c1ae655f0733e1022823da68d5cfa08430bfc227deb1305",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7a5e533-7f78-9444-d867-f09664009707`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–776.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transvection_mem_commutator₁ {a : F} (ha : a ≠ 0) (hasq : a ^ 2 ≠ 1) (c : F) :
    SpecialLinearGroup.transvection one_ne_zero c ∈ commutator SL(2, F) := by
  have (b c' : F) (hc : c' = b * (a ^ 2 - 1)) :
      ⁅diag2 a⁻¹ (inv_ne_zero ha), SpecialLinearGroup.transvection one_ne_zero b⁆ =
      (SpecialLinearGroup.transvection one_ne_zero c' : SL(2, F)) := by
    rw [commutatorElement_def, diag2_inv a⁻¹ (inv_ne_zero ha),
      SpecialLinearGroup.transvection_inv one_ne_zero b]
    refine Subtype.ext <| Matrix.ext fun i j ↦ ?_
    fin_cases i <;> fin_cases j <;>
    simp [hc, SpecialLinearGroup.transvection_coe, diag2_coe, inv_inv, mul_add, add_mul,
      mul_inv_cancel₀ ha, inv_mul_cancel₀ ha, mul_comm a b, mul_assoc b a a, ← pow_two,
      mul_sub_one, ← sub_eq_add_neg]
  rw [← this (c / (a ^ 2 - 1)) c (div_mul_cancel₀ c (sub_ne_zero_of_ne hasq)).symm]
  exact Subgroup.commutator_mem_commutator (Subgroup.mem_top _) (Subgroup.mem_top _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/SpecialLinearGroup/Variantd83f68c7c47ca5c695f6e8333d26cdd3e8323dad87635cbe4062582affba1a36.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336b1615bef41d2a93efe72389be2b1f6172533` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
