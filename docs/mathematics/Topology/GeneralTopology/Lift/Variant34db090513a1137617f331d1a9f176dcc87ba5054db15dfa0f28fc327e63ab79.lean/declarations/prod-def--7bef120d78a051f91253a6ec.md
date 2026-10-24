# prod_def

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6477d1b05017bbade6769a3774af54a9a59c471",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 344,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ea394f8-97ea-feff-ca15-12241fefed7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1347ca9a-a419-13ea-521e-2666d36cae58",
  "kind": "theorem",
  "lexical_name": "prod_def",
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
  "slug": "prod-def--7bef120d78a051f91253a6ec",
  "source": {
    "blob": "d6477d1b05017bbade6769a3774af54a9a59c471",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 350,
    "line": 344,
    "path": "GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bef120d78a051f91253a6ecda4b50a0841b83d3571803df459baf6d35d94a13",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1347ca9a-a419-13ea-521e-2666d36cae58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–350.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_def {f : Filter α} {g : Filter β} :
    f ×ˢ g = f.lift fun s => g.lift' fun t => s ×ˢ t := by
  simpa only [Filter.lift', Filter.lift, (f.basis_sets.prod g.basis_sets).eq_biInf,
    iInf_prod, iInf_and] using iInf_congr fun i => iInf_comm

alias mem_prod_same_iff := mem_prod_self_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lift/Variant34db090513a1137617f331d1a9f176dcc87ba5054db15dfa0f28fc327e63ab79.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6477d1b05017bbade6769a3774af54a9a59c471` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
