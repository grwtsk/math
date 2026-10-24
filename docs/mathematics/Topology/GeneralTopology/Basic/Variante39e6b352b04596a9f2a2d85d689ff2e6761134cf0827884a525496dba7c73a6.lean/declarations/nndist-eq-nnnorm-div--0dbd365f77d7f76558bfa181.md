# nndist_eq_nnnorm_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86139e96-0005-4829-5d19-fe22ab9bac82",
  "kind": "theorem",
  "lexical_name": "nndist_eq_nnnorm_div",
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
  "slug": "nndist-eq-nnnorm-div--0dbd365f77d7f76558bfa181",
  "source": {
    "blob": "c700082d1a0bf4ea8779800957d94d938ec63c17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 922,
    "line": 914,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbd365f77d7f76558bfa18154d2fe6dce6b336aa4a7d930a3eab8731954105c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86139e96-0005-4829-5d19-fe22ab9bac82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–922.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_eq_nnnorm_div (a b : E) : nndist a b = ‖a / b‖₊ :=
  NNReal.eq <| dist_eq_norm_div _ _
#align nndist_eq_nnnorm_div nndist_eq_nnnorm_div
#align nndist_eq_nnnorm_sub nndist_eq_nnnorm_sub

alias nndist_eq_nnnorm := nndist_eq_nnnorm_sub
#align nndist_eq_nnnorm nndist_eq_nnnorm

@[to_additive (attr := simp) nnnorm_zero]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante39e6b352b04596a9f2a2d85d689ff2e6761134cf0827884a525496dba7c73a6.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700082d1a0bf4ea8779800957d94d938ec63c17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
