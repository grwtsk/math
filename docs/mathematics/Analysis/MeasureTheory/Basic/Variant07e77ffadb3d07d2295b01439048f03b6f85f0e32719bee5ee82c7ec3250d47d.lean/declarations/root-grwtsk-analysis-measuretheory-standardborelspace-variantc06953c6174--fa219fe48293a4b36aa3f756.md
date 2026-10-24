# _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.analyticSet_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:35eb9349-a44d-3706-6c3d-857881fdf3c0",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.analyticSet_image",
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
  "slug": "root-grwtsk-analysis-measuretheory-standardborelspace-variantc06953c6174--fa219fe48293a4b36aa3f756",
  "source": {
    "blob": "65a2dd60c6688280f43a9ce508bf249a3a052adc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 361,
    "line": 349,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa219fe48293a4b36aa3f756eca283ffe1ad87c212c39f8feef0480c8b31a370",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:35eb9349-a44d-3706-6c3d-857881fdf3c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–361.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.StandardBorelSpace.Variantc06953c6174f852b870e3c3302ff4e2d4279782db88a0e187c65130fc3386377.MeasurableSet.analyticSet_image {X Y : Type*} [MeasurableSpace X]
    [StandardBorelSpace X] [TopologicalSpace Y] [MeasurableSpace Y]
    [OpensMeasurableSpace Y] {f : X → Y} [SecondCountableTopology (range f)] {s : Set X}
    (hs : MeasurableSet s) (hf : Measurable f) : AnalyticSet (f '' s) := by
  letI := upgradeStandardBorel X
  rw [eq_borel_upgradeStandardBorel X] at hs
  rcases hf.exists_continuous with ⟨τ', hle, hfc, hτ'⟩
  letI m' : MeasurableSpace X := @borel _ τ'
  haveI b' : BorelSpace X := ⟨rfl⟩
  have hle := borel_anti hle
  exact (hle _ hs).analyticSet.image_of_continuous hfc

/-- Preimage of an analytic set is an analytic set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant07e77ffadb3d07d2295b01439048f03b6f85f0e32719bee5ee82c7ec3250d47d.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a2dd60c6688280f43a9ce508bf249a3a052adc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
