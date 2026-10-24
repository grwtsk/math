# tendsto_approxOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d38865f554b7eb8d9da798cfb08050bd4353fb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4eb0e81-bd8e-f098-9390-9382370ad96c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7c985ae-badd-4217-ee5b-941f1e9ce701",
  "kind": "theorem",
  "lexical_name": "tendsto_approxOn",
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
  "slug": "tendsto-approxon--0192645f0efe1b5620d6db96",
  "source": {
    "blob": "9d38865f554b7eb8d9da798cfb08050bd4353fb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 154,
    "path": "GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0192645f0efe1b5620d6db9613b814c594dd329733bf67766616f40f10445be8",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7c985ae-badd-4217-ee5b-941f1e9ce701`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_approxOn {f : β → α} (hf : Measurable f) {s : Set α} {y₀ : α} (h₀ : y₀ ∈ s)
    [SeparableSpace s] {x : β} (hx : f x ∈ closure s) :
    Tendsto (fun n => approxOn f hf s y₀ h₀ n x) atTop (𝓝 <| f x) := by
  haveI : Nonempty s := ⟨⟨y₀, h₀⟩⟩
  rw [← @Subtype.range_coe _ s, ← image_univ, ← (denseRange_denseSeq s).closure_eq] at hx
  simp (config := { iota := false }) only [approxOn, coe_comp]
  refine' tendsto_nearestPt (closure_minimal _ isClosed_closure hx)
  simp (config := { iota := false }) only [Nat.range_casesOn, closure_union, range_comp]
  exact
    Subset.trans (image_closure_subset_closure_image continuous_subtype_val)
      (subset_union_right _ _)
#align measure_theory.simple_func.tendsto_approx_on MeasureTheory.SimpleFunc.tendsto_approxOn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/SimpleFuncDense/Variant0685c1038e8d6b592712ee694da7551369813ad652f193c81abcdb2563aad106.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d38865f554b7eb8d9da798cfb08050bd4353fb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
