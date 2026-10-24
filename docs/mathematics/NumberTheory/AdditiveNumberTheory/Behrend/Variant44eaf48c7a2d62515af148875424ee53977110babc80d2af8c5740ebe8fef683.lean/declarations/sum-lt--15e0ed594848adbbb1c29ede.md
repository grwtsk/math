# sum_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:319374bf-d090-7208-0fb3-a980df68a0f3",
  "kind": "theorem",
  "lexical_name": "sum_lt",
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
  "slug": "sum-lt--15e0ed594848adbbb1c29ede",
  "source": {
    "blob": "eba11409f746e83907ea713f3bf49fbd27f455b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 217,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15e0ed594848adbbb1c29ede23e803c6ca2260bb41c2fc65c717979efa952f0f",
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

Occurrence: `result:319374bf-d090-7208-0fb3-a980df68a0f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_lt : (∑ i : Fin n, d * (2 * d + 1) ^ (i : ℕ)) < (2 * d + 1) ^ n :=
  sum_eq.trans_lt <| (Nat.div_le_self _ 2).trans_lt <| pred_lt (pow_pos (succ_pos _) _).ne'
#align behrend.sum_lt Behrend.sum_lt

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eba11409f746e83907ea713f3bf49fbd27f455b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
