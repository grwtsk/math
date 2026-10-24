# MeasureTheory.MemLp.continuousLinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 714,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b7c1c780-9537-b994-4e8c-6e657d306c1d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f152972d-2a0e-f49b-4357-941a8b1ae895",
  "kind": "lemma",
  "lexical_name": "MeasureTheory.MemLp.continuousLinearMap_comp",
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
  "slug": "measuretheory-memlp-continuouslinearmap-comp--2be1b97481967db6ec140b4e",
  "source": {
    "blob": "49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 721,
    "line": 714,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2be1b97481967db6ec140b4e54b7ff37219bc2805bce19e0664a153a2087c605",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f152972d-2a0e-f49b-4357-941a8b1ae895`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–721.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MeasureTheory.MemLp.continuousLinearMap_comp [NontriviallyNormedField 𝕜]
    [NormedSpace 𝕜 E] [NormedSpace 𝕜 F] {f : α → E}
    (h_Lp : MemLp f p μ) (L : E →L[𝕜] F) :
    MemLp (fun x ↦ L (f x)) p μ :=
  LipschitzWith.comp_memLp L.lipschitzWith (by simp) h_Lp

namespace LipschitzWith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc6ebac08d43b0098dbbfdca2f88c8ca9afebfc1a459711e3b9d78520ba96cb.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49ca798a7ffe3002a1d2ce7ae7ba6d06291406b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
