# haarContent_outerMeasure_self_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dacbfd52-ed6e-4c6b-52b0-7afe35827b81",
  "kind": "theorem",
  "lexical_name": "haarContent_outerMeasure_self_pos",
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
  "slug": "haarcontent-outermeasure-self-pos--4237dd4b7d370fc1e388d660",
  "source": {
    "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 613,
    "line": 586,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4237dd4b7d370fc1e388d66046a0f23da1c8decdd758af2b1b0e5d53223c484a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dacbfd52-ed6e-4c6b-52b0-7afe35827b81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 586–613.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem haarContent_outerMeasure_self_pos {K₀ : PositiveCompacts G} :
    0 < (haarContent K₀).outerMeasure K₀ := by
  refine' zero_lt_one.trans_le _
  rw [Content.outerMeasure_eq_iInf]
  refine' le_iInf₂ fun U hU => le_iInf fun hK₀ => le_trans _ <| le_iSup₂ K₀.toCompacts hK₀
  exact haarContent_self.ge
#align measure_theory.measure.haar.haar_content_outer_measure_self_pos MeasureTheory.Measure.haar.haarContent_outerMeasure_self_pos
#align measure_theory.measure.haar.add_haar_content_outer_measure_self_pos MeasureTheory.Measure.haar.addHaarContent_outerMeasure_self_pos

end haar

open haar

/-!
### The Haar measure
-/


variable [TopologicalSpace G] [T2Space G] [TopologicalGroup G] [MeasurableSpace G] [BorelSpace G]

-- Porting note: Even in `noncomputable section`, a definition with `to_additive` require
--               `noncomputable` to generate an additive definition.
--               Please refer to leanprover/lean4#2077.

/-- The Haar measure on the locally compact group `G`, scaled so that `haarMeasure K₀ K₀ = 1`. -/
@[to_additive
"The Haar measure on the locally compact additive group `G`, scaled so that
`addHaarMeasure K₀ K₀ = 1`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean#L586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
