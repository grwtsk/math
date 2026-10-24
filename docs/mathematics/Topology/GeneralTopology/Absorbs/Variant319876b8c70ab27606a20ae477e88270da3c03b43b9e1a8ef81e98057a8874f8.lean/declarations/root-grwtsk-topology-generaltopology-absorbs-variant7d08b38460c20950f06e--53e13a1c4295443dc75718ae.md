# _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.Set.Finite.absorbs_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1657be0a-60d8-a1fb-1206-edf1a916b14c",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.Set.Finite.absorbs_biUnion",
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
  "slug": "root-grwtsk-topology-generaltopology-absorbs-variant7d08b38460c20950f06e--53e13a1c4295443dc75718ae",
  "source": {
    "blob": "846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 115,
    "path": "GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53e13a1c4295443dc75718aea5a3e04e9ed3229db3d895e90865b0103fe92eb6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1657be0a-60d8-a1fb-1206-edf1a916b14c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.Absorbs.Variant7d08b38460c20950f06ed73fa8f234d00dfd769ae545fde4e506651aba73ec5a.Set.Finite.absorbs_biUnion {ι : Type*} {t : ι → Set α} {I : Set ι} (hI : I.Finite) :
    Absorbs M s (⋃ i ∈ I, t i) ↔ ∀ i ∈ I, Absorbs M s (t i) := by
  simp [Absorbs, hI]

protected alias ⟨_, biUnion⟩ := Set.Finite.absorbs_biUnion

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Absorbs/Variant319876b8c70ab27606a20ae477e88270da3c03b43b9e1a8ef81e98057a8874f8.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `846d12a11e0035b7e50c2b1bfec0869e8e0bd7c4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
