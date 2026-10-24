# self_div_pow_eq_ofDigits_drop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 516,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dc/dc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:baa6df28-0d74-ebf0-6ed3-1ca803ba2553",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f76f9f61-c313-eddc-4602-b7291f08ebc6",
  "kind": "lemma",
  "lexical_name": "self_div_pow_eq_ofDigits_drop",
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
  "slug": "self-div-pow-eq-ofdigits-drop--9de8dd5572aacb826ec9f5ef",
  "source": {
    "blob": "7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 523,
    "line": 516,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de8dd5572aacb826ec9f5ef8bef412eac5648675a656e582afebf9f4fe0b2f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f76f9f61-c313-eddc-4602-b7291f08ebc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 516–523.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma self_div_pow_eq_ofDigits_drop (i n : ℕ) (h : 2 ≤ p):
    n / p ^ i = ofDigits p ((p.digits n).drop i) := by
  convert ofDigits_div_pow_eq_ofDigits_drop i (zero_lt_of_lt h) (p.digits n)
    (fun l hl ↦ digits_lt_base h hl)
  exact (ofDigits_digits p n).symm

open BigOperators Finset

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Digits/Variantdc51c97cfe378aee36ba9584e771536a940be92e2dbdeca7dca2302c5762bffc.lean#L516).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7be8bf0c13c8bdf0c790bb2a1eab4bf051a58de9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
