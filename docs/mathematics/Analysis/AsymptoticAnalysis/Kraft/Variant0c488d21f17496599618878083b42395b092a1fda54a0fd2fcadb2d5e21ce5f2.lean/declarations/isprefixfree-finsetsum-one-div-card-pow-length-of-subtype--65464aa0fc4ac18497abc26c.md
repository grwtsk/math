# IsPrefixFree.finsetSum_one_div_card_pow_length_of_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad578b713f47d8794466888710f89c34af6e8346",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79fbb7db-07ad-f096-d7dd-19662f3d7bdd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:838f008e-ae0e-f998-c2c1-4181bb86c0fc",
  "kind": "lemma",
  "lexical_name": "IsPrefixFree.finsetSum_one_div_card_pow_length_of_subtype",
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
  "slug": "isprefixfree-finsetsum-one-div-card-pow-length-of-subtype--65464aa0fc4ac18497abc26c",
  "source": {
    "blob": "ad578b713f47d8794466888710f89c34af6e8346",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 52,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Kraft/Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65464aa0fc4ac18497abc26ce9da8721d5b3d57b80b944cde175018de51e7b0c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Kraft/Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838f008e-ae0e-f998-c2c1-4181bb86c0fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma IsPrefixFree.finsetSum_one_div_card_pow_length_of_subtype
    {S : Set (List α)} (hS : IsPrefixFree S) (F : Finset S) :
    ∑ w ∈ F, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length ≤ 1 := by
  classical
  let T : Finset (List α) := F.image Subtype.val
  have hTS : (T : Set (List α)) ⊆ S := by grind
  calc
    ∑ w ∈ F, (1 / (Fintype.card α : ℝ)) ^ (w : List α).length =
        ∑ w ∈ T, (1 / (Fintype.card α : ℝ)) ^ w.length := by simp [T]
    _ ≤ 1 := (hS.anti hTS).finsetSum_one_div_card_pow_length_le_one

/-- The Kraft sum of an arbitrary prefix-free code is summable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Kraft/Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Kraft/Variant0c488d21f17496599618878083b42395b092a1fda54a0fd2fcadb2d5e21ce5f2.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad578b713f47d8794466888710f89c34af6e8346` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
