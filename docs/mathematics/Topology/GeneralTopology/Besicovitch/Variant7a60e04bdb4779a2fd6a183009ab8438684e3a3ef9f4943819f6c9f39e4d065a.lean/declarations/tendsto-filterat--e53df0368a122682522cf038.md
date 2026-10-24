# tendsto_filterAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1065,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b98801a-febb-18f1-9abc-441976b6c503",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:844490c5-042f-2b10-0a84-f2f127752e01",
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
  "slug": "tendsto-filterat--e53df0368a122682522cf038",
  "source": {
    "blob": "d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1082,
    "line": 1065,
    "path": "GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e53df0368a122682522cf038894f6a7bc193d831562ed03463b9ecbe7b30ed5f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:844490c5-042f-2b10-0a84-f2f127752e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1065–1082.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Besicovitch/Variant7a60e04bdb4779a2fd6a183009ab8438684e3a3ef9f4943819f6c9f39e4d065a.lean#L1065).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d908a29a0b3f27e2f9b6163a20011fb3cc29e3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
