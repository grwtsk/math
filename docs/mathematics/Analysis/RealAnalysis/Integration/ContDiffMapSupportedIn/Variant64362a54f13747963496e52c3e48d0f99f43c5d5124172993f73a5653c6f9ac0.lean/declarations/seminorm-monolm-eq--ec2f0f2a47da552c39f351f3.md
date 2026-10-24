# seminorm_monoLM_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61febe388136931eb71d1c284fc1506421af93d4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 828,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5ed4d51d-5c3a-3365-e458-b2ae92462146",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6d7a7219-7c19-877c-466a-cc981b3cab91",
  "kind": "theorem",
  "lexical_name": "seminorm_monoLM_eq",
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
  "slug": "seminorm-monolm-eq--ec2f0f2a47da552c39f351f3",
  "source": {
    "blob": "61febe388136931eb71d1c284fc1506421af93d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 828,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ec2f0f2a47da552c39f351f38f6036ed2c9f0a9cc2efd55114c7fe937c5a21e7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6d7a7219-7c19-877c-466a-cc981b3cab91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 828–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminorm_monoLM_eq {i : ℕ} (h₁ : n₁ = n₂) (h₂ : K₁ ≤ K₂) (f : 𝓓^{n₁}_{K₁}(E, F)) :
    N[𝕜]_{K₂, n₂, i} (monoLM 𝕜 f) = N[𝕜]_{K₁, n₁, i} f := by
  simp [BoundedContinuousFunction.norm_eq_iSup_norm, ContDiffMapSupportedIn.seminorm_apply,
    structureMapCLM_apply, h₁, h₂]

/-- If `n₁ ≥ n₂` and `K₁ ⊆ K₂`, `monoCLM 𝕜` is the continuous `𝕜`-linear inclusion of
`𝓓^{n₁}_{K₁}(E, F)` inside `𝓓^{n₂}_{K₂}(E, F)`. Otherwise, this is the zero map.

Furthermore:
* it is a topological embedding when `n₁ = n₂` and `K₁ ⊆ K₂` (not in Mathlib as of March 2026).
* it maps bounded sets to compact sets when `n₁ ≥ n₂ + 1` and `K₁ ⊆ K₂` (not in Mathlib as of
March 2026).

The parameters `n₁, n₂, K₁, K₂` are implicit as they can often be inferred from context, or
specified by a type ascription.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ContDiffMapSupportedIn/Variant64362a54f13747963496e52c3e48d0f99f43c5d5124172993f73a5653c6f9ac0.lean#L828).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61febe388136931eb71d1c284fc1506421af93d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
