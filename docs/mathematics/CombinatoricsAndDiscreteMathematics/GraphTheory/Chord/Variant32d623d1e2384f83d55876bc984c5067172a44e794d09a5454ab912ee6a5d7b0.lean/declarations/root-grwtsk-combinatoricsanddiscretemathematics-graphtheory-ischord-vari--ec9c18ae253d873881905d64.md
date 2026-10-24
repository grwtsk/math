# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0.SimpleGraph.Adj.isChordless_toWalk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6389deeb-292e-4bb8-3195-509a36bb0738",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0.SimpleGraph.Adj.isChordless_toWalk",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-ischord-vari--ec9c18ae253d873881905d64",
  "source": {
    "blob": "9dc079f4a51c9dadd94fb1eff6c185813575619d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 65,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec9c18ae253d873881905d645ea55dee1e4431ed6bad930b3be7b0562407ec2c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6389deeb-292e-4bb8-3195-509a36bb0738`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.IsChord.Variante90ffddb0d4c6eb486cc469f8e4df07b51baeeb6b67cf56ca05c04853577ecb0.SimpleGraph.Adj.isChordless_toWalk (h : G.Adj u v) : h.toWalk.IsChordless := by
  grind [isChordless_iff_forall_mem_edges, h.support_toWalk, h.edges_toWalk]

end Walk
end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Chord/Variant32d623d1e2384f83d55876bc984c5067172a44e794d09a5454ab912ee6a5d7b0.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc079f4a51c9dadd94fb1eff6c185813575619d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
