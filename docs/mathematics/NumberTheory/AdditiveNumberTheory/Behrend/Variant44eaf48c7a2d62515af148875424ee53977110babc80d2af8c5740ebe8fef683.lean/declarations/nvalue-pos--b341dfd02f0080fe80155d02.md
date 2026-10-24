# nValue_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:881d3cd2-e5e1-abc4-36b7-dceb8c81cd1e",
  "kind": "theorem",
  "lexical_name": "nValue_pos",
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
  "slug": "nvalue-pos--b341dfd02f0080fe80155d02",
  "source": {
    "blob": "eba11409f746e83907ea713f3bf49fbd27f455b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 387,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b341dfd02f0080fe80155d02b9a31ec0f92513c3409ef6fa29c03b09bbc2ec2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:881d3cd2-e5e1-abc4-36b7-dceb8c81cd1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nValue_pos (hN : 2 ≤ N) : 0 < nValue N :=
  ceil_pos.2 <| Real.sqrt_pos.2 <| log_pos <| one_lt_cast.2 <| hN
#align behrend.n_value_pos Behrend.nValue_pos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba11409f746e83907ea713f3bf49fbd27f455b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
