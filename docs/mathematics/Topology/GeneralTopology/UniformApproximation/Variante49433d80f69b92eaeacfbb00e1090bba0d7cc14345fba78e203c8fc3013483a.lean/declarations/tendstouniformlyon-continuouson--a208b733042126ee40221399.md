# TendstoUniformlyOn.continuousOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d6e8341515dd8ed2978f40a54d4141d1a9c294ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99c74cfb-ed58-3dc7-8a52-73ff3c1f521e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8e12228-bf16-a7af-6bd7-6fe59a3e3996",
  "kind": "theorem",
  "lexical_name": "TendstoUniformlyOn.continuousOn",
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
  "slug": "tendstouniformlyon-continuouson--a208b733042126ee40221399",
  "source": {
    "blob": "d6e8341515dd8ed2978f40a54d4141d1a9c294ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 111,
    "path": "GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a208b733042126ee402213991a3bccc8113f3173389e970f40d027d29c17c728",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8e12228-bf16-a7af-6bd7-6fe59a3e3996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem TendstoUniformlyOn.continuousOn (h : TendstoUniformlyOn F f p s)
    (hc : ∀ᶠ n in p, ContinuousOn (F n) s) [NeBot p] : ContinuousOn f s :=
  h.tendstoLocallyUniformlyOn.continuousOn hc

/-- A locally uniform limit of continuous functions is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformApproximation/Variante49433d80f69b92eaeacfbb00e1090bba0d7cc14345fba78e203c8fc3013483a.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6e8341515dd8ed2978f40a54d4141d1a9c294ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
