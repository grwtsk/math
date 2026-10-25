# getD_filterMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13c29419aaafda8f0eee9bb6cf8954e939512f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 5500,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f51b2ab7-b150-2cf9-bc4d-9ee24da178e0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:427158b5-baf5-bbde-6074-99308a49418e",
  "kind": "theorem",
  "lexical_name": "getD_filterMap",
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
  "slug": "getd-filtermap--5071df2adfc0279fcbc49b57",
  "source": {
    "blob": "13c29419aaafda8f0eee9bb6cf8954e939512f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 5508,
    "line": 5500,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5071df2adfc0279fcbc49b57d8c1d69c9d68d9bfa4a507b1ae46b35e1bceb880",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:427158b5-baf5-bbde-6074-99308a49418e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 5500–5508.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_filterMap [EquivBEq α] [LawfulHashable α]
    {f : α → β → Option γ} {k : α} {fallback : γ} (h : m.WF) :
    Const.getD (m.filterMap f) k fallback =
      ((Const.get? m k).pbind (fun x h' =>
      f (m.getKey k ((mem_iff_isSome_get? h).mpr (Option.isSome_of_eq_some h'))) x)).getD fallback := by
  simp_to_raw using Raw₀.Const.getD_filterMap

/-- Simpler variant of `getD_filterMap` when `LawfulBEq` is available. -/
@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean#L5500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c29419aaafda8f0eee9bb6cf8954e939512f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
