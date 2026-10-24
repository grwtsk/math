# Finset.squarefree_prod_of_pairwise_isCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 238,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1f9db5c3-a938-dcd1-29e3-de1981e75cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63e745f3-417f-217a-1d21-fd4ed0cad0bf",
  "kind": "theorem",
  "lexical_name": "Finset.squarefree_prod_of_pairwise_isCoprime",
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
  "slug": "finset-squarefree-prod-of-pairwise-iscoprime--0d8b64c1c67bc2dfede1c813",
  "source": {
    "blob": "d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 238,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d8b64c1c67bc2dfede1c813308d190d31afe77fca316c1a982426527304f4f7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63e745f3-417f-217a-1d21-fd4ed0cad0bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.squarefree_prod_of_pairwise_isCoprime {ι : Type*} {s : Finset ι}
    {f : ι → R} (hs : Set.Pairwise s (IsRelPrime on f)) (hs' : ∀ i ∈ s, Squarefree (f i)) :
    Squarefree (∏ i ∈ s, f i) := by
  induction s using Finset.cons_induction with
  | empty => simp
  | cons a s ha ih =>
    rw [Finset.prod_cons, squarefree_mul_iff]
    rw [Finset.coe_cons, Set.pairwise_insert] at hs
    refine ⟨.prod_right fun i hi ↦ ?_, hs' a (by simp), ?_⟩
    · exact (hs.right i (by simp [hi]) fun h ↦ ha (h ▸ hi)).left
    · exact ih hs.left fun i hi ↦ hs' i <| Finset.mem_cons_of_mem hi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
