# doubleCounterReaction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8784c4fc2fb56755d91ebc203150e43576e30a26fa9d16445a440ce60c984cc",
  "kind": "def",
  "lexical_name": "doubleCounterReaction",
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
  "slug": "doublecounterreaction--979dddbfb1a4610c85dd24f4",
  "source": {
    "blob": "c005d71392b400f0cc8f3bdc9775bbd8a4ec2a0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:979dddbfb1a4610c85dd24f4f4449dea1d0ba13472f8a3ebeda0e415495849dd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8784c4fc2fb56755d91ebc203150e43576e30a26fa9d16445a440ce60c984cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def doubleCounterReaction : Reaction counterFabric counterFabric where
  shapeMap := 𝟙 counterFabric.shape
  mapCell := fun x => x
  mapCell_eq := by intros; rfl
  mapCell_natural := by intros; rfl
  cellMap := fun _ => doubleCounter
  contract_natural := by
    intros
    apply Presentation.Hom.ext <;> rfl

/-- Cell reactions preserve complete finite input traces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FabricRuntimeTests/Variant3f35813331e27ca96ef9f9d2153f6506441dc715951aa0944d0728f8f7258711.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c005d71392b400f0cc8f3bdc9775bbd8a4ec2a0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
