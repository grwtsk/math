# normalizerMonoidHom_ker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92f25a91-68ac-f6f4-48a6-1c96cdc12680",
  "kind": "theorem",
  "lexical_name": "normalizerMonoidHom_ker",
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
  "slug": "normalizermonoidhom-ker--dc5f55334f0fbbf7c94cdb34",
  "source": {
    "blob": "411d987150b183b689816683ea0f30f7bf6baa71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 206,
    "path": "GRWTSK/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5f55334f0fbbf7c94cdb347afa62f008d357279bd1894264f868d32ba0f0fb",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92f25a91-68ac-f6f4-48a6-1c96cdc12680`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizerMonoidHom_ker :
    H.normalizerMonoidHom.ker = (centralizer H).subgroupOf (normalizer H : Subgroup G) := by
  simp [Subgroup.ext_iff, DFunLike.ext_iff, Subtype.ext_iff,
    mem_subgroupOf, mem_centralizer_iff, eq_mul_inv_iff_mul_eq, eq_comm]

end Subgroup
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Centralizer/Variante27fe13be20e4aea562043b1c6671256fd25c53641095aae7eff84c45a64c5c3.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `411d987150b183b689816683ea0f30f7bf6baa71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
