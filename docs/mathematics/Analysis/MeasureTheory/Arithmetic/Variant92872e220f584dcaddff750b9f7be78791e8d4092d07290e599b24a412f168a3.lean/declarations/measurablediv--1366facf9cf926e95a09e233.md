# MeasurableDiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fed568cd68f80acde8977e39af61eb3ed95e8ae543f5e5778e190ef2182ea34",
  "kind": "class",
  "lexical_name": "MeasurableDiv",
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
  "slug": "measurablediv--1366facf9cf926e95a09e233",
  "source": {
    "blob": "e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 274,
    "path": "GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1366facf9cf926e95a09e2330b6b965f43ce64bf326b5578e52474192c1fa35f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fed568cd68f80acde8977e39af61eb3ed95e8ae543f5e5778e190ef2182ea34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MeasurableDiv (G₀ : Type*) [MeasurableSpace G₀] [Div G₀] : Prop where
  measurable_const_div : ∀ c : G₀, Measurable (c / ·)
  measurable_div_const : ∀ c : G₀, Measurable (· / c)
#align has_measurable_div MeasurableDiv
#align has_measurable_div.measurable_const_div MeasurableDiv.measurable_div_const
#align has_measurable_div.measurable_div_const MeasurableDiv.measurable_div_const

export MeasurableDiv (measurable_const_div measurable_div_const)

/-- We say that a type has `MeasurableDiv₂` if `uncurry (· / ·)` is a measurable functions.
For a typeclass assuming measurability of `(c / ·)` and `(· / c)` see `MeasurableDiv`. -/
@[to_additive MeasurableSub₂]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Arithmetic/Variant92872e220f584dcaddff750b9f7be78791e8d4092d07290e599b24a412f168a3.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7cd1cccdb7e570b3d7e87fba6e69fe4f2473ebc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
