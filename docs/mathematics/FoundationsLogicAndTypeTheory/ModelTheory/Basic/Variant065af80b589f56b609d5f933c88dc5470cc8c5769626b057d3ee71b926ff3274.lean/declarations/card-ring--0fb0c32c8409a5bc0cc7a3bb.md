# card_ring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4009f2f613c89811b88cd6570fe75c531e6c481d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f8a1346-a28e-a6d0-cae7-dba79ddb4cb5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf784cac-31e4-aeb9-d97f-7e0cbfc3dee0",
  "kind": "theorem",
  "lexical_name": "card_ring",
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
  "slug": "card-ring--0fb0c32c8409a5bc0cc7a3bb",
  "source": {
    "blob": "4009f2f613c89811b88cd6570fe75c531e6c481d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 139,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fb0c32c8409a5bc0cc7a3bb3b09e649cc752085e210ecfb5b0877f9e8b01f8f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf784cac-31e4-aeb9-d97f-7e0cbfc3dee0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_ring : card Language.ring = 5 := by
  have : Fintype.card Language.ring.Symbols = 5 := rfl
  simp [Language.card, this]

open Language Structure

/-- A Type `R` is a `CompatibleRing` if it is a structure for the language of rings and this
structure is the same as the structure already given on `R` by the classes `Add`, `Mul` etc.

It is recommended to use this type class as a hypothesis to any theorem whose statement
requires a type to have be both a `Ring` (or `Field` etc.) and a
`Language.ring.Structure` -/
/- This class does not extend `Add` etc, because this way it can be used in
combination with a `Ring`, or `Field` instance without having multiple different
`Add` structures on the Type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variant065af80b589f56b609d5f933c88dc5470cc8c5769626b057d3ee71b926ff3274.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4009f2f613c89811b88cd6570fe75c531e6c481d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
