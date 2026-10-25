# IsBasis'.cardinalMk_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c57f969e1bbe23dff645282afa114a88f8dc0148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/aded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a548fcde-e5aa-c6b8-19dc-5a36200c9172",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af827aaa-b495-4c5a-0eec-4ba1b8bac028",
  "kind": "theorem",
  "lexical_name": "IsBasis'.cardinalMk_eq",
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
  "slug": "isbasis-cardinalmk-eq--f79ef4758b7eebefe60bb661",
  "source": {
    "blob": "c57f969e1bbe23dff645282afa114a88f8dc0148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f79ef4758b7eebefe60bb661eb0c9dcd7edd2b28485ad829e043719f0cbebd26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af827aaa-b495-4c5a-0eec-4ba1b8bac028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBasis'.cardinalMk_eq (hIX : M.IsBasis' I X) (hJX : M.IsBasis' J X) : #I = #J :=
  hIX.isBasis_inter_ground.cardinalMk_eq hJX.isBasis_inter_ground

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinal/Variantaded3b1962dfb6a1569559ba7770b21a4ff39ee9d3cbd474321ba7d560b96ef4.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c57f969e1bbe23dff645282afa114a88f8dc0148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
