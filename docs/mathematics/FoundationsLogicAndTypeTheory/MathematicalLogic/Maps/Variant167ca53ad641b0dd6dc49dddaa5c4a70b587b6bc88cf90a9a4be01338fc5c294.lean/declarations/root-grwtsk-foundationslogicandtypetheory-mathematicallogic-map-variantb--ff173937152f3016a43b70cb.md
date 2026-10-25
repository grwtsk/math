# _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Map.Variantb9da8c9d09758245877479018d791428580d24683842677319957dd51f702ed7.Equiv.symm_simpleGraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:004d508a-912f-182c-30e9-a643a84a488c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Map.Variantb9da8c9d09758245877479018d791428580d24683842677319957dd51f702ed7.Equiv.symm_simpleGraph",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-mathematicallogic-map-variantb--ff173937152f3016a43b70cb",
  "source": {
    "blob": "afc84f0d5600119a69d6b5601c0b3ea3fe96aa20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 175,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ff173937152f3016a43b70cb8710a18aa6ab5d3b3a28f9473ee0c5f41c748274",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:004d508a-912f-182c-30e9-a643a84a488c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Map.Variantb9da8c9d09758245877479018d791428580d24683842677319957dd51f702ed7.Equiv.symm_simpleGraph (e : V ≃ W) : e.simpleGraph.symm = e.symm.simpleGraph := rfl

/-! ## Induced graphs -/


/- Given a set `s` of vertices, we can restrict a graph to those vertices by restricting its
adjacency relation. This gives a map between `SimpleGraph V` and `SimpleGraph s`.

There is also a notion of induced subgraphs (see `SimpleGraph.subgraph.induce`). -/
/-- Restrict a graph to the vertices in the set `s`, deleting all edges incident to vertices
outside the set. This is a wrapper around `SimpleGraph.comap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Maps/Variant167ca53ad641b0dd6dc49dddaa5c4a70b587b6bc88cf90a9a4be01338fc5c294.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afc84f0d5600119a69d6b5601c0b3ea3fe96aa20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
