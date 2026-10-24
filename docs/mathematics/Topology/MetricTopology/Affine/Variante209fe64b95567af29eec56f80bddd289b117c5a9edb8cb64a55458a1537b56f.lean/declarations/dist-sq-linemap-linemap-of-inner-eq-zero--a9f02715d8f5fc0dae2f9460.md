# dist_sq_lineMap_lineMap_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e621f5659fc20516fa34673fe6d457831287dd5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 67,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:19d0f97e-0d89-8b25-73d3-8ab035ec776d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db0dea5e-232c-0c50-6339-62de15ba3f57",
  "kind": "theorem",
  "lexical_name": "dist_sq_lineMap_lineMap_of_inner_eq_zero",
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
  "slug": "dist-sq-linemap-linemap-of-inner-eq-zero--a9f02715d8f5fc0dae2f9460",
  "source": {
    "blob": "e621f5659fc20516fa34673fe6d457831287dd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 67,
    "path": "GRWTSK/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9f02715d8f5fc0dae2f9460edd44f98759159ffacdbd2e8815e605ce058f8ca",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db0dea5e-232c-0c50-6339-62de15ba3f57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_sq_lineMap_lineMap_of_inner_eq_zero {a b c : P} (t₁ t₂ : ℝ)
    (h_inner : ⟪b -ᵥ a, c -ᵥ a⟫ = 0) :
    dist (AffineMap.lineMap a b t₁) (AffineMap.lineMap a c t₂) ^ 2 =
      t₁ ^ 2 * dist a b ^ 2 + t₂ ^ 2 * dist a c ^ 2 := by
  have hvec : AffineMap.lineMap a b t₁ -ᵥ AffineMap.lineMap a c t₂ =
              t₁ • (b -ᵥ a) - t₂ • (c -ᵥ a) := by
    rw [AffineMap.lineMap_apply, AffineMap.lineMap_apply, vadd_vsub_vadd_cancel_right]
  rw [dist_eq_norm_vsub V, hvec, norm_sub_sq_real, norm_smul, norm_smul,
      Real.norm_eq_abs, Real.norm_eq_abs, inner_smul_left, inner_smul_right, h_inner]
  simp only [mul_zero, sub_zero, mul_pow, sq_abs, ← dist_eq_norm_vsub' V]

/-- Squared distance from `p` to a point on the line from `a` to `b`,
given that `p -ᵥ a` is orthogonal to `b -ᵥ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Affine/Variante209fe64b95567af29eec56f80bddd289b117c5a9edb8cb64a55458a1537b56f.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e621f5659fc20516fa34673fe6d457831287dd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
