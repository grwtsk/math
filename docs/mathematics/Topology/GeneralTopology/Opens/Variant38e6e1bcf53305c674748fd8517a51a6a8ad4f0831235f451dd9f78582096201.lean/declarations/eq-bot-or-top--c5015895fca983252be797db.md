# eq_bot_or_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45c6cd630b991a156c8b9457758311adace1db86",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 276,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d7b3eac1-5e01-eaa7-bcbc-2e395f1910fe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a337344-1a50-d6bd-a7d4-e94234a27bd6",
  "kind": "theorem",
  "lexical_name": "eq_bot_or_top",
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
  "slug": "eq-bot-or-top--c5015895fca983252be797db",
  "source": {
    "blob": "45c6cd630b991a156c8b9457758311adace1db86",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 276,
    "path": "GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5015895fca983252be797dbfb5f8764d56ca6a418dae53cf095d40ad90171c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a337344-1a50-d6bd-a7d4-e94234a27bd6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_bot_or_top {α} [t : TopologicalSpace α] (h : t = ⊤) (U : Opens α) : U = ⊥ ∨ U = ⊤ := by
  subst h; letI : TopologicalSpace α := ⊤
  rw [← coe_eq_empty, ← coe_eq_univ, ← isOpen_top_iff]
  exact U.2
#align topological_space.opens.eq_bot_or_top TopologicalSpace.Opens.eq_bot_or_top

-- porting note: new instance
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Opens/Variant38e6e1bcf53305c674748fd8517a51a6a8ad4f0831235f451dd9f78582096201.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45c6cd630b991a156c8b9457758311adace1db86` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
