# getD_alter_self

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
      "line": 4645,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/acd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:111bafa5-a327-1a09-7889-e6c83b3b7cbc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc416e7b-84cc-4468-4b14-e4f0e976d966",
  "kind": "theorem",
  "lexical_name": "getD_alter_self",
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
  "slug": "getd-alter-self--c6a5ca7b2ca94bf0ecc3e3b6",
  "source": {
    "blob": "13c29419aaafda8f0eee9bb6cf8954e939512f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4650,
    "line": 4645,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6a5ca7b2ca94bf0ecc3e3b633267b14d509e097e47b61a79c8877b5a16f8700",
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

Occurrence: `result:fc416e7b-84cc-4468-4b14-e4f0e976d966`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4645–4650.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_alter_self [EquivBEq α] [LawfulHashable α] {k : α} {fallback : β}
    {f : Option β → Option β} (h : m.WF) :
    Const.getD (Const.alter m k f) k fallback = (f (Const.get? m k)).getD fallback := by
  simp [getD_alter h]

@[grind =]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantacd2a9e0703707a33fe1836124c49431e436315ce9a6b5b5b5b72064bf01ceb3.lean#L4645).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13c29419aaafda8f0eee9bb6cf8954e939512f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
