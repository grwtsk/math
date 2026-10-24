# boundedSpace_val_set_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf91b61dc9731f6cd2afa4c121b75df261572977",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 167,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29d74610-bbaf-8479-a2c5-ecd8d08e11fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7db75672-5c9e-230a-cb77-f4f745b64998",
  "kind": "theorem",
  "lexical_name": "boundedSpace_val_set_iff",
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
  "slug": "boundedspace-val-set-iff--50535092e4c2e53d70338fa7",
  "source": {
    "blob": "bf91b61dc9731f6cd2afa4c121b75df261572977",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50535092e4c2e53d70338fa754e84a86f8a4bc6fb9bfdf50e803ebc649e308a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7db75672-5c9e-230a-cb77-f4f745b64998`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundedSpace_val_set_iff {s : Set α} : BoundedSpace s ↔ IsBounded s :=
  boundedSpace_subtype_iff
#align bounded_space_coe_set_iff boundedSpace_val_set_iff

alias ⟨_, Bornology.IsBounded.boundedSpace_subtype⟩ := boundedSpace_subtype_iff
#align bornology.is_bounded.bounded_space_subtype Bornology.IsBounded.boundedSpace_subtype

alias ⟨_, Bornology.IsBounded.boundedSpace_val⟩ := boundedSpace_val_set_iff
#align bornology.is_bounded.bounded_space_coe Bornology.IsBounded.boundedSpace_val

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Constructions/Variantc9c1c4703a27fc0df725dd2554621f549445e959199aa4aeb366ab4f7511eb64.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf91b61dc9731f6cd2afa4c121b75df261572977` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
