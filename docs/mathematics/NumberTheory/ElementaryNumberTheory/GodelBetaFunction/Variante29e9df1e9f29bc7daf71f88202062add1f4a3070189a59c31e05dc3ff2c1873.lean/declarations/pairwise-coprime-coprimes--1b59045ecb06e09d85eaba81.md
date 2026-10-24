# pairwise_coprime_coprimes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0177cb022ba8235fe6d750656d2ccb345490efdf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8169780f-220a-38fd-4748-a9b6741da149",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ddb1a5d-4629-693a-2903-aabbf622228e",
  "kind": "lemma",
  "lexical_name": "pairwise_coprime_coprimes",
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
  "slug": "pairwise-coprime-coprimes--1b59045ecb06e09d85eaba81",
  "source": {
    "blob": "0177cb022ba8235fe6d750656d2ccb345490efdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 79,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b59045ecb06e09d85eaba814b6ab60b1f685ffb33b12f943f1d7d94b4616916",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ddb1a5d-4629-693a-2903-aabbf622228e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma pairwise_coprime_coprimes (a : Fin m → ℕ) : Pairwise (Coprime on coprimes a) := by
  intro i j hij
  wlog! ltij : i < j
  · exact (this a hij.symm (lt_of_le_of_ne ltij hij.symm)).symm
  unfold Function.onFun coprimes
  have hja : j < supOfSeq a := lt_of_lt_of_le j.prop (le_succ_of_le (le_max_left _ _))
  exact coprime_mul_succ
    (Nat.dvd_factorial (by lia)
      (by simpa only [Nat.succ_sub_succ] using le_of_lt (lt_of_le_of_lt (sub_le j i) hja)))

/-- Gödel's Beta Function. This is similar to `(Encodable.decodeList)[i]`, but it is easier to
prove that it is arithmetically definable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/GodelBetaFunction/Variante29e9df1e9f29bc7daf71f88202062add1f4a3070189a59c31e05dc3ff2c1873.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0177cb022ba8235fe6d750656d2ccb345490efdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
