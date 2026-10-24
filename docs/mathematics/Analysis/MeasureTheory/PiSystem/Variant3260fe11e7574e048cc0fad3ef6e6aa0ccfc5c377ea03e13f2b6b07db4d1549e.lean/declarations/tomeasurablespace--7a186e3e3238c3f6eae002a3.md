# toMeasurableSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f7be4512dacf93fb4cc7707aec7bcf2f975b7cedba99cfd10dfc8f0bd5a4746",
  "kind": "def",
  "lexical_name": "toMeasurableSpace",
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
  "slug": "tomeasurablespace--7a186e3e3238c3f6eae002a3",
  "source": {
    "blob": "0598ddc4637f21d30b49d8ab119f4250b8c28da8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 678,
    "line": 667,
    "path": "GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a186e3e3238c3f6eae002a3cdf4db0315a9bf76cb66e507e2a95bf04f3570d2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f7be4512dacf93fb4cc7707aec7bcf2f975b7cedba99cfd10dfc8f0bd5a4746`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–678.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMeasurableSpace (h_inter : ∀ s₁ s₂, d.Has s₁ → d.Has s₂ → d.Has (s₁ ∩ s₂)) :
    MeasurableSpace α where
  MeasurableSet' := d.Has
  measurableSet_empty := d.has_empty
  measurableSet_compl s h := d.has_compl h
  measurableSet_iUnion f hf := by
    rw [← iUnion_disjointed]
    exact
      d.has_iUnion (disjoint_disjointed _) fun n =>
        disjointedRec (fun (t : Set α) i h => h_inter _ _ h <| d.has_compl <| hf i) (hf n)
#align measurable_space.dynkin_system.to_measurable_space MeasurableSpace.DynkinSystem.toMeasurableSpace

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/PiSystem/Variant3260fe11e7574e048cc0fad3ef6e6aa0ccfc5c377ea03e13f2b6b07db4d1549e.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0598ddc4637f21d30b49d8ab119f4250b8c28da8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
