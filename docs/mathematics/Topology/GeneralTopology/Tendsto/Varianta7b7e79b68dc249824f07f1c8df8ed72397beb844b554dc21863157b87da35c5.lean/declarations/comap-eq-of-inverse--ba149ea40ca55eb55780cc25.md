# comap_eq_of_inverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:41ce2194-f73f-c7bc-adf9-e19de8ebc325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:56433c79-72a5-fe29-ae16-1a814c6167e2",
  "kind": "theorem",
  "lexical_name": "comap_eq_of_inverse",
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
  "slug": "comap-eq-of-inverse--ba149ea40ca55eb55780cc25",
  "source": {
    "blob": "dda3854d6a154b6568024ed5da75cf3763753cb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 168,
    "path": "GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba149ea40ca55eb55780cc25aeaf5985b040d331879a4bdfb6164cdfc49239ce",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56433c79-72a5-fe29-ae16-1a814c6167e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comap_eq_of_inverse {f : Filter α} {g : Filter β} {φ : α → β} (ψ : β → α) (eq : ψ ∘ φ = id)
    (hφ : Tendsto φ f g) (hψ : Tendsto ψ g f) : comap φ g = f := by
  refine ((comap_mono <| map_le_iff_le_comap.1 hψ).trans ?_).antisymm (map_le_iff_le_comap.1 hφ)
  rw [comap_comap, eq, comap_id]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Tendsto/Varianta7b7e79b68dc249824f07f1c8df8ed72397beb844b554dc21863157b87da35c5.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dda3854d6a154b6568024ed5da75cf3763753cb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
