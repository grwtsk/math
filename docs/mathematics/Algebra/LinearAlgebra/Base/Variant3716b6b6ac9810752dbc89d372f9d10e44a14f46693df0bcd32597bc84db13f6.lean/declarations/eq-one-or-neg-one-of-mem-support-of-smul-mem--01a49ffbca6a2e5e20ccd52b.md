# eq_one_or_neg_one_of_mem_support_of_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:799c4b9f-ef90-19e6-b79c-007dfe7f1369",
  "kind": "lemma",
  "lexical_name": "eq_one_or_neg_one_of_mem_support_of_smul_mem",
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
  "slug": "eq-one-or-neg-one-of-mem-support-of-smul-mem--01a49ffbca6a2e5e20ccd52b",
  "source": {
    "blob": "006a0a2da02669687773e0a31fde9d6e03bfa504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a49ffbca6a2e5e20ccd52b962bc67c8f1274da10c15d32ecc6f5bed15f4be0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:799c4b9f-ef90-19e6-b79c-007dfe7f1369`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_one_or_neg_one_of_mem_support_of_smul_mem [Finite ι] [CharZero R]
    [NoZeroSMulDivisors ℤ M] [NoZeroSMulDivisors ℤ N]
    (i : ι) (h : i ∈ b.support) (t : R) (ht : t • P.root i ∈ range P.root) :
    t = 1 ∨ t = - 1 := by
  obtain ⟨z, hz⟩ := b.eq_one_or_neg_one_of_mem_support_of_smul_mem_aux i h t ht
  obtain ⟨s, hs⟩ := IsUnit.exists_left_inv <| isUnit_of_mul_eq_one_right _ t hz
  replace ht : s • P.coroot i ∈ range P.coroot := by
    obtain ⟨j, hj⟩ := ht
    simpa only [coroot_eq_smul_coroot_iff.mpr hj, smul_smul, hs, one_smul] using mem_range_self j
  obtain ⟨w, hw⟩ := b.flip.eq_one_or_neg_one_of_mem_support_of_smul_mem_aux i h s ht
  have : (z : R) * w = 1 := by
    simpa [mul_mul_mul_comm _ t _ s, mul_comm t s, hs] using congr_arg₂ (· * ·) hz hw
  suffices z = 1 ∨ z = - 1 by
    rcases this with rfl | rfl
    · left; simpa using hz
    · right; simpa [neg_eq_iff_eq_neg] using hz
  norm_cast at this
  rw [Int.mul_eq_one_iff_eq_one_or_neg_one] at this
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant3716b6b6ac9810752dbc89d372f9d10e44a14f46693df0bcd32597bc84db13f6.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `006a0a2da02669687773e0a31fde9d6e03bfa504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
