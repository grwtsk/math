# MeasurableInv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e25459c1283c04ece85680290520f5c74a2e3aee268962c0538c240c7fd2e251",
  "kind": "class",
  "lexical_name": "MeasurableInv",
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
  "slug": "measurableinv--d6a92be0e347f4bf36e73cde",
  "source": {
    "blob": "cddcbe6455265d622ffddd416b8ae2d50a94a71a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 434,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6a92be0e347f4bf36e73cde21e730db245459b23d2566c19a15e96b720bdf9a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e25459c1283c04ece85680290520f5c74a2e3aee268962c0538c240c7fd2e251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 434–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MeasurableInv (G : Type*) [Inv G] [MeasurableSpace G] : Prop where
  measurable_inv : Measurable (Inv.inv : G → G)
#align has_measurable_inv MeasurableInv
#align has_measurable_inv.measurable_inv MeasurableInv.measurable_inv

export MeasurableInv (measurable_inv)

export MeasurableNeg (measurable_neg)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variantd1d57fb38678256a746bc03b3e168c611701abb1d27f227df764e4be8ae410ea.lean#L434).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cddcbe6455265d622ffddd416b8ae2d50a94a71a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
