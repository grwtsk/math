# Even.zpow_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623dbacf3ebbf7ac2cef730175a637beccd1db86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ef8d872-28e4-00da-c7cf-b6d849169f10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32f8acd3-f28d-f500-5fc2-357e4a03057a",
  "kind": "lemma",
  "lexical_name": "Even.zpow_pos",
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
  "slug": "even-zpow-pos--51c79a4547cfc1be20fd3e26",
  "source": {
    "blob": "623dbacf3ebbf7ac2cef730175a637beccd1db86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 31,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51c79a4547cfc1be20fd3e2668c8098c5541d45cb581688365f46cf0a82f288a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32f8acd3-f28d-f500-5fc2-357e4a03057a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma Even.zpow_pos (hn : Even n) (ha : a ≠ 0) : 0 < a ^ n :=
  (hn.zpow_nonneg _).lt_of_ne' (zpow_ne_zero _ ha)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Power/Variant89b9c4a5ab7765adaf6efcd0a7a8722e3c44591409a1b19eeb4461d07cb0627f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623dbacf3ebbf7ac2cef730175a637beccd1db86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
