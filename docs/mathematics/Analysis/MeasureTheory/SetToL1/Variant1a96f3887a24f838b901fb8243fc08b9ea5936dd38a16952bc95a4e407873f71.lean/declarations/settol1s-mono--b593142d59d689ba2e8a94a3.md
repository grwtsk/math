# setToL1S_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52e2e8871b0e6a3462d3db39fb5a6de994f736e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 253,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:80429262-de5f-ef08-b5f9-404a9a220646",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:50f89440-5bd8-aa99-26f3-5c50c752d116",
  "kind": "theorem",
  "lexical_name": "setToL1S_mono",
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
  "slug": "settol1s-mono--b593142d59d689ba2e8a94a3",
  "source": {
    "blob": "52e2e8871b0e6a3462d3db39fb5a6de994f736e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 266,
    "line": 253,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b593142d59d689ba2e8a94a32bbbceb4b441e7deae6aaf8a5639cd1a2264fb3f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:50f89440-5bd8-aa99-26f3-5c50c752d116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–266.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1S_mono (h_zero : ∀ s, MeasurableSet s → μ s = 0 → T s = 0)
    (h_add : FinMeasAdditive μ T)
    (hT_nonneg : ∀ s, MeasurableSet s → μ s < ∞ → ∀ x, 0 ≤ x → 0 ≤ T s x) {f g : α →₁ₛ[μ] G''}
    (hfg : f ≤ g) : setToL1S T f ≤ setToL1S T g := by
  rw [← sub_nonneg] at hfg ⊢
  rw [← setToL1S_sub h_zero h_add]
  exact setToL1S_nonneg h_zero h_add hT_nonneg hfg

end Order

variable [Module 𝕜 F] [IsBoundedSMul 𝕜 F]
variable (α E μ 𝕜)

/-- Extend `Set α → E →L[ℝ] F` to `(α →₁ₛ[μ] E) →L[𝕜] F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variant1a96f3887a24f838b901fb8243fc08b9ea5936dd38a16952bc95a4e407873f71.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52e2e8871b0e6a3462d3db39fb5a6de994f736e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
