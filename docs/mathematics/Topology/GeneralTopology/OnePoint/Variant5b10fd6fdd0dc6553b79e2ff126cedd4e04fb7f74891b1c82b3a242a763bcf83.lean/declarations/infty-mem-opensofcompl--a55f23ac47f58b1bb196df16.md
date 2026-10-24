# infty_mem_opensOfCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a1f78a4-36e9-1f4b-3a13-1eb02a351ecb",
  "kind": "theorem",
  "lexical_name": "infty_mem_opensOfCompl",
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
  "slug": "infty-mem-opensofcompl--a55f23ac47f58b1bb196df16",
  "source": {
    "blob": "ebfc4a87d097924644bff8effb05f637dffd72e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 266,
    "path": "GRWTSK/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a55f23ac47f58b1bb196df1602a9a78e8eee37022130f0ccf5ff8bf7bd039729",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0a1f78a4-36e9-1f4b-3a13-1eb02a351ecb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infty_mem_opensOfCompl {s : Set X} (h₁ : IsClosed s) (h₂ : IsCompact s) :
    ∞ ∈ opensOfCompl s h₁ h₂ :=
  mem_compl infty_not_mem_image_coe
#align alexandroff.infty_mem_opens_of_compl OnePoint.infty_mem_opensOfCompl

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OnePoint/Variant5b10fd6fdd0dc6553b79e2ff126cedd4e04fb7f74891b1c82b3a242a763bcf83.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ebfc4a87d097924644bff8effb05f637dffd72e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
