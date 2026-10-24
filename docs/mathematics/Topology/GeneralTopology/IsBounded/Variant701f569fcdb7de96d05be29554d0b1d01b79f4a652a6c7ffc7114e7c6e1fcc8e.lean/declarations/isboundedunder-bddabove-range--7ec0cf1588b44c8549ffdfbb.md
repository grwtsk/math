# IsBoundedUnder.bddAbove_range

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6a92917e947c28a9b4a09171dbab0bc50c6b7b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1228da8-0d61-b335-a7f0-424188fa562c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:497eb9fb-1ce0-0d95-81ea-590922739f3a",
  "kind": "theorem",
  "lexical_name": "IsBoundedUnder.bddAbove_range",
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
  "slug": "isboundedunder-bddabove-range--7ec0cf1588b44c8549ffdfbb",
  "source": {
    "blob": "b6a92917e947c28a9b4a09171dbab0bc50c6b7b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ec0cf1588b44c8549ffdfbb239a9bd93620b0ff41122820e17960203b2e6bd0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:497eb9fb-1ce0-0d95-81ea-590922739f3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBoundedUnder.bddAbove_range [Preorder β] [IsDirectedOrder β] {f : ℕ → β}
    (hf : IsBoundedUnder (· ≤ ·) atTop f) : BddAbove (range f) := by
  rw [← Nat.cofinite_eq_atTop] at hf
  exact hf.bddAbove_range_of_cofinite

/-- To check that a filter is frequently bounded, it suffices to have a witness
which bounds `f` at some point for every admissible set.

This is only an implication, as the other direction is wrong for the trivial filter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IsBounded/Variant701f569fcdb7de96d05be29554d0b1d01b79f4a652a6c7ffc7114e7c6e1fcc8e.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6a92917e947c28a9b4a09171dbab0bc50c6b7b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
