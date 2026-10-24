# unramifiedPlacesOver_ncard

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c5ca9ef1e7000734a0476bf9c72d730a0f80e15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 762,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7abc3079-b532-293e-e615-e428b875851b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d2ff9abb-5a40-b271-3133-6dce2d309a53",
  "kind": "theorem",
  "lexical_name": "unramifiedPlacesOver_ncard",
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
  "slug": "unramifiedplacesover-ncard--8ccd962a5c3243ae595227f2",
  "source": {
    "blob": "9c5ca9ef1e7000734a0476bf9c72d730a0f80e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 768,
    "line": 762,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ccd962a5c3243ae595227f29a53cab4b679129df2049791b4f317d732094e24",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2ff9abb-5a40-b271-3133-6dce2d309a53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–768.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unramifiedPlacesOver_ncard :
    (unramifiedPlacesOver L v).ncard = (unmixedEmbeddingsOver L v.embedding).ncard := by
  rw [(bijOn_extensionIte L v).ncard_eq]

open Finset in
/-- The degree of `L` over `K` is equal to the number of unramified places over `v` plus twice the
number of ramified places over `v`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5ca9ef1e7000734a0476bf9c72d730a0f80e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
