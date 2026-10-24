# hittingAfter_le_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b33fdae3-3e33-500a-be96-a2e32dcded6a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cb7f784-fe2d-54b1-3486-ae9a878333d6",
  "kind": "lemma",
  "lexical_name": "hittingAfter_le_of_mem",
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
  "slug": "hittingafter-le-of-mem--f03c5f60bac6eb04531fa9b4",
  "source": {
    "blob": "dfe6c576b7e3b62fbec41ee5f773b8315602c982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 217,
    "path": "GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f03c5f60bac6eb04531fa9b49a9cd30a8b0415bffe3534f10a0b11edb67c53ec",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cb7f784-fe2d-54b1-3486-ae9a878333d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hittingAfter_le_of_mem (hin : n ≤ i) (his : u i ω ∈ s) :
    hittingAfter u s n ω ≤ i := by
  have h_exists : ∃ k, n ≤ k ∧ u k ω ∈ s := ⟨i, hin, his⟩
  rw [hittingAfter, ite_eq_left h_exists]
  exact_mod_cast csInf_le (BddBelow.inter_of_left bddBelow_Ici) (Set.mem_inter hin his)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HittingTime/Variantad8d5e15b2639e7e35a8355c3acdec7161a90dbf4573b8623d7e4b7e2220bdea.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfe6c576b7e3b62fbec41ee5f773b8315602c982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
