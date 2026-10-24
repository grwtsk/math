# MeasureSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9cac67a878b88351475630dea2df9fce8a3a6c5e13da6a5a57628126f6fc2fe1",
  "kind": "class",
  "lexical_name": "MeasureSpace",
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
  "slug": "measurespace--a843edb3cb6d2219cb7bbc02",
  "source": {
    "blob": "79f86ba7f80f0063a1e71cbe61f2d6e2283adb9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 356,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant9e7e2105e21cdb7dbe731515213bcd1f6cf78c902bcd2da7f33b468218d90664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a843edb3cb6d2219cb7bbc02349a54e20aca0677632794eaf83675cfd4ccc1f8",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureSpaceDef/Variant9e7e2105e21cdb7dbe731515213bcd1f6cf78c902bcd2da7f33b468218d90664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9cac67a878b88351475630dea2df9fce8a3a6c5e13da6a5a57628126f6fc2fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MeasureSpace (α : Type*) extends MeasurableSpace α where
  volume : Measure α

export MeasureSpace (volume)

/-- `volume` is the canonical measure on `α`. -/
add_decl_doc volume

section MeasureSpace

/-- `∀ᵐ a, p a` means that `p a` for a.e. `a`, i.e. `p` holds true away from a null set.

This is notation for `Filter.Eventually P (MeasureTheory.ae MeasureSpace.volume)`. -/
notation3 "∀ᵐ "(...)", "r:(scoped P =>
  Filter.Eventually P <| MeasureTheory.ae MeasureTheory.MeasureSpace.volume) => r

/-- `∃ᵐ a, p a` means that `p` holds frequently, i.e. on a set of positive measure,
w.r.t. the volume measure.

This is notation for `Filter.Frequently P (MeasureTheory.ae MeasureSpace.volume)`. -/
notation3 "∃ᵐ "(...)", "r:(scoped P =>
  Filter.Frequently P <| MeasureTheory.ae MeasureTheory.MeasureSpace.volume) => r

/-- The tactic `exact volume`, to be used in optional (`autoParam`) arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureSpaceDef/Variant9e7e2105e21cdb7dbe731515213bcd1f6cf78c902bcd2da7f33b468218d90664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureSpaceDef/Variant9e7e2105e21cdb7dbe731515213bcd1f6cf78c902bcd2da7f33b468218d90664.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79f86ba7f80f0063a1e71cbe61f2d6e2283adb9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
