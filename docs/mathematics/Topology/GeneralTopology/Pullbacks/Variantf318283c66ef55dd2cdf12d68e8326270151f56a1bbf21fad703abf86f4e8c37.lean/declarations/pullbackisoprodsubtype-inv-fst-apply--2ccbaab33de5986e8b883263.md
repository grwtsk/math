# pullbackIsoProdSubtype_inv_fst_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cb84c3e-10a7-e675-825a-485edc8dcb54",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9baea967-9bd3-3593-9796-7f070de387dc",
  "kind": "theorem",
  "lexical_name": "pullbackIsoProdSubtype_inv_fst_apply",
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
  "slug": "pullbackisoprodsubtype-inv-fst-apply--2ccbaab33de5986e8b883263",
  "source": {
    "blob": "367d7864bfcf0f8c68f9edfb33aa7e2066c11321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ccbaab33de5986e8b883263484e3de06cb999498b049adfb63337e822459053",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9baea967-9bd3-3593-9796-7f070de387dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackIsoProdSubtype_inv_fst_apply (f : X ⟶ Z) (g : Y ⟶ Z)
    (x : { p : X × Y // f p.1 = g p.2 }) :
    pullback.fst f g ((pullbackIsoProdSubtype f g).inv x) = (x : X × Y).fst :=
  ConcreteCategory.congr_hom (pullbackIsoProdSubtype_inv_fst f g) x

set_option backward.isDefEq.respectTransparency false in
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variantf318283c66ef55dd2cdf12d68e8326270151f56a1bbf21fad703abf86f4e8c37.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `367d7864bfcf0f8c68f9edfb33aa7e2066c11321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
