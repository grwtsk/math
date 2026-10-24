# HasCondDistrib.comp_right

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
      "line": 89,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ba/badcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b69325b0-24d8-1ccf-902f-20309e0b9767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2948f4c-14a2-e75c-5b27-8113e783fa71",
  "kind": "lemma",
  "lexical_name": "HasCondDistrib.comp_right",
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
  "slug": "hasconddistrib-comp-right--c6648ef94e4e2825c3a1a73a",
  "source": {
    "blob": "ff80fb950ba1beb61c99d250c4435dc094328154",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 89,
    "path": "GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6648ef94e4e2825c3a1a73a0463f01e6bfbc07107de1028428ee21d364ddc09",
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

Occurrence: `result:e2948f4c-14a2-e75c-5b27-8113e783fa71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HasCondDistrib.comp_right {f : 𝓩 → 𝓧}
    {hf : Measurable f} {Z : Ω → 𝓩} (h : HasCondDistrib Y Z (κ.comap f hf) P) :
    HasCondDistrib Y (f ∘ Z) κ P where
  map_eq := calc
    P.map (fun a ↦ ((f ∘ Z) a, Y a))
    _ = (P.map (fun a ↦ (Z a, Y a))).map (Prod.map f id) := by
        rw [AEMeasurable.map_map_of_aemeasurable (by fun_prop) (by fun_prop)]
        rfl
    _ = (P.map Z ⊗ₘ κ.comap f hf).map (Prod.map f id) := by rw [h.map_eq]
    _ = (P.map Z).map f ⊗ₘ κ := by
        ext s hs
        rw [Measure.map_apply (by fun_prop) hs, Measure.compProd_apply (by measurability),
          Measure.compProd_apply hs, lintegral_map (Kernel.measurable_kernel_prodMk_left hs) hf]
        rfl
    _ = P.map (f ∘ Z) ⊗ₘ κ := by
        rw [AEMeasurable.map_map_of_aemeasurable hf.aemeasurable (by fun_prop)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/HasCondDistrib/Variantbadcb23b4db9e552c7e0431cb4954639675d5db7c1869fcf9ac86ed4a546e00f.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff80fb950ba1beb61c99d250c4435dc094328154` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
