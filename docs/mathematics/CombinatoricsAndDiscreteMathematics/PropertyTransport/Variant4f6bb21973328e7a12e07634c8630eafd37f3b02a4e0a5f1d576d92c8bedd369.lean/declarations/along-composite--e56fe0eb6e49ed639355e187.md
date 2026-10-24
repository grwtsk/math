# along_composite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bdc02dc0-6489-c530-1a06-f0e69c79b326",
  "kind": "theorem",
  "lexical_name": "along_composite",
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
  "slug": "along-composite--e56fe0eb6e49ed639355e187",
  "source": {
    "blob": "5db49e5aa7bdd14dbad268b73fad1ee8338997b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e56fe0eb6e49ed639355e187569d7ebc6eb59f872dea65f88ccaf407449aabc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc02dc0-6489-c530-1a06-f0e69c79b326`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem along_composite
    (witness : PropertyNaturality action property)
    {source middle target : Base}
    (first : action.Path source middle)
    (second : action.Path middle target)
    (value : Fiber source)
    (holds : property.Holds source value) :
    property.Holds target
      (action.map (action.comp first second) value) := by
  rw [action.map_composite]
  exact witness.natural second _
    (witness.natural first value holds)

end PropertyNaturality

/--
One property admitted along one path, inseparably paired with its naturality
witness.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PropertyTransport/Variant4f6bb21973328e7a12e07634c8630eafd37f3b02a4e0a5f1d576d92c8bedd369.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db49e5aa7bdd14dbad268b73fad1ee8338997b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
