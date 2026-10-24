# truncLE'Map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c10076b1-f94e-8426-3dc4-4b1f28065c30",
  "kind": "lemma",
  "lexical_name": "truncLE'Map_comp",
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
  "slug": "truncle-map-comp--86cd276d8a8f772590d89b05",
  "source": {
    "blob": "a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:86cd276d8a8f772590d89b0521d507cf34745924c793e4aea2dc23a19b90df35",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c10076b1-f94e-8426-3dc4-4b1f28065c30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma truncLE'Map_comp : truncLE'Map (φ ≫ φ') e = truncLE'Map φ e ≫ truncLE'Map φ' e :=
  (unopFunctor C c.symm).congr_map (congr_arg Quiver.Hom.op
    (truncGE'Map_comp ((opFunctor C c').map φ'.op) ((opFunctor C c').map φ.op) e.op))

variable [HasZeroObject C]

/-- The morphism `K.truncLE e ⟶ L.truncLE e` induced by a morphism `K ⟶ L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TruncLE/Varianteab6619dafe69b6707e1f94616c6053030ed5850ac8e986735737a3eb694ed0c.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a40534ddb6eb1c3f6127ed17f0cbe0accc275eb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
