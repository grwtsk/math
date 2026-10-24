# optimalGHInjr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e461b9264d4cc27382556e0609d3893758894a626d05f08f948ecbb31c182d8",
  "kind": "def",
  "lexical_name": "optimalGHInjr",
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
  "slug": "optimalghinjr--36be54ddcce6744269f0285f",
  "source": {
    "blob": "67f72d8b0c77b568d35ae990958bc3d1839de598",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 470,
    "line": 467,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36be54ddcce6744269f0285fb7632fefc02eee06493f632ac8605de4fe771e73",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e461b9264d4cc27382556e0609d3893758894a626d05f08f948ecbb31c182d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–470.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def optimalGHInjr (y : Y) : OptimalGHCoupling X Y :=
  Quotient.mk'' (inr y)

/-- The injection of `Y` in the optimal coupling between `X` and `Y` is an isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant602beb6b0842f43d71093d75f7ed6c5d158270754d2441cda9cd41e7df154292.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67f72d8b0c77b568d35ae990958bc3d1839de598` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
