# eq_one_or_neg_one_of_mem_support_of_smul_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03e055e4-0598-93c7-80bd-d3b35ea05550",
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
  "slug": "eq-one-or-neg-one-of-mem-support-of-smul-mem--dd2aba0e04e65f81dfdd1df6",
  "source": {
    "blob": "457696b067384e7226aa4439d9e82f3e848249f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 250,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd2aba0e04e65f81dfdd1df688ac9fcb9162b16e67635c26da1d94052bbe24aa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03e055e4-0598-93c7-80bd-d3b35ea05550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 250–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_one_or_neg_one_of_mem_support_of_smul_mem [Finite ι]
    [IsAddTorsionFree M] [IsAddTorsionFree N]
    (i : ι) (h : i ∈ b.support) (t : R) (ht : t • P.root i ∈ range P.root) :
    t = 1 ∨ t = -1 := by
  obtain ⟨z, hz⟩ := b.eq_one_or_neg_one_of_mem_support_of_smul_mem_aux i h t ht
  replace ht : (z : R) • P.coroot i ∈ range P.coroot := by
    obtain ⟨j, hj⟩ := ht
    simpa only [coroot_eq_smul_coroot_iff.mpr hj, smul_smul, hz, one_smul] using mem_range_self j
  obtain ⟨w, hw⟩ := b.flip.eq_one_or_neg_one_of_mem_support_of_smul_mem_aux i h _ ht
  have : (z : R) * w = 1 := by
    simpa [mul_mul_mul_comm _ t, mul_comm t, mul_comm _ (z : R), hz] using congr_arg₂ (· * ·) hz hw
  suffices z = 1 ∨ z = -1 by
    rcases this with rfl | rfl
    · left; simpa using hz
    · right; simpa [neg_eq_iff_eq_neg] using hz
  norm_cast at this
  rw [Int.mul_eq_one_iff_eq_one_or_neg_one] at this
  tauto

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean#L250).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457696b067384e7226aa4439d9e82f3e848249f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
