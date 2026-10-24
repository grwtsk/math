# four_dvd_add_or_sub_of_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "614bf06763c7efc0c6254147c454710a62442e4f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:17a5139e-4604-6ebc-b59a-87d7ea7eb933",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0abf59f0-7b67-0431-5ad1-f8a745454519",
  "kind": "lemma",
  "lexical_name": "four_dvd_add_or_sub_of_odd",
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
  "slug": "four-dvd-add-or-sub-of-odd--a4066fd3f26c5bffedb69be9",
  "source": {
    "blob": "614bf06763c7efc0c6254147c454710a62442e4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 99,
    "path": "GRWTSK/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4066fd3f26c5bffedb69be9e77695ac1fc9f31af8f89d488c52a4d522de3044",
  "verification": {
    "reference": "docs/verification/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0abf59f0-7b67-0431-5ad1-f8a745454519`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma four_dvd_add_or_sub_of_odd {a b : ℤ} (ha : Odd a) (hb : Odd b) :
    4 ∣ a + b ∨ 4 ∣ a - b := by grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Parity/Variantf165d078f71a15d5bff2f12549180e3c94ff4999f8b28034bc1129ba4f06d1bf.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `614bf06763c7efc0c6254147c454710a62442e4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
