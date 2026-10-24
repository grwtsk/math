# hasSum_iff_hasSum_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fd5e5a5b647be5d3ad0455c6a8eb46ca3a5dc69",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c04ed16-eed1-88a8-b310-63c9de502810",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4b964947-47f3-4a05-f4fc-4e50b32e3b75",
  "kind": "theorem",
  "lexical_name": "hasSum_iff_hasSum_compl",
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
  "slug": "hassum-iff-hassum-compl--bf95169222a8506c6ebc4f4e",
  "source": {
    "blob": "0fd5e5a5b647be5d3ad0455c6a8eb46ca3a5dc69",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 19,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf95169222a8506c6ebc4f4e3881ebd576c663fcdab74f81623e64819c8d26ea",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b964947-47f3-4a05-f4fc-4e50b32e3b75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_iff_hasSum_compl (f : β → α) (a : α) :
    HasSum (toCompl ∘ f) a ↔ HasSum f a := (isDenseInducing_toCompl α).hasSum_iff f a

/-- A function `f` is summable in a uniform additive group `α` if and only if it is summable in
`Completion α` and its sum in `Completion α` lies in the range of `toCompl : α →+ Completion α`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/GroupCompletion/Variante9ccc197d3009ef59bf67b61de37e442b6fa54f1c3649e05927ddc1ce60e6a59.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fd5e5a5b647be5d3ad0455c6a8eb46ca3a5dc69` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
