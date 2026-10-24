# applyActiveClearance_clears_exact_residue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d10624ca1c870a1618a0c996b07c10c8d8a7a50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 101,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/25/25bde6efda14d63f1da99a7166b4997406b332afda74af0f35bda66324eb587c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c86b491d-eff4-8860-d486-1999c806a330",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:61f10b9f-c3be-17a3-01ab-4aa4b876a2b5",
  "kind": "theorem",
  "lexical_name": "applyActiveClearance_clears_exact_residue",
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
  "slug": "applyactiveclearance-clears-exact-residue--2fa8aa69df6a8ce8fcd4de50",
  "source": {
    "blob": "9d10624ca1c870a1618a0c996b07c10c8d8a7a50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 101,
    "path": "GRWTSK/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variant25bde6efda14d63f1da99a7166b4997406b332afda74af0f35bda66324eb587c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fa8aa69df6a8ce8fcd4de50bf3a4aa9da1c575550b65ad20711ef844e22749e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variant25bde6efda14d63f1da99a7166b4997406b332afda74af0f35bda66324eb587c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61f10b9f-c3be-17a3-01ab-4aa4b876a2b5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyActiveClearance_clears_exact_residue
    (s : ResidueState) (r : FWR.Residue)
    (h : ActiveClearance s r) :
    r ∈ (applyActiveClearance s r h).cleared := by
  exact applyClearance_clears_exact_residue s r h.clearance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variant25bde6efda14d63f1da99a7166b4997406b332afda74af0f35bda66324eb587c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variant25bde6efda14d63f1da99a7166b4997406b332afda74af0f35bda66324eb587c.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d10624ca1c870a1618a0c996b07c10c8d8a7a50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
