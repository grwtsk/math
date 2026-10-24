# AnalyticSet.measurableSet_of_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51a400d8-4af8-a994-19f8-d7c8118cbc02",
  "kind": "theorem",
  "lexical_name": "AnalyticSet.measurableSet_of_compl",
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
  "slug": "analyticset-measurableset-of-compl--c58c5e212ff68b861bacb2c1",
  "source": {
    "blob": "a992dd64a895591bbde7cc6456a1648546ef2862",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 556,
    "line": 532,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c58c5e212ff68b861bacb2c1f7853757969a07b66724fd521ca9c255986d6dea",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a400d8-4af8-a994-19f8-d7c8118cbc02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–556.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AnalyticSet.measurableSet_of_compl [T2Space α] [MeasurableSpace α] [OpensMeasurableSpace α]
    {s : Set α} (hs : AnalyticSet s) (hsc : AnalyticSet sᶜ) : MeasurableSet s := by
  rcases hs.measurablySeparable hsc disjoint_compl_right with ⟨u, hsu, hdu, hmu⟩
  obtain rfl : s = u := hsu.antisymm (disjoint_compl_left_iff_subset.1 hdu)
  exact hmu

end MeasureTheory

/-!
### Measurability of preimages under measurable maps
-/

namespace Measurable

open MeasurableSpace

variable {X Y Z β : Type*} [MeasurableSpace X] [StandardBorelSpace X]
  [TopologicalSpace Y] [T0Space Y] [MeasurableSpace Y] [OpensMeasurableSpace Y] [MeasurableSpace β]
  [MeasurableSpace Z]

/-- If `f : X → Z` is a surjective Borel measurable map from a standard Borel space
to a countably separated measurable space, then the preimage of a set `s`
is measurable if and only if the set is measurable.
One implication is the definition of measurability, the other one heavily relies on `X` being a
standard Borel space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Varianta0d3097223c0f4f192fb7a93b5e38bec40b64b5a0f48d148643a4865eb26acbb.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a992dd64a895591bbde7cc6456a1648546ef2862` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
