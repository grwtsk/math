# Pregroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bd80809f6be6ac93db9eacdbff762f9c497d35149535340703569269065420b",
  "kind": "structure",
  "lexical_name": "Pregroupoid",
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
  "slug": "pregroupoid--31c178dbd66241a63d12971f",
  "source": {
    "blob": "91624ebdd0ed1f3a60f24e3887b77235ae23ecb9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 303,
    "path": "GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:31c178dbd66241a63d12971f9087ace6f642318e3a8cd88cb94a43575df148a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bd80809f6be6ac93db9eacdbff762f9c497d35149535340703569269065420b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Pregroupoid (H : Type*) [TopologicalSpace H] where
  property : (H → H) → Set H → Prop
  comp : ∀ {f g u v}, property f u → property g v →
    IsOpen u → IsOpen v → IsOpen (u ∩ f ⁻¹' v) → property (g ∘ f) (u ∩ f ⁻¹' v)
  id_mem : property id univ
  locality :
    ∀ {f u}, IsOpen u → (∀ x ∈ u, ∃ v, IsOpen v ∧ x ∈ v ∧ property f (u ∩ v)) → property f u
  congr : ∀ {f g : H → H} {u}, IsOpen u → (∀ x ∈ u, g x = f x) → property f u → property g u
#align pregroupoid Pregroupoid

/-- Construct a groupoid of local homeos for which the map and its inverse have some property,
from a pregroupoid asserting that this property is stable under composition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ChartedSpace/Variant2aecaca3b06b8468adda648ff3db269129ba9a2ea0337550aacced27194dfc69.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91624ebdd0ed1f3a60f24e3887b77235ae23ecb9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
