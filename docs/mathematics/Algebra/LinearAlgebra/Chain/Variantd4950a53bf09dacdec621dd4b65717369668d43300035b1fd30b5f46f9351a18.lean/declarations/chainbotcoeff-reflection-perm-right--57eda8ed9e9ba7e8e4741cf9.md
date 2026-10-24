# chainBotCoeff_reflection_perm_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 249,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85f01227-81a0-5138-e16e-5f77496cf828",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8fea649c-76cc-ed62-6b29-2654867a1b58",
  "kind": "lemma",
  "lexical_name": "chainBotCoeff_reflection_perm_right",
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
  "slug": "chainbotcoeff-reflection-perm-right--57eda8ed9e9ba7e8e4741cf9",
  "source": {
    "blob": "59ee2edeade04c28abb7620e5857f6fda667c14b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 249,
    "path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57eda8ed9e9ba7e8e4741cf98cd3a98009ab8fb71ab5855d3555408826a11b90",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fea649c-76cc-ed62-6b29-2654867a1b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma chainBotCoeff_reflection_perm_right :
    P.chainBotCoeff i (P.reflection_perm j j) = P.chainTopCoeff i j := by
  letI := P.indexNeg
  have (z : ℤ) : z ∈ Icc (-P.chainTopCoeff i j : ℤ) (P.chainBotCoeff i j) ↔
      z ∈ Icc (-P.chainBotCoeff i (-j) : ℤ) (P.chainTopCoeff i (-j)) := by
    rw [P.chainCoeff_reflection_perm_right_aux]
  refine le_antisymm ?_ ?_
  · simpa using this (-P.chainBotCoeff i (-j))
  · simpa using this (-P.chainTopCoeff i j)

variable (i j)

open scoped Classical in
/-- If `α = P.root i` and `β = P.root j` are linearly independent, this is the index of the root
`β + p • α` where `β - q • α, ..., β - α, β, β + α, ..., β + p • α` is the `α`-chain through `β`.

In the absence of linear independence, it takes a junk value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Chain/Variantd4950a53bf09dacdec621dd4b65717369668d43300035b1fd30b5f46f9351a18.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59ee2edeade04c28abb7620e5857f6fda667c14b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
