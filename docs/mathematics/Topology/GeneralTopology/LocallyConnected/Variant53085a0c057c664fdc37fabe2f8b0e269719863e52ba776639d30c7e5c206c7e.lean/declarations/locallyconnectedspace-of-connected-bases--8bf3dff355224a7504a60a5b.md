# locallyConnectedSpace_of_connected_bases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2916c3b909f19c2504f4874ab700e182423a7b00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67935753-1eba-d061-c28b-35c124b67ff6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:659e116d-dc31-ffb3-65c3-209219e0260d",
  "kind": "theorem",
  "lexical_name": "locallyConnectedSpace_of_connected_bases",
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
  "slug": "locallyconnectedspace-of-connected-bases--8bf3dff355224a7504a60a5b",
  "source": {
    "blob": "2916c3b909f19c2504f4874ab700e182423a7b00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bf3dff355224a7504a60a5be67e7d80ffb022ea606c31ec9388ee3bb7488076",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:659e116d-dc31-ffb3-65c3-209219e0260d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyConnectedSpace_of_connected_bases {ι : Type*} (b : α → ι → Set α) (p : α → ι → Prop)
    (hbasis : ∀ x, (𝓝 x).HasBasis (p x) (b x))
    (hconnected : ∀ x i, p x i → IsPreconnected (b x i)) : LocallyConnectedSpace α := by
  rw [locallyConnectedSpace_iff_connected_basis]
  exact fun x =>
    (hbasis x).to_hasBasis
      (fun i hi => ⟨b x i, ⟨(hbasis x).mem_of_mem hi, hconnected x i hi⟩, subset_rfl⟩) fun s hs =>
      ⟨(hbasis x).index s hs.1, ⟨(hbasis x).property_index hs.1, (hbasis x).set_index_subset hs.1⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyConnected/Variant53085a0c057c664fdc37fabe2f8b0e269719863e52ba776639d30c7e5c206c7e.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2916c3b909f19c2504f4874ab700e182423a7b00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
