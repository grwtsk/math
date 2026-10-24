# Basis.map_addHaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dda2d3d-f257-8b03-8f1d-6da02a831cc3",
  "kind": "theorem",
  "lexical_name": "Basis.map_addHaar",
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
  "slug": "basis-map-addhaar--f0b4f73e7c64ac5c8f18eb53",
  "source": {
    "blob": "c95bf2c56c27d9f880c0438348b4a221d7abf93b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0b4f73e7c64ac5c8f18eb536fc89fe06b301b968e63631ddf84bc7f0778f622",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dda2d3d-f257-8b03-8f1d-6da02a831cc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.map_addHaar {ι E F : Type*} [Fintype ι] [NormedAddCommGroup E] [NormedAddCommGroup F]
    [NormedSpace ℝ E] [NormedSpace ℝ F] [MeasurableSpace E] [MeasurableSpace F] [BorelSpace E]
    [BorelSpace F] [SecondCountableTopology F] [SigmaCompactSpace F]
    (b : Basis ι ℝ E) (f : E ≃L[ℝ] F) :
    map f b.addHaar = (b.map f.toLinearEquiv).addHaar := by
  have : IsAddHaarMeasure (map f b.addHaar) :=
    AddEquiv.isAddHaarMeasure_map b.addHaar f.toAddEquiv f.continuous f.symm.continuous
  rw [eq_comm, Basis.addHaar_eq_iff, Measure.map_apply f.continuous.measurable
    (PositiveCompacts.isCompact _).measurableSet, Basis.coe_parallelepiped, Basis.coe_map]
  erw [← image_parallelepiped, f.toEquiv.preimage_image, addHaar_self]

namespace MeasureTheory

open Measure TopologicalSpace.PositiveCompacts Module

/-!
### The Lebesgue measure is a Haar measure on `ℝ` and on `ℝ^ι`.
-/

/-- The Haar measure equals the Lebesgue measure on `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/EqHaar/Variant330e37a1c7af6facded614d6a672d512342b2c36bf47db1d3f92f1aab7151c91.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c95bf2c56c27d9f880c0438348b4a221d7abf93b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
