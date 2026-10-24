# findExistsOneDivLT_min

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47790cb7466877473b9571c4bea29bf472d8d10b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3c/3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a495e01-40bd-10b8-6ee3-ec025e2d02de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cce9c188-f8c2-b261-7eb2-2609448df44b",
  "kind": "theorem",
  "lexical_name": "findExistsOneDivLT_min",
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
  "slug": "findexistsonedivlt-min--99cd921a0f5e55d4720da62d",
  "source": {
    "blob": "47790cb7466877473b9571c4bea29bf472d8d10b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 115,
    "path": "GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99cd921a0f5e55d4720da62df6ab8e4c35b626ac54c9afa05eff6a5feac40a46",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce9c188-f8c2-b261-7eb2-2609448df44b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem findExistsOneDivLT_min (hi : ¬s ≤[i] 0) {m : ℕ}
    (hm : m < findExistsOneDivLT s i) : ¬ExistsOneDivLT s i m := by
  rw [findExistsOneDivLT, dif_pos hi] at hm
  exact Nat.find_min _ hm

/-- Given the set `i`, if `i` is not negative, `someExistsOneDivLT` chooses the set
`k` from `ExistsOneDivLT s i (findExistsOneDivLT s i)`, otherwise, it returns the
empty set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SignedHahn/Variant3c8a2e160547a2ee896a277177c4f989546668278775c127c69e49f96ef26a90.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47790cb7466877473b9571c4bea29bf472d8d10b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
