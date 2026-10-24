# tendsto_filterAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fc00802-4dca-afda-30b2-74e0ddd6cb53",
  "kind": "theorem",
  "lexical_name": "tendsto_filterAt",
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
  "slug": "tendsto-filterat--8a7336fa022179334903cf5b",
  "source": {
    "blob": "d690b794dd75291c757f229b70e7afb934ddbc18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1090,
    "line": 1073,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a7336fa022179334903cf5b85007ed0cbcc5b4b4c9f3cddc399588010d3b68a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fc00802-4dca-afda-30b2-74e0ddd6cb53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1073–1090.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_filterAt (μ : Measure α) [SFinite μ] (x : α) :
    Tendsto (fun r => closedBall x r) (𝓝[>] 0) ((Besicovitch.vitaliFamily μ).filterAt x) := by
  intro s hs
  simp only [mem_map]
  obtain ⟨ε, εpos, hε⟩ :
    ∃ (ε : ℝ), ε > 0 ∧
      ∀ a : Set α, a ∈ (Besicovitch.vitaliFamily μ).setsAt x → a ⊆ closedBall x ε → a ∈ s :=
    (VitaliFamily.mem_filterAt_iff _).1 hs
  filter_upwards [Ioc_mem_nhdsGT εpos] with _r hr
  apply hε
  · exact mem_image_of_mem _ hr.1
  · exact closedBall_subset_closedBall hr.2

variable [MetricSpace β] [MeasurableSpace β] [BorelSpace β] [SecondCountableTopology β]
  [HasBesicovitchCovering β]

/-- In a space with the Besicovitch covering property, the ratio of the measure of balls converges
almost surely to the Radon-Nikodym derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant3f7faa318d9b2f04df3eb35b02c916a09c9f1cfa74b7145487c02a0213b897e8.lean#L1073).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d690b794dd75291c757f229b70e7afb934ddbc18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
