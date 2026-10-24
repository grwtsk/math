# LightCondSet.underlying

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34c65e8d15333b34467258802b0cb90f9023d62a4d0ebad5120dbfb634f0307",
  "kind": "abbrev",
  "lexical_name": "LightCondSet.underlying",
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
  "slug": "lightcondset-underlying--5cf4d3ccf90441ca58d227a3",
  "source": {
    "blob": "2cfb3bccb7d5559eab13fe812bafc1b5914e58b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5cf4d3ccf90441ca58d227a308272e16b1564dfaa5198948034b904a0d44d1c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34c65e8d15333b34467258802b0cb90f9023d62a4d0ebad5120dbfb634f0307`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev LightCondSet.underlying := LightCondensed.underlying <| Type u

/-- A version of `LightCondensed.discrete_underlying_adj` in the `LightCondSet` namespace -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant14d297c3b9fa25a9a146a55a40076ed4275ca0b5a3a03ec124743a1642b91928.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cfb3bccb7d5559eab13fe812bafc1b5914e58b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
