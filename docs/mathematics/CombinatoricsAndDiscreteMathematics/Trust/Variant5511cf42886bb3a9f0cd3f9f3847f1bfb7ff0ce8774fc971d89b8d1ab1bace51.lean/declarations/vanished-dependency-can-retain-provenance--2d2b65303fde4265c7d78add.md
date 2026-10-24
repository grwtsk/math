# vanished_dependency_can_retain_provenance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ed7036abf383125bdefb8bd323a5cc7b384d22e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/55/5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35208459-335b-85ab-d107-56fd0cd9d850",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea02f8ec-257f-efb2-44d1-7d413defa2d5",
  "kind": "theorem",
  "lexical_name": "vanished_dependency_can_retain_provenance",
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
  "slug": "vanished-dependency-can-retain-provenance--2d2b65303fde4265c7d78add",
  "source": {
    "blob": "2ed7036abf383125bdefb8bd323a5cc7b384d22e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d2b65303fde4265c7d78addbed5720238ae128c09eaabdb84db231447d5d0d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea02f8ec-257f-efb2-44d1-7d413defa2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vanished_dependency_can_retain_provenance (source : String) :
    ∃ (dependencies : DependencySet) (provenance : ProvenanceSet),
      dependencies = ∅ ∧ source ∈ provenance :=
  ⟨∅, {source}, rfl, Finset.mem_singleton_self source⟩

/-- Four phases name strategy control states only. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Trust/Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ed7036abf383125bdefb8bd323a5cc7b384d22e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
