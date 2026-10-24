# toGHSpace_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23c8bac0-726a-3357-8891-ce5f81c733f8",
  "kind": "theorem",
  "lexical_name": "toGHSpace_continuous",
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
  "slug": "toghspace-continuous--634d123f6e5eae3134b5ef7e",
  "source": {
    "blob": "4d14b4e4a378ba13143b6a683a028f724e8b75bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 535,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:634d123f6e5eae3134b5ef7e115ab597d8b6af29a83aef3f8031cf7e6a467236",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23c8bac0-726a-3357-8891-ce5f81c733f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 535–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toGHSpace_continuous :
    Continuous (NonemptyCompacts.toGHSpace : NonemptyCompacts X → GHSpace) :=
  toGHSpace_lipschitz.continuous

end NonemptyCompacts

section

/- In this section, we show that if two metric spaces are isometric up to `ε₂`, then their
Gromov-Hausdorff distance is bounded by `ε₂ / 2`. More generally, if there are subsets which are
`ε₁`-dense and `ε₃`-dense in two spaces, and isometric up to `ε₂`, then the Gromov-Hausdorff
distance between the spaces is bounded by `ε₁ + ε₂/2 + ε₃`. For this, we construct a suitable
coupling between the two spaces, by gluing them (approximately) along the two matching subsets. -/
variable {X : Type u} [MetricSpace X] [CompactSpace X] [Nonempty X] {Y : Type v} [MetricSpace Y]
  [CompactSpace Y] [Nonempty Y]

/-- If there are subsets which are `ε₁`-dense and `ε₃`-dense in two spaces, and
isometric up to `ε₂`, then the Gromov-Hausdorff distance between the spaces is bounded by
`ε₁ + ε₂/2 + ε₃`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorff/Variantdd049cdb4fc8103335d0832fc27a78577f265a363ce446977ce40dfd0efa4677.lean#L535).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d14b4e4a378ba13143b6a683a028f724e8b75bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
