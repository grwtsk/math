# HasWeightedSummatoryBound.mono_exponent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66040dc67ea0840e24d9be372d5078ce5ff4e3bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 64,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfad1d4f-5ed6-d1bd-2a55-ba1dfa6321a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aaa2780b-9737-c164-3f2e-74ab0fa8053b",
  "kind": "theorem",
  "lexical_name": "HasWeightedSummatoryBound.mono_exponent",
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
  "slug": "hasweightedsummatorybound-mono-exponent--56104c2519c439ff0ae52db1",
  "source": {
    "blob": "66040dc67ea0840e24d9be372d5078ce5ff4e3bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 64,
    "path": "GRWTSK/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56104c2519c439ff0ae52db19d5447c6e14ec3eefe25366baa3b9bf046c9cbd7",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aaa2780b-9737-c164-3f2e-74ab0fa8053b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasWeightedSummatoryBound.mono_exponent
    {σ τ : ℝ} {F : ℕ → ℂ} (hστ : σ ≤ τ)
    (hF : HasWeightedSummatoryBound σ F) :
    HasWeightedSummatoryBound τ F := by
  obtain ⟨C, hC, hbound⟩ := hF
  refine ⟨C, hC, ?_⟩
  intro x hx
  have hx_one : (1 : ℝ) ≤ (x : ℝ) := by
    exact_mod_cast (show 1 ≤ x by omega)
  calc
    ‖F x‖ ≤ C * Real.rpow (x : ℝ) σ := hbound x hx
    _ ≤ C * Real.rpow (x : ℝ) τ := by
      exact mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_exponent_le hx_one hστ) hC

/-- The same monotonicity rule with the hypotheses ordered for forward
composition in theorem graphs. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedSummatory/Variant612521eebf3838e9e592368b163a07c891d5a19cdadde4577f6e870ab8ee616d.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66040dc67ea0840e24d9be372d5078ce5ff4e3bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
