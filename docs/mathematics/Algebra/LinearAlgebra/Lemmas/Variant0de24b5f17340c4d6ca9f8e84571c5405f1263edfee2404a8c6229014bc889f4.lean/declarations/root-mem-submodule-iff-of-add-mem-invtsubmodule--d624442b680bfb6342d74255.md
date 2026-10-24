# root_mem_submodule_iff_of_add_mem_invtSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d42e7f9-67c5-57f9-b85f-df2aff760c08",
  "kind": "lemma",
  "lexical_name": "root_mem_submodule_iff_of_add_mem_invtSubmodule",
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
  "slug": "root-mem-submodule-iff-of-add-mem-invtsubmodule--d624442b680bfb6342d74255",
  "source": {
    "blob": "03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 247,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d624442b680bfb6342d7425586701e4a7c62b335202e712589ccd247620050ff",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d42e7f9-67c5-57f9-b85f-df2aff760c08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma root_mem_submodule_iff_of_add_mem_invtSubmodule
    {K : Type*} [Field K] [NeZero (2 : K)] [Module K M] [Module K N] {P : RootPairing ι K M N}
    (q : P.invtRootSubmodule)
    (hij : P.root i + P.root j ∈ range P.root) :
    P.root i ∈ (q : Submodule K M) ↔ P.root j ∈ (q : Submodule K M) := by
  obtain ⟨q, hq⟩ := q
  rw [mem_invtRootSubmodule_iff] at hq
  suffices ∀ i j, P.root i + P.root j ∈ range P.root → P.root i ∈ q → P.root j ∈ q by
    have aux := this j i (by rwa [add_comm]); tauto
  rintro i j ⟨k, hk⟩ hi
  rcases eq_or_ne (P.pairing i j) 0 with hij₀ | hij₀
  · have hik : P.pairing i k ≠ 0 := by
      rw [ne_eq, P.pairing_eq_zero_iff, ← root_coroot_eq_pairing, hk]
      simpa [P.pairing_eq_zero_iff.mp hij₀] using two_ne_zero
    suffices P.root k ∈ q from (q.add_mem_iff_right hi).mp <| hk ▸ this
    replace hq : P.root i - P.pairing i k • P.root k ∈ q := by
      simpa [reflection_apply_root] using hq k hi
    rwa [q.sub_mem_iff_right hi, q.smul_mem_iff hik] at hq
  · replace hq : P.root i - P.pairing i j • P.root j ∈ q := by
      simpa [reflection_apply_root] using hq j hi
    rwa [q.sub_mem_iff_right hi, q.smul_mem_iff hij₀] at hq

namespace InvariantForm

variable [P.IsReduced] (B : P.InvariantForm)
variable {P}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant0de24b5f17340c4d6ca9f8e84571c5405f1263edfee2404a8c6229014bc889f4.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03cc9919c5d0b6a1399bc7b5d07dfb88dcc0d662` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
