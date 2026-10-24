# Filter.Tendsto.IccExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39781304-50e9-f953-90d0-eef655b080a1",
  "kind": "theorem",
  "lexical_name": "Filter.Tendsto.IccExtend",
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
  "slug": "filter-tendsto-iccextend--2e0f819410966cb1fce3e096",
  "source": {
    "blob": "5e07022e86e3b295ce2e98e659891fbb43367a88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e0f819410966cb1fce3e096430a3131b123c921832c08aba55fec68b071c7e6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39781304-50e9-f953-90d0-eef655b080a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.Tendsto.IccExtend (f : γ → Icc a b → β) {la : Filter α} {lb : Filter β}
    {lc : Filter γ} (hf : Tendsto (↿f) (lc ×ˢ la.map (projIcc a b h)) lb) :
    Tendsto (↿(IccExtend h ∘ f)) (lc ×ˢ la) lb :=
  hf.comp <| tendsto_id.prodMap tendsto_map

variable [TopologicalSpace α] [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

@[continuity]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProjIcc/Variant61fc516954ca7b2ea738fe99bb98ef6d8f0f68d40ef3f219b8e0f16f427244d9.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e07022e86e3b295ce2e98e659891fbb43367a88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
