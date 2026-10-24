# IsPos.add_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a4594f7-6fe2-15da-61eb-8f9c580a21df",
  "kind": "lemma",
  "lexical_name": "IsPos.add_zsmul",
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
  "slug": "ispos-add-zsmul--8cc31c01f66b663daee7f213",
  "source": {
    "blob": "457696b067384e7226aa4439d9e82f3e848249f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 647,
    "line": 621,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cc31c01f66b663daee7f213194efe1a98f74768fadbef6a05623c65715446ba",
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

Occurrence: `result:2a4594f7-6fe2-15da-61eb-8f9c580a21df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–647.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPos.add_zsmul {i j k : ι} {z : ℤ} (hij : i ≠ j)
    (hi : b.IsPos i) (hj : j ∈ b.support) (hk : P.root k = P.root i + z • P.root j) :
    b.IsPos k := by
  replace hij : LinearIndependent R ![P.root j, P.root i] := by
    refine IsReduced.linearIndependent P hij.symm fun contra ↦ ?_
    let := P.indexNeg
    replace contra : i = -j := by rw [eq_comm, neg_eq_iff_eq_neg]; simpa using contra
    rw [contra, isPos_iff, height_reflectionPerm_self, height_one_of_mem_support hj] at hi
    lia
  induction z generalizing i k with
  | zero => simp_all
  | succ w hw =>
    obtain ⟨l, hl⟩ : P.root i + (w : ℤ) • P.root j ∈ range P.root := by
      replace hk : P.root i + (w + 1) • P.root j ∈ range P.root := ⟨k, by rw [hk]; module⟩
      simp only [natCast_zsmul, root_add_nsmul_mem_range_iff_le_chainTopCoeff hij] at hk ⊢
      lia
    replace hk : P.root k = P.root l + P.root j := by rw [hk, hl]; module
    exact (hw hi hl hij).add (b.isPos_of_mem_support hj) hk
  | pred w hw =>
    obtain ⟨l, hl⟩ : P.root i + (-w : ℤ) • P.root j ∈ range P.root := by
      replace hk : P.root i - (w + 1) • P.root j ∈ range P.root := ⟨k, by rw [hk]; module⟩
      rw [neg_smul, ← sub_eq_add_neg, natCast_zsmul]
      simp only [root_sub_nsmul_mem_range_iff_le_chainBotCoeff hij] at hk ⊢
      lia
    replace hk : P.root k = P.root l - P.root j := by rw [hk, hl]; module
    exact (hw hi hl hij).sub hj hk

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant67c7cc27d56673c1078cf6aaff141548a8091c9ec1d97c97bb3a73a0dbe1642f.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `457696b067384e7226aa4439d9e82f3e848249f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
