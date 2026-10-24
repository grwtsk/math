# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:024799acf72faf9a7d6d7a8b831e825e8717e59921fda245c5fc94b499cd46c5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fca02d7edea5ad0fba21f925",
  "source": {
    "blob": "dd745f38b7578236a3b75376c3acc8cb2d724de2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 63,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fca02d7edea5ad0fba21f925369f64ca39a2af62e2b1b313864a6198824a3094",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:024799acf72faf9a7d6d7a8b831e825e8717e59921fda245c5fc94b499cd46c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) toOrderHomClass  :
    OrderHomClass F α β :=
  { ‹ContinuousOrderHomClass F α β› with
    map_rel := ContinuousOrderHomClass.map_monotone }
#align continuous_order_hom_class.to_continuous_map_class ContinuousOrderHomClass.toContinuousMapClass

-- Porting note: following `OrderHomClass.toOrderHom` design, introduced a wrapper
-- for the original coercion. The original one directly exposed
-- ContinuousOrderHom.mk which allowed simp to apply more eagerly than in all
-- the other results in `Topology.Order.Hom.Esakia`.
/-- Turn an element of a type `F` satisfying `ContinuousOrderHomClass F α β` into an actual
`ContinuousOrderHom`. This is declared as the default coercion from `F` to `α →Co β`. -/
@[coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant4b9cdce52ffe340a9adc3b191ff4715092526f61e365c9ccea1c89b67cd3c226.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd745f38b7578236a3b75376c3acc8cb2d724de2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
