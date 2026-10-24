# borel_le_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b3647da-d99b-890d-2b4e-dee0dd7a47c6",
  "kind": "theorem",
  "lexical_name": "borel_le_measurable",
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
  "slug": "borel-le-measurable--408f56d16c74a8c29bd6a215",
  "source": {
    "blob": "ff61badabb2319015eea68cb05a2e021f2e14cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 371,
    "line": 356,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:408f56d16c74a8c29bd6a2158399603ee69908f97ccb7233f02064ea7a4c5157",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b3647da-d99b-890d-2b4e-dee0dd7a47c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 356–371.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borel_le_measurable : borel ℝ ≤ f.outer.caratheodory := by
  rw [borel_eq_generateFrom_Ioi]
  refine MeasurableSpace.generateFrom_le ?_
  simp +contextual [f.measurableSet_Ioi]

/-! ### The measure associated to a Stieltjes function -/


/-- The measure associated to a Stieltjes function, giving mass `f b - f a` to the
interval `(a, b]`. -/
protected irreducible_def measure : Measure ℝ where
  toOuterMeasure := f.outer
  m_iUnion _s hs := f.outer.iUnion_eq_of_caratheodory fun i => f.borel_le_measurable _ (hs i)
  trim_le := f.outer_trim.le

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean#L356).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff61badabb2319015eea68cb05a2e021f2e14cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
