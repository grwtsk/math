# HomeomorphClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70e9d477c961550e9b90c48895e258f4761567b66ccf1f8602409924488ccaae",
  "kind": "class",
  "lexical_name": "HomeomorphClass",
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
  "slug": "homeomorphclass--80ce88985f9ac0a1b1d415f6",
  "source": {
    "blob": "493b234c94c467b6fa363b6b73f82b359856cb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 425,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80ce88985f9ac0a1b1d415f6b5efd3012fba2f8c06f1852d36a1a731f48ea11a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70e9d477c961550e9b90c48895e258f4761567b66ccf1f8602409924488ccaae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 425–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HomeomorphClass (F : Type*) (A B : outParam Type*)
    [TopologicalSpace A] [TopologicalSpace B] [h : EquivLike F A B] : Prop where
  map_continuous : ∀ (f : F), Continuous f
  inv_continuous : ∀ (f : F), Continuous (h.inv f)

namespace HomeomorphClass

variable {F α β : Type*} [TopologicalSpace α] [TopologicalSpace β] [EquivLike F α β]

/-- Turn an element of a type `F` satisfying `HomeomorphClass F α β` into an actual
`Homeomorph`. This is declared as the default coercion from `F` to `α ≃ₜ β`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean#L425).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493b234c94c467b6fa363b6b73f82b359856cb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
