# ext_on_measurableSpace_of_generate_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b46df592-fd6d-0a67-0fa9-124c1a68d3fb",
  "kind": "theorem",
  "lexical_name": "ext_on_measurableSpace_of_generate_finite",
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
  "slug": "ext-on-measurablespace-of-generate-finite--f4e8647679ace164d17eaba7",
  "source": {
    "blob": "082df792375117dadcb67e2f16120a41a068ced0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 403,
    "path": "GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f4e8647679ace164d17eaba7cf175b4a9a2f97562a87f12aec3e8315c2989495",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b46df592-fd6d-0a67-0fa9-124c1a68d3fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 403–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_on_measurableSpace_of_generate_finite {α} (m₀ : MeasurableSpace α) {μ ν : Measure α}
    [IsFiniteMeasure μ] (C : Set (Set α)) (hμν : ∀ s ∈ C, μ s = ν s) {m : MeasurableSpace α}
    (h : m ≤ m₀) (hA : m = MeasurableSpace.generateFrom C) (hC : IsPiSystem C)
    (h_univ : μ Set.univ = ν Set.univ) {s : Set α} (hs : MeasurableSet[m] s) : μ s = ν s := by
  haveI : IsFiniteMeasure ν := by
    constructor
    rw [← h_univ]
    apply IsFiniteMeasure.measure_univ_lt_top
  induction s, hs using induction_on_inter hA hC with
  | empty => simp
  | basic t ht => exact hμν t ht
  | compl t htm iht =>
    rw [measure_compl (h t htm) (measure_ne_top _ _), measure_compl (h t htm) (measure_ne_top _ _),
      iht, h_univ]
  | iUnion f hfd hfm ihf =>
    simp [measure_iUnion, hfd, h _ (hfm _), ihf]

/-- Two finite measures are equal if they are equal on the π-system generating the σ-algebra
  (and `univ`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Finite/Variant70643b2a499fe1d1b5d7f278482974a79cc3940f20ca1268908a6eb7c993c67f.lean#L403).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `082df792375117dadcb67e2f16120a41a068ced0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
