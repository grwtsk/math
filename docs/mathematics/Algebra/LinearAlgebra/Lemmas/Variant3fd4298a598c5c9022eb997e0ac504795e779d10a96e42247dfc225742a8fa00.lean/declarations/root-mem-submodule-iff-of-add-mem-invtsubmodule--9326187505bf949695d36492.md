# root_mem_submodule_iff_of_add_mem_invtSubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce66b9b5-95e6-9552-9579-09a754921b96",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b68e2f43-31f8-fb7c-c129-692343d80cc3",
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
  "slug": "root-mem-submodule-iff-of-add-mem-invtsubmodule--9326187505bf949695d36492",
  "source": {
    "blob": "5a436583ef69ee61f87fc7e9c264c8eec5d88e12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 239,
    "path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9326187505bf949695d36492e16c29c6d8fe1e81818c4bf9d0ee1ee2395c9795",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b68e2f43-31f8-fb7c-c129-692343d80cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–265.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant3fd4298a598c5c9022eb997e0ac504795e779d10a96e42247dfc225742a8fa00.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a436583ef69ee61f87fc7e9c264c8eec5d88e12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
