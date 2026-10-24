# MorphismProperty.topologically

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb2d80b42ef5278615db68a1c38d8cc6ccac8318afceb859914026f11c3742d9",
  "kind": "def",
  "lexical_name": "MorphismProperty.topologically",
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
  "slug": "morphismproperty-topologically--f65d6cdbfcefddd50e73666e",
  "source": {
    "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 642,
    "line": 637,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f65d6cdbfcefddd50e73666e1549d337c96c2d52a627d71591a043dbfecbcec5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb2d80b42ef5278615db68a1c38d8cc6ccac8318afceb859914026f11c3742d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MorphismProperty.topologically
    (P : ∀ {α β : Type u} [TopologicalSpace α] [TopologicalSpace β] (_ : α → β), Prop) :
    MorphismProperty Scheme.{u} := fun _ _ f => P f.1.base
#align algebraic_geometry.morphism_property.topologically AlgebraicGeometry.MorphismProperty.topologically

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
