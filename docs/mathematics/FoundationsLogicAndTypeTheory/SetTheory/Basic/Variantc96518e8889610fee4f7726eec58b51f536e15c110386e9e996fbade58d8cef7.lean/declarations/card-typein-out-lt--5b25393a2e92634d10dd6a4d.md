# card_typein_out_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ba557babeaeb9b7a8102f8396bc55a92dba3650",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1436,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab01217d-2120-ae07-fadd-c7c2c37669bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eb5b389f-12ae-a7cf-701f-11b8955a5a6d",
  "kind": "theorem",
  "lexical_name": "card_typein_out_lt",
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
  "slug": "card-typein-out-lt--5b25393a2e92634d10dd6a4d",
  "source": {
    "blob": "9ba557babeaeb9b7a8102f8396bc55a92dba3650",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1441,
    "line": 1436,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5b25393a2e92634d10dd6a4dc620f2e5e33a6a8fa46b8357c9a09b6e9db573c6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eb5b389f-12ae-a7cf-701f-11b8955a5a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1436–1441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_typein_out_lt (c : Cardinal) (x : c.ord.out.α) :
    card (@typein _ (· < ·) (isWellOrder_out_lt _) x) < c := by
  rw [← lt_ord]
  apply typein_lt_self
#align cardinal.card_typein_out_lt Cardinal.card_typein_out_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variantc96518e8889610fee4f7726eec58b51f536e15c110386e9e996fbade58d8cef7.lean#L1436).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ba557babeaeb9b7a8102f8396bc55a92dba3650` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
