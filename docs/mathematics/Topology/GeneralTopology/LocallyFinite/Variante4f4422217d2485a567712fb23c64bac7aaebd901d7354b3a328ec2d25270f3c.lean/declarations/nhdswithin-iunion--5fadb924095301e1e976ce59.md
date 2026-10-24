# nhdsWithin_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9e693eb4c7b0be189c182634bf59df514459f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af14fb4f-ca48-12f7-2d87-84e00c91c951",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:987bd42d-1881-366e-50c0-d6cee75313ef",
  "kind": "theorem",
  "lexical_name": "nhdsWithin_iUnion",
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
  "slug": "nhdswithin-iunion--5fadb924095301e1e976ce59",
  "source": {
    "blob": "a9e693eb4c7b0be189c182634bf59df514459f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fadb924095301e1e976ce59ab76bb15034288f74e7503e02f23793308a0fdec",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:987bd42d-1881-366e-50c0-d6cee75313ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem nhdsWithin_iUnion (hf : LocallyFinite f) (a : X) :
    𝓝[⋃ i, f i] a = ⨆ i, 𝓝[f i] a := by
  rcases hf a with ⟨U, haU, hfin⟩
  refine le_antisymm ?_ (Monotone.le_map_iSup fun _ _ ↦ nhdsWithin_mono _)
  calc
    𝓝[⋃ i, f i] a = 𝓝[⋃ i, f i ∩ U] a := by
      rw [← iUnion_inter, ← nhdsWithin_inter_of_mem' (nhdsWithin_le_nhds haU)]
    _ = 𝓝[⋃ i ∈ {j | (f j ∩ U).Nonempty}, (f i ∩ U)] a := by
      simp only [mem_ofPred_eq, iUnion_nonempty_self]
    _ = ⨆ i ∈ {j | (f j ∩ U).Nonempty}, 𝓝[f i ∩ U] a := nhdsWithin_biUnion hfin _ _
    _ ≤ ⨆ i, 𝓝[f i ∩ U] a := iSup₂_le_iSup _ _
    _ ≤ ⨆ i, 𝓝[f i] a := iSup_mono fun i ↦ nhdsWithin_mono _ inter_subset_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyFinite/Variante4f4422217d2485a567712fb23c64bac7aaebd901d7354b3a328ec2d25270f3c.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9e693eb4c7b0be189c182634bf59df514459f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
