# mfderivWithin_comp_of_preimage_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19eb776f5780ad4650a415a82bf6f3d7aeaa18dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e2f601c2-964b-d028-93a1-be68ea8cc8a2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fdcf7a2d-0058-107c-fcb4-e50d0242ee4b",
  "kind": "theorem",
  "lexical_name": "mfderivWithin_comp_of_preimage_mem_nhdsWithin",
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
  "slug": "mfderivwithin-comp-of-preimage-mem-nhdswithin--27eb0ad0d9e076f8c1161991",
  "source": {
    "blob": "19eb776f5780ad4650a415a82bf6f3d7aeaa18dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1193,
    "line": 1179,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27eb0ad0d9e076f8c1161991fd62e35fa08b2ee71e7a394239d916f47d883cab",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fdcf7a2d-0058-107c-fcb4-e50d0242ee4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1179–1193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mfderivWithin_comp_of_preimage_mem_nhdsWithin
    (hg : MDifferentiableWithinAt I' I'' g u (f x))
    (hf : MDifferentiableWithinAt I I' f s x) (h : f ⁻¹' u ∈ 𝓝[s] x)
    (hxs : UniqueMDiffWithinAt I s x) :
    mfderivWithin I I'' (g ∘ f) s x =
      (mfderivWithin I' I'' g u (f x)).comp (mfderivWithin I I' f s x) := by
  have A : s ∩ f ⁻¹' u ∈ 𝓝[s] x := Filter.inter_mem self_mem_nhdsWithin h
  have B : mfderivWithin I I'' (g ∘ f) s x = mfderivWithin I I'' (g ∘ f) (s ∩ f ⁻¹' u) x := by
    apply MDifferentiableWithinAt.mfderivWithin_mono_of_mem_nhdsWithin _ hxs A
    exact hg.comp _ (hf.mono inter_subset_left) inter_subset_right
  have C : mfderivWithin I I' f s x = mfderivWithin I I' f (s ∩ f ⁻¹' u) x :=
    MDifferentiableWithinAt.mfderivWithin_mono_of_mem_nhdsWithin (hf.mono inter_subset_left) hxs A
  rw [B, C]
  exact mfderivWithin_comp _ hg (hf.mono inter_subset_left) inter_subset_right (hxs.inter' h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant0051813537bd8c872497b48d756707a8577941448f0fe8e52d26466501098637.lean#L1179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19eb776f5780ad4650a415a82bf6f3d7aeaa18dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
