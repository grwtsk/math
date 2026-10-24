# continuous_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "857b5f500901b3939a77225fea8259075f53b339",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:929fc300-8e98-2e65-a3e1-d6861d949364",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b346f0a0-d71b-0939-a35c-1e478d86f6c4",
  "kind": "theorem",
  "lexical_name": "continuous_iff",
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
  "slug": "continuous-iff--3a7739d3d8cfc4b0ce36efc4",
  "source": {
    "blob": "857b5f500901b3939a77225fea8259075f53b339",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7739d3d8cfc4b0ce36efc4a53eaed9bf3e708d8da6acd5d51965d3e7f0a5f2",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b346f0a0-d71b-0939-a35c-1e478d86f6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem continuous_iff {Y : Type*} [TopologicalSpace Y] {f : X → Y}
    (hS : IsCoherentWith S) :
    Continuous f ↔ ∀ s ∈ S, ContinuousOn f s :=
  ⟨fun h _ _ ↦ h.continuousOn, fun h ↦ continuous_def.2 fun _u hu ↦ hS.isOpen_iff.2 fun s hs ↦
    hu.preimage <| (h s hs).restrict⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Coherent/Variantea8efda42b10309891a71ccacb19340b0decf1c59c8fdfc3e24c74f38563cfb7.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `857b5f500901b3939a77225fea8259075f53b339` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
