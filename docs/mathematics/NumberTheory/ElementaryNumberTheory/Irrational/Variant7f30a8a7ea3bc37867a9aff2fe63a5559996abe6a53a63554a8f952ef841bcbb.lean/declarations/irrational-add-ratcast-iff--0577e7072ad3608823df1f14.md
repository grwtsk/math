# irrational_add_ratCast_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "283b795b6b818dd0842d7c20e7fd52b4809d3bd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7f/7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdac2154-4613-5884-ff02-bb427d5c7c8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:164532a6-fc85-8a25-11ec-a85d96adc8a8",
  "kind": "theorem",
  "lexical_name": "irrational_add_ratCast_iff",
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
  "slug": "irrational-add-ratcast-iff--0577e7072ad3608823df1f14",
  "source": {
    "blob": "283b795b6b818dd0842d7c20e7fd52b4809d3bd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 449,
    "line": 447,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0577e7072ad3608823df1f1494b39647d265d1876878414174f26bad2a8d2539",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:164532a6-fc85-8a25-11ec-a85d96adc8a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–449.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem irrational_add_ratCast_iff : Irrational (x + q) ↔ Irrational x :=
  ⟨of_add_ratCast q, add_ratCast q⟩
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant7f30a8a7ea3bc37867a9aff2fe63a5559996abe6a53a63554a8f952ef841bcbb.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `283b795b6b818dd0842d7c20e7fd52b4809d3bd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
