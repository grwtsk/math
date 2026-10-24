# compMeasurePreserving_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:178b26db-5577-2580-406e-8d37afa25e98",
  "kind": "theorem",
  "lexical_name": "compMeasurePreserving_continuous",
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
  "slug": "compmeasurepreserving-continuous--1a59548d539f5a5fa4a5b85b",
  "source": {
    "blob": "585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a59548d539f5a5fa4a5b85b78b02c0fff613b5171c6393ec1c656d0c7f9afc0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:178b26db-5577-2580-406e-8d37afa25e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compMeasurePreserving_continuous (hp : p ≠ ∞) :
    Continuous fun gf : Lp E p ν × {f : C(X, Y) // MeasurePreserving f μ ν} ↦
      compMeasurePreserving gf.2.1 gf.2.2 gf.1 := by
  have hp₀ : p ≠ 0 := (one_pos.trans_le Fact.out).ne'
  refine continuous_prod_of_dense_continuous_lipschitzWith _ 1
    (MeasureTheory.Lp.simpleFunc.dense hp) ?_ fun f ↦
      (isometry_compMeasurePreserving f.2).lipschitzWith
  intro f hf
  lift f to Lp.simpleFunc E p ν using hf
  induction f using Lp.simpleFunc.induction hp₀ hp with
  | add hfp hgp _ ihf ihg => exact ihf.add ihg
  | @indicatorConst c s hs hνs =>
    dsimp only [Lp.simpleFunc.coe_indicatorConst, Lp.indicatorConstLp_compMeasurePreserving]
    refine continuous_indicatorConstLp_set hp fun f ↦ ?_
    apply tendsto_measure_symmDiff_preimage_nhds_zero continuousAt_subtype_val _ f.2
      hs.nullMeasurableSet hνs.ne
    exact .of_forall Subtype.property

end Lp

end MeasureTheory

variable {E : Type*} [NormedAddCommGroup E] {p : ℝ≥0∞} [Fact (1 ≤ p)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
