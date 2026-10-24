# map_mconv_monoidHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "351dbf2acb09384ff55c47c28d0cc5ffac1097b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bc792acc-80d9-62cc-7efd-69fe09788ad3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:478e2cc5-287c-2d02-46a6-5745a390afdd",
  "kind": "lemma",
  "lexical_name": "map_mconv_monoidHom",
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
  "slug": "map-mconv-monoidhom--6ea85cab360c56e47bf02c04",
  "source": {
    "blob": "351dbf2acb09384ff55c47c28d0cc5ffac1097b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 181,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ea85cab360c56e47bf02c04cfca7d07c95001927468889e0409e0c7beb48e01",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:478e2cc5-287c-2d02-46a6-5745a390afdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_mconv_monoidHom {M M' : Type*} {mM : MeasurableSpace M} [Monoid M] [MeasurableMul₂ M]
    {mM' : MeasurableSpace M'} [Monoid M'] [MeasurableMul₂ M']
    {μ ν : Measure M} [SFinite μ] [SFinite ν]
    (L : M →* M') (hL : Measurable L) :
    (μ ∗ₘ ν).map L = (μ.map L) ∗ₘ (ν.map L) := by
  unfold mconv
  rw [map_map (by fun_prop) (by fun_prop)]
  have : (L ∘ fun p : M × M ↦ p.1 * p.2) = (fun p : M' × M' ↦ p.1 * p.2) ∘ (Prod.map L L) := by
    ext; simp
  rw [this, ← map_map (by fun_prop) (by fun_prop), ← map_prod_map _ _ (by fun_prop) (by fun_prop)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Convolution/Variantad925748bdd66364668e6a1deed48f4d1ef1ac42299bfca8311a7289c6523d58.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `351dbf2acb09384ff55c47c28d0cc5ffac1097b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
