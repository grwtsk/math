# dvd_mul_sub_mul_mul_left_of_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e6d6bd968e49d6ec1a02a8f4bc8121d8310ab1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d9c78f3-5918-bce9-1ff3-81b09921b5be",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b822573-79ec-f89e-7d64-480b1c11b5ad",
  "kind": "lemma",
  "lexical_name": "dvd_mul_sub_mul_mul_left_of_dvd",
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
  "slug": "dvd-mul-sub-mul-mul-left-of-dvd--caad3ffb1b2c8da9586153d9",
  "source": {
    "blob": "4e6d6bd968e49d6ec1a02a8f4bc8121d8310ab1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 99,
    "path": "GRWTSK/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:caad3ffb1b2c8da9586153d9e42d63be57a162eb7758e8bad300bfffed1849f6",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b822573-79ec-f89e-7d64-480b1c11b5ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dvd_mul_sub_mul_mul_left_of_dvd {p a b c d x y : R}
    (h1 : p ∣ a * x + b * y) (h2 : p ∣ c * x + d * y) : p ∣ (a * d - b * c) * x := by
  obtain ⟨k1, hk1⟩ := h1
  obtain ⟨k2, hk2⟩ := h2
  refine ⟨d * k1 - b * k2, ?_⟩
  rw [show (a * d - b * c) * x = a * x * d - c * x * b by ring, eq_sub_of_add_eq hk1,
    eq_sub_of_add_eq hk2]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant8a13ef6a3a49b84569742d7f2e911ff0896c8106a33dfb9625ac7b3196f3df62.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6d6bd968e49d6ec1a02a8f4bc8121d8310ab1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
