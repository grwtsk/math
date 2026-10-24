# IsPos.add_zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f60983e-a184-ff58-f85d-7b961decdc24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9cee900a-aaa3-889f-75e8-69973ce8459c",
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
  "slug": "ispos-add-zsmul--2651ee18d46b5ea9beab2690",
  "source": {
    "blob": "77e95b084476d1b16dd82d35a3bed2517c25b1a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 639,
    "line": 613,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2651ee18d46b5ea9beab26902c12e3d251ce71a21a092c7fba11b9492d528aad",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9cee900a-aaa3-889f-75e8-69973ce8459c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–639.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant496902733973c72b49a1fe75cb6b995a4d6a181951dd09c4c597a4c039471292.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77e95b084476d1b16dd82d35a3bed2517c25b1a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
