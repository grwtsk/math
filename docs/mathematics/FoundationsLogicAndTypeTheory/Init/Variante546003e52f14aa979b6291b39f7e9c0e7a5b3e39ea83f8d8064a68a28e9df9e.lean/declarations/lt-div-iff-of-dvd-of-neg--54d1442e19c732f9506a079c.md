# lt_div_iff_of_dvd_of_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb55fc31647617a5556331fdc54dcbae5facd9a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 242,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8426c668-b8d9-873e-619d-633643b981b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a8f241cc-1556-e698-de71-94fb7f52a9c1",
  "kind": "lemma",
  "lexical_name": "lt_div_iff_of_dvd_of_neg",
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
  "slug": "lt-div-iff-of-dvd-of-neg--54d1442e19c732f9506a079c",
  "source": {
    "blob": "fb55fc31647617a5556331fdc54dcbae5facd9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54d1442e19c732f9506a079cbf1af9751ea2ff8248e89c9634259aeb926e9c4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8f241cc-1556-e698-de71-94fb7f52a9c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lt_div_iff_of_dvd_of_neg (hc : c < 0) (hcb : c ∣ b) : a < b / c ↔ b < c * a :=
  lt_ediv_iff_of_dvd_of_neg hc hcb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Init/Variante546003e52f14aa979b6291b39f7e9c0e7a5b3e39ea83f8d8064a68a28e9df9e.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb55fc31647617a5556331fdc54dcbae5facd9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
