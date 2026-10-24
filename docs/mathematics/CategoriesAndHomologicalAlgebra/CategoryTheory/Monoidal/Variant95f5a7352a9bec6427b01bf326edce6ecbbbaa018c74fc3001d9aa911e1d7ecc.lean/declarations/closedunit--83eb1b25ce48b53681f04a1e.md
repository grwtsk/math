# closedUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c587c885dc837dd53aa7455acfe95df89de11887371ac1bb83ecc2fe6731189b",
  "kind": "def",
  "lexical_name": "closedUnit",
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
  "slug": "closedunit--83eb1b25ce48b53681f04a1e",
  "source": {
    "blob": "e36d052bd1cbfad34578759e08c9990fde75d6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 152,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83eb1b25ce48b53681f04a1e103e7adc369cbc6aa23287f3d239e8f458a5f0a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c587c885dc837dd53aa7455acfe95df89de11887371ac1bb83ecc2fe6731189b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closedUnit (X : ∀ i, C i) : 𝟭 (∀ i, C i) ⟶ tensorLeft X ⋙ ihom X where
  app Y := fun i ↦ (ihom.coev (X i)).app (Y i)

set_option backward.isDefEq.respectTransparency false in
/-- The counit for the adjunction `tensorLeft X ⊣ ihom X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant95f5a7352a9bec6427b01bf326edce6ecbbbaa018c74fc3001d9aa911e1d7ecc.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e36d052bd1cbfad34578759e08c9990fde75d6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
