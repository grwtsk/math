# disjoint_ramifiedPlacesOver_unramifiedPlacesOver

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
      "line": 694,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4159487-69f7-4c74-b8d1-1b8dd9484cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3164450b-164c-4ab7-b825-cb327b764341",
  "kind": "theorem",
  "lexical_name": "disjoint_ramifiedPlacesOver_unramifiedPlacesOver",
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
  "slug": "disjoint-ramifiedplacesover-unramifiedplacesover--3234aa76b7ccbed3c18899bd",
  "source": {
    "blob": "9c5ca9ef1e7000734a0476bf9c72d730a0f80e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 697,
    "line": 694,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3234aa76b7ccbed3c18899bd0799d637f8447df56641116552ceb95eef28f042",
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

Occurrence: `result:3164450b-164c-4ab7-b825-cb327b764341`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–697.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem disjoint_ramifiedPlacesOver_unramifiedPlacesOver :
    Disjoint (ramifiedPlacesOver L v) (unramifiedPlacesOver L v) := by
  grind [ramifiedPlacesOver, unramifiedPlacesOver]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Ramification/Variant74bb414aeace7294191f2a8b804bc6849f12de9d07f463c9a09a9bbc85696ce6.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5ca9ef1e7000734a0476bf9c72d730a0f80e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
