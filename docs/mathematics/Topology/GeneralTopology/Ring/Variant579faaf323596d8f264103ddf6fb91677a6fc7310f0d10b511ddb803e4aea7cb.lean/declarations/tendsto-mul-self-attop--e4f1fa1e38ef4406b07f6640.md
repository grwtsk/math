# tendsto_mul_self_atTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6cb48c36b5a31625d333d91321569626d0dc1a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 27,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/57/579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21d34d70-2c34-380f-f62d-c517630a802f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f60240a2-cc3c-bfda-19d4-ab9cd98bb005",
  "kind": "theorem",
  "lexical_name": "tendsto_mul_self_atTop",
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
  "slug": "tendsto-mul-self-attop--e4f1fa1e38ef4406b07f6640",
  "source": {
    "blob": "f6cb48c36b5a31625d333d91321569626d0dc1a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 27,
    "path": "GRWTSK/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4f1fa1e38ef4406b07f66400523d280ac0f0e3f2ae5dcb0236d41cfeddbf656",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f60240a2-cc3c-bfda-19d4-ab9cd98bb005`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mul_self_atTop : Tendsto (fun x : α => x * x) atTop atTop :=
  tendsto_id.atTop_mul_atTop₀ tendsto_id

/-- The monomial function `x^n` tends to `+∞` at `+∞` for any positive natural `n`.
A version for positive real powers exists as `tendsto_rpow_atTop`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ring/Variant579faaf323596d8f264103ddf6fb91677a6fc7310f0d10b511ddb803e4aea7cb.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6cb48c36b5a31625d333d91321569626d0dc1a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
