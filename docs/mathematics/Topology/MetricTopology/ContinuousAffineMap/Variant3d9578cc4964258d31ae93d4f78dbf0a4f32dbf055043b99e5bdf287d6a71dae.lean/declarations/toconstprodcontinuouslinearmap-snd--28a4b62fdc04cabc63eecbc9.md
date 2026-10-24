# toConstProdContinuousLinearMap_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8b49892f12821ace044443b8061b099706c5450",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 140,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8553527b-2ff1-734c-4a5f-617ef099f8f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4fba31de-9a57-8dab-7ab3-4fffc1dc242a",
  "kind": "theorem",
  "lexical_name": "toConstProdContinuousLinearMap_snd",
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
  "slug": "toconstprodcontinuouslinearmap-snd--28a4b62fdc04cabc63eecbc9",
  "source": {
    "blob": "d8b49892f12821ace044443b8061b099706c5450",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28a4b62fdc04cabc63eecbc94d8d505256c9ff34aacebd33899f7d5bcba96b92",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4fba31de-9a57-8dab-7ab3-4fffc1dc242a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toConstProdContinuousLinearMap_snd (f : V →ᴬ[𝕜] W) :
    (toConstProdContinuousLinearMap 𝕜 V W f).snd = f.contLinear :=
  rfl

end Seminormed

section Normed

variable [NormedAddCommGroup V] [NormedAddCommGroup W]
variable [NontriviallyNormedField 𝕜] [NormedSpace 𝕜 V] [NormedSpace 𝕜 W]
variable [MetricSpace Q] [NormedAddTorsor W Q]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ContinuousAffineMap/Variant3d9578cc4964258d31ae93d4f78dbf0a4f32dbf055043b99e5bdf287d6a71dae.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8b49892f12821ace044443b8061b099706c5450` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
