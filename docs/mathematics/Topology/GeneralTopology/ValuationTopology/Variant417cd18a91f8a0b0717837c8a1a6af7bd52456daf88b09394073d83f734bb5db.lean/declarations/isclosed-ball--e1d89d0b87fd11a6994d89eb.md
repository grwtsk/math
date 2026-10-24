# isClosed_ball

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e6f007ddb26082c407620e6c91a0521cb94a755",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:519f83f2-53fc-61cc-1698-2f1c6c2b023a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1ae0169a-5a8a-f6f7-dc6a-200db25de83e",
  "kind": "theorem",
  "lexical_name": "isClosed_ball",
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
  "slug": "isclosed-ball--e1d89d0b87fd11a6994d89eb",
  "source": {
    "blob": "5e6f007ddb26082c407620e6c91a0521cb94a755",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 169,
    "path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1d89d0b87fd11a6994d89eb18d0c1b938fe5c443dd214c4960e0681bb61b88b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae0169a-5a8a-f6f7-dc6a-200db25de83e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_ball (r : Γ₀) : IsClosed (X := R) {x | v x < r} := by
  rcases eq_or_ne r 0 with rfl|hr
  · simp
  exact AddSubgroup.isClosed_of_isOpen
    (Valuation.ltAddSubgroup v (Units.mk0 r hr))
    (isOpen_ball _ _)

/-- An open ball centred at the origin in a valued ring is clopen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e6f007ddb26082c407620e6c91a0521cb94a755` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
