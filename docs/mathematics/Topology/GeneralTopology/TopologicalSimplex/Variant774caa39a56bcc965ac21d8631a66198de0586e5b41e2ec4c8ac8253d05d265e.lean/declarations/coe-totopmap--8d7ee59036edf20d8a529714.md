# coe_toTopMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f9504d2119c2c486dd6edfc57b7ea3065a4fe5af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/77/774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99ca4971-52b8-ee01-40d5-95dfbdc25721",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5ebd9cba-62a7-10aa-df09-35db8a6350b2",
  "kind": "theorem",
  "lexical_name": "coe_toTopMap",
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
  "slug": "coe-totopmap--8d7ee59036edf20d8a529714",
  "source": {
    "blob": "f9504d2119c2c486dd6edfc57b7ea3065a4fe5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 90,
    "path": "GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d7ee59036edf20d8a529714ce16a989ed676ff11692df6c572062f2da40c3af",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ebd9cba-62a7-10aa-df09-35db8a6350b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_toTopMap {x y : SimplexCategory} (f : x ⟶ y) (g : x.toTopObj) (i : ToType y) :
    toTopMap f g i = ∑ j ∈ Finset.univ.filter (f · = i), g j :=
  rfl

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/TopologicalSimplex/Variant774caa39a56bcc965ac21d8631a66198de0586e5b41e2ec4c8ac8253d05d265e.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9504d2119c2c486dd6edfc57b7ea3065a4fe5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
