# pushoutComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d47c2c3f597c94e09f3826c5c58503ba8183edebfe49ea677e01d5dce4636359",
  "kind": "def",
  "lexical_name": "pushoutComparison",
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
  "slug": "pushoutcomparison--880c247c455b47a2913724c4",
  "source": {
    "blob": "101ad5ee0c7e241ca9a98f515f7e9851d49a0218",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 418,
    "line": 413,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant911d60c5d4b5ebaf3be33991f097e5591ec40a036389d26fa4c0d4ff7b73408c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:880c247c455b47a2913724c4e171bca4a1fe0c417b5725a4cc699a1fdb6e66f1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant911d60c5d4b5ebaf3be33991f097e5591ec40a036389d26fa4c0d4ff7b73408c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d47c2c3f597c94e09f3826c5c58503ba8183edebfe49ea677e01d5dce4636359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–418.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pushoutComparison (f : X ⟶ Y) (g : X ⟶ Z) [HasPushout f g] [HasPushout (G.map f) (G.map g)] :
    pushout (G.map f) (G.map g) ⟶ G.obj (pushout f g) :=
  pushout.desc (G.map (pushout.inl _ _)) (G.map (pushout.inr _ _))
    (by simp only [← G.map_comp, pushout.condition])

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant911d60c5d4b5ebaf3be33991f097e5591ec40a036389d26fa4c0d4ff7b73408c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasPullback/Variant911d60c5d4b5ebaf3be33991f097e5591ec40a036389d26fa4c0d4ff7b73408c.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `101ad5ee0c7e241ca9a98f515f7e9851d49a0218` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
