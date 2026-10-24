# isExtrFilter_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a4c998f263663929acb9d38825c121c688bdb1a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 188,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e603d81aad9f36c4864f0db13221e5c91bb1c2b17edf7015bb79498f73bc8dd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:77f07640-754b-c97e-d884-adc38ca5ab16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b5e1612f-4102-7672-1aec-fbc47542ea0c",
  "kind": "theorem",
  "lexical_name": "isExtrFilter_dual_iff",
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
  "slug": "isextrfilter-dual-iff--f1bc153e9c67fba874672ccc",
  "source": {
    "blob": "a4c998f263663929acb9d38825c121c688bdb1a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 188,
    "path": "GRWTSK/Topology/GeneralTopology/Extr/Variant7e603d81aad9f36c4864f0db13221e5c91bb1c2b17edf7015bb79498f73bc8dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f1bc153e9c67fba874672ccc3d7748155eb8f58091e955019b515e7e14728985",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Extr/Variant7e603d81aad9f36c4864f0db13221e5c91bb1c2b17edf7015bb79498f73bc8dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5e1612f-4102-7672-1aec-fbc47542ea0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isExtrFilter_dual_iff : IsExtrFilter (toDual ∘ f) l a ↔ IsExtrFilter f l a :=
  or_comm

alias ⟨IsMinFilter.undual, IsMaxFilter.dual⟩ := isMinFilter_dual_iff

alias ⟨IsMaxFilter.undual, IsMinFilter.dual⟩ := isMaxFilter_dual_iff

alias ⟨IsExtrFilter.undual, IsExtrFilter.dual⟩ := isExtrFilter_dual_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Extr/Variant7e603d81aad9f36c4864f0db13221e5c91bb1c2b17edf7015bb79498f73bc8dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Extr/Variant7e603d81aad9f36c4864f0db13221e5c91bb1c2b17edf7015bb79498f73bc8dd.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c998f263663929acb9d38825c121c688bdb1a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
