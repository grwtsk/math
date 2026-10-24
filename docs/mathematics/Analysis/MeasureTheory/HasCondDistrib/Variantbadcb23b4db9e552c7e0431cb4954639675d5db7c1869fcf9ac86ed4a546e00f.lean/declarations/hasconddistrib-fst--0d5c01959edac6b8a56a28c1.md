# HasCondDistrib.fst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff80fb950ba1beb61c99d250c4435dc094328154",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/badcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83078e1d-06e7-ef5b-b666-fca09c0463cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dafacdfb-ad80-e8f7-f9c9-10f9f98724bb",
  "kind": "lemma",
  "lexical_name": "HasCondDistrib.fst",
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
  "slug": "hasconddistrib-fst--0d5c01959edac6b8a56a28c1",
  "source": {
    "blob": "ff80fb950ba1beb61c99d250c4435dc094328154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 77,
    "path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d5c01959edac6b8a56a28c1a5483a13d2cd25d205212a5890f6a583df34c268",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dafacdfb-ad80-e8f7-f9c9-10f9f98724bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasCondDistrib.fst {Y : Ω → 𝓨 × 𝓩} {κ : Kernel 𝓧 (𝓨 × 𝓩)} [IsSFiniteKernel κ]
    (h : HasCondDistrib Y X κ P) :
    HasCondDistrib (fun ω ↦ (Y ω).1) X κ.fst P := by
  rw [Kernel.fst_eq]
  exact h.comp_left measurable_fst

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff80fb950ba1beb61c99d250c4435dc094328154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
