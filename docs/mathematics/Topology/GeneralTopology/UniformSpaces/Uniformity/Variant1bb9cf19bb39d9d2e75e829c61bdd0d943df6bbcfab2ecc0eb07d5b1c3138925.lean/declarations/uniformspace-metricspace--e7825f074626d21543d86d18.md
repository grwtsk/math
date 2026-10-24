# UniformSpace.metricSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77b4d71efc8349455593b02030e994a92d0d268e37273205628ce72dbc11119a",
  "kind": "def",
  "lexical_name": "UniformSpace.metricSpace",
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
  "slug": "uniformspace-metricspace--e7825f074626d21543d86d18",
  "source": {
    "blob": "57ab079732948a225916249b4a7089b32cc068e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 252,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e7825f074626d21543d86d18fc10d103725aaaf5401bf758c4a1252ddf98fbc8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77b4d71efc8349455593b02030e994a92d0d268e37273205628ce72dbc11119a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def UniformSpace.metricSpace (X : Type*) [UniformSpace X]
    [IsCountablyGenerated (𝓤 X)] [T0Space X] : MetricSpace X :=
  @MetricSpace.ofT0PseudoMetricSpace X (UniformSpace.pseudoMetricSpace X) _

/-- A uniform space with countably generated `𝓤 X` is pseudo metrizable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Uniformity/Variant1bb9cf19bb39d9d2e75e829c61bdd0d943df6bbcfab2ecc0eb07d5b1c3138925.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ab079732948a225916249b4a7089b32cc068e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
