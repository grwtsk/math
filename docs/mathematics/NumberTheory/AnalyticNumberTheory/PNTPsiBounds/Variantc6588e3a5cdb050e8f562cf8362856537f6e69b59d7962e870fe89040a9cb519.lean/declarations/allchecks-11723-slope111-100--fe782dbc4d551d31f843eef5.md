# allChecks_11723_slope111_100

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "510488f3941415f627465d15fa4a39fddfb20d78",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 28,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf5c4c65-3efd-8699-98a3-76618eeb0937",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c010dffb-0db9-6a66-e18b-b4910a632fa2",
  "kind": "theorem",
  "lexical_name": "allChecks_11723_slope111_100",
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
  "slug": "allchecks-11723-slope111-100--fe782dbc4d551d31f843eef5",
  "source": {
    "blob": "510488f3941415f627465d15fa4a39fddfb20d78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 28,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe782dbc4d551d31f843eef552e98f3d18cd1032b06af14e6639a2ab70932fd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c010dffb-0db9-6a66-e18b-b4910a632fa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem allChecks_11723_slope111_100 : checkAllPsiLeMulWith 11723 (111 / 100) 20 = true := by native_decide

/-- For each N ≤ 11723, `checkPsiLeMulWith` holds at slope `111/100`.
    Derived from allChecks_11723_slope111_100 via the formal bridge
    `checkAllPsiLeMulWith_implies_checkPsiLeMulWith`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/PNTPsiBounds/Variantc6588e3a5cdb050e8f562cf8362856537f6e69b59d7962e870fe89040a9cb519.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `510488f3941415f627465d15fa4a39fddfb20d78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
