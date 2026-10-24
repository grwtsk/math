# eq_zero_iff_continuousWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 78,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf506829-b0d7-b7e4-f8a6-e295502eab04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4549bf03-114d-dd67-e1f4-6e6e5685a344",
  "kind": "theorem",
  "lexical_name": "eq_zero_iff_continuousWithinAt",
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
  "slug": "eq-zero-iff-continuouswithinat--3ba2e809baddd794a5762c81",
  "source": {
    "blob": "7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba2e809baddd794a5762c812fc0d35a706e21a493c95547d5690862e30e3739",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4549bf03-114d-dd67-e1f4-6e6e5685a344`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_iff_continuousWithinAt [TopologicalSpace E] (f : E → F) {D : Set E}
    {x : E} (xD : x ∈ D) : oscillationWithin f D x = 0 ↔ ContinuousWithinAt f D x := by
  refine ⟨fun hf ↦ EMetric.tendsto_nhds.mpr (fun ε ε0 ↦ ?_), fun hf ↦ hf.oscillationWithin_eq_zero⟩
  simp_rw [← hf, oscillationWithin, iInf_lt_iff] at ε0
  obtain ⟨S, hS, Sε⟩ := ε0
  refine Filter.mem_of_superset hS (fun y hy ↦ lt_of_le_of_lt ?_ Sε)
  exact edist_le_diam_of_mem (mem_preimage.1 hy) <| mem_preimage.1 (mem_of_mem_nhdsWithin xD hS)

end OscillationWithin

namespace Oscillation

/-- The oscillation of `f` at `x` is 0 if and only if `f` is continuous at `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Oscillation/Variantcc66fa2d2cef9d5b1dbf459c5dfffb9a6286d45712246d6f50b7fc60c919c90e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a32aec3b3fa69ef0f35ce3f4af8e590d0cca858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
