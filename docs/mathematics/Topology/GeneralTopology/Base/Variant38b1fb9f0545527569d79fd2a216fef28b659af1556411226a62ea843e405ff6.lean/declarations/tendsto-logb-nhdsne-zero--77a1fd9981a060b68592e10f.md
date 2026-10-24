# tendsto_logb_nhdsNE_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56cc5252-5a5e-eb37-e71b-18e36ad2fa1c",
  "kind": "theorem",
  "lexical_name": "tendsto_logb_nhdsNE_zero",
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
  "slug": "tendsto-logb-nhdsne-zero--77a1fd9981a060b68592e10f",
  "source": {
    "blob": "82d46af9d1afa92069eb90feba1e9e9dca088fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 429,
    "path": "GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77a1fd9981a060b68592e10f2b64b1473febd0fb510863ff7eae635f4a07e369",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56cc5252-5a5e-eb37-e71b-18e36ad2fa1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_logb_nhdsNE_zero (hb : 1 < b) : Tendsto (logb b) (𝓝[≠] 0) atBot :=
  tendsto_log_nhdsNE_zero.atBot_div_const (log_pos hb)

@[deprecated (since := "2025-03-18")]
alias tendsto_logb_nhdsWithin_zero := tendsto_logb_nhdsNE_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Base/Variant38b1fb9f0545527569d79fd2a216fef28b659af1556411226a62ea843e405ff6.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82d46af9d1afa92069eb90feba1e9e9dca088fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
