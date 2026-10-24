# not_prime_of_int_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f07550e7-0493-d865-b454-a59c22654d03",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae59a300-83f2-090d-09aa-10e73cc099f6",
  "kind": "theorem",
  "lexical_name": "not_prime_of_int_mul",
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
  "slug": "not-prime-of-int-mul--0e0b0235faea34fba086730a",
  "source": {
    "blob": "0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 22,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e0b0235faea34fba086730ae9a665318d4069b692e24dc8a4a03d1e0d21545e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae59a300-83f2-090d-09aa-10e73cc099f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–22.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem not_prime_of_int_mul {a b : ℤ} {c : ℕ} (ha : a.natAbs ≠ 1) (hb : b.natAbs ≠ 1)
    (hc : a * b = (c : ℤ)) : ¬Nat.Prime c :=
  not_prime_mul' (natAbs_mul_natAbs_eq hc) ha hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
