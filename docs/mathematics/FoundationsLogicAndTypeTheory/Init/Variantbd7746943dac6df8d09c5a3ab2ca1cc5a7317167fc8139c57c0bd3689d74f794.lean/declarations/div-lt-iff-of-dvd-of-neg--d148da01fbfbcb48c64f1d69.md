# div_lt_iff_of_dvd_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 209,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a359f8ee-8a9d-1897-2222-8ba203182c10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c9e0485-132b-7d48-db4d-a94a02bace12",
  "kind": "lemma",
  "lexical_name": "div_lt_iff_of_dvd_of_neg",
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
  "slug": "div-lt-iff-of-dvd-of-neg--d148da01fbfbcb48c64f1d69",
  "source": {
    "blob": "349f86795102c1cae76a6a03901e769fecc18c3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 209,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d148da01fbfbcb48c64f1d69f6eaa0d230b6e56b53b800299670fea83fc9e82c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c9e0485-132b-7d48-db4d-a94a02bace12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 209–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma div_lt_iff_of_dvd_of_neg (hb : b < 0) (hba : b ∣ a) : a / b < c ↔ b * c < a :=
  ediv_lt_iff_of_dvd_of_neg hb hba

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variantbd7746943dac6df8d09c5a3ab2ca1cc5a7317167fc8139c57c0bd3689d74f794.lean#L209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349f86795102c1cae76a6a03901e769fecc18c3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
