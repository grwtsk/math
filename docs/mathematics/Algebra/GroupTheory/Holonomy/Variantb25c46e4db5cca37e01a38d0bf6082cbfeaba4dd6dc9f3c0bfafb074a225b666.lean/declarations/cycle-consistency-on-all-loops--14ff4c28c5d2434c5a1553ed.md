# cycle_consistency_on_all_loops

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cf4aba662aa1eb5b572b2c55d5e58ec3cdd44fb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b2/b25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79efaf64-f212-117e-1592-480b2ac1c7b2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce2e100f-54c7-b7dd-f848-2b8b13355822",
  "kind": "theorem",
  "lexical_name": "cycle_consistency_on_all_loops",
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
  "slug": "cycle-consistency-on-all-loops--14ff4c28c5d2434c5a1553ed",
  "source": {
    "blob": "cf4aba662aa1eb5b572b2c55d5e58ec3cdd44fb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 27,
    "path": "GRWTSK/Algebra/GroupTheory/Holonomy/Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14ff4c28c5d2434c5a1553ed2292a773d0e512da205aef0f05f8f04ecd607cff",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Holonomy/Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce2e100f-54c7-b7dd-f848-2b8b13355822`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycle_consistency_on_all_loops
    {Loop : Type u} {Generator : Type w} {Object : Type v}
    [Group Loop]
    {holonomy : Loop →* Equiv.Perm Object}
    {generators : LoopGeneratingSet Loop Generator}
    {object : Object}
    (certificate :
      CycleConsistencyCertificate holonomy generators object) :
    ∀ loop, holonomy loop object = object :=
  certificate.allLoops

end Mathematics.MobiusOntology
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Holonomy/Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Holonomy/Variantb25c46e4db5cca37e01a38d0bf6082cbfeaba4dd6dc9f3c0bfafb074a225b666.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4aba662aa1eb5b572b2c55d5e58ec3cdd44fb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
