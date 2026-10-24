# comap_quotient_le_uniformity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf215bfb5ba000afee27bfe16348a9b24912d1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c84a735-bfdc-23f7-0dfc-6a067321c89f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3466b448-e5fd-f9b4-263b-6a988ced36d8",
  "kind": "theorem",
  "lexical_name": "comap_quotient_le_uniformity",
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
  "slug": "comap-quotient-le-uniformity--eba90b71a53366efe0f3a31d",
  "source": {
    "blob": "fbf215bfb5ba000afee27bfe16348a9b24912d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 313,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eba90b71a53366efe0f3a31dc9503fb58e6749d3011aee619e160b11bf0bb826",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3466b448-e5fd-f9b4-263b-6a988ced36d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_quotient_le_uniformity :
    ((𝓤 <| Quotient <| separationSetoid α).comap fun p : α × α => (⟦p.fst⟧, ⟦p.snd⟧)) ≤ 𝓤 α :=
  ((((𝓤 α).basis_sets.map _).comap _).le_basis_iff uniformity_hasBasis_open).2 fun U hU =>
    ⟨U, hU.1, fun ⟨x, y⟩ ⟨⟨x', y'⟩, hx', h⟩ => by
      simp only [Prod.ext_iff, Quotient.eq] at h
      exact (((separationRel_iff_inseparable.1 h.1).prod
        (separationRel_iff_inseparable.1 h.2)).mem_open_iff hU.2).1 hx'⟩
#align uniform_space.comap_quotient_le_uniformity UniformSpace.comap_quotient_le_uniformity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant907329f5ef999b2b54fe3951b8e97011f2dbd1b5493a3c434702db7ba0f39b80.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf215bfb5ba000afee27bfe16348a9b24912d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
