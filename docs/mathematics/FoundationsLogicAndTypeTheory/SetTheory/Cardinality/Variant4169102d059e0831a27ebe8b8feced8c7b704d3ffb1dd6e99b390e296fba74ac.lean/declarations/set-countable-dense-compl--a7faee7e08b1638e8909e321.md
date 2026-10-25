# Set.Countable.dense_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1cc17f5a5cf27b8eaf894cfc835d26c4716a9c3f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ecae0c8d-3d21-3d17-5dc5-3cd6cbf42ceb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01b00bda-3c44-dcee-69d8-3b85bb5bf850",
  "kind": "theorem",
  "lexical_name": "Set.Countable.dense_compl",
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
  "slug": "set-countable-dense-compl--a7faee7e08b1638e8909e321",
  "source": {
    "blob": "1cc17f5a5cf27b8eaf894cfc835d26c4716a9c3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a7faee7e08b1638e8909e3217aa1a645670a6f4f2056eac07f7a27ee40e50e48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01b00bda-3c44-dcee-69d8-3b85bb5bf850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Set.Countable.dense_compl
    {E : Type u} (𝕜 : Type*) [NontriviallyNormedField 𝕜] [CompleteSpace 𝕜] [AddCommGroup E]
    [Module 𝕜 E] [Nontrivial E] [TopologicalSpace E] [ContinuousAdd E] [ContinuousSMul 𝕜 E]
    {s : Set E} (hs : s.Countable) : Dense sᶜ := by
  rw [← interior_eq_empty_iff_dense_compl]
  by_contra H
  apply lt_irrefl (ℵ₀ : Cardinal.{u})
  calc
    (ℵ₀ : Cardinal.{u}) < 𝔠 := aleph0_lt_continuum
    _ ≤ #(interior s) :=
      continuum_le_cardinal_of_isOpen 𝕜 isOpen_interior (notMem_singleton_empty.1 H)
    _ ≤ #s := mk_le_mk_of_subset interior_subset
    _ ≤ ℵ₀ := le_aleph0 hs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cardinality/Variant4169102d059e0831a27ebe8b8feced8c7b704d3ffb1dd6e99b390e296fba74ac.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cc17f5a5cf27b8eaf894cfc835d26c4716a9c3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
