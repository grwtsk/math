# Filter.Tendsto.IccExtend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74b1d38fe5205b49e194ba439154d239bf943088",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 25,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2aba1af7-6c60-d65a-65ed-48596d41c5ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ea013d0-86d6-00b5-ef02-b170e91a190c",
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
  "slug": "filter-tendsto-iccextend--bf6f6f288b4b22fbd4354fb7",
  "source": {
    "blob": "74b1d38fe5205b49e194ba439154d239bf943088",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf6f6f288b4b22fbd4354fb78cfa4768a6244ad98c7ac26963e869d9826f5acf",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea013d0-86d6-00b5-ef02-b170e91a190c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Filter.Tendsto.IccExtend (f : γ → Icc a b → β) {la : Filter α} {lb : Filter β}
    {lc : Filter γ} (hf : Tendsto ↿f (lc ×ˢ la.map (projIcc a b h)) lb) :
    Tendsto (↿(IccExtend h ∘ f)) (lc ×ˢ la) lb :=
  hf.comp <| tendsto_id.prodMap tendsto_map

variable [TopologicalSpace α] [OrderTopology α] [TopologicalSpace β] [TopologicalSpace γ]

@[continuity, fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProjIcc/Variantc9381ad59b712957a877a217b75cb1ea688c2dba511ae88907acb3dcf15c8e7b.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b1d38fe5205b49e194ba439154d239bf943088` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
