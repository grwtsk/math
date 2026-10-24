# meromorphicNFAt_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:093e60b7-e7c4-1e37-0aff-15a2e3549d47",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd3172e6-1534-1998-4364-8354e70249b3",
  "kind": "theorem",
  "lexical_name": "meromorphicNFAt_prod",
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
  "slug": "meromorphicnfat-prod--69b82164e820b2dbe7c77d6a",
  "source": {
    "blob": "2f847eede3c3cd158a154044da915c22e9eadc6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 292,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:69b82164e820b2dbe7c77d6af8f4a0b4122bc4fbe62081de5b4510f0d5742180",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd3172e6-1534-1998-4364-8354e70249b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meromorphicNFAt_prod {x : 𝕜} {ι : Type*} {s : Finset ι} {f : ι → 𝕜 → 𝕜}
    (h₁f : ∀ i ∈ s, MeromorphicNFAt (f i) x)
    (h₂f : Set.Subsingleton {σ ∈ s | f σ x = 0}) :
    MeromorphicNFAt (∏ i ∈ s, f i) x := by
  classical
  have h₃f {τ : ι} (h₁τ : τ ∈ s) (h₂τ : τ ∉ {σ ∈ s | f σ x = 0}) :
      AnalyticAt 𝕜 (f τ) x := by
    rw [← (h₁f τ h₁τ).meromorphicOrderAt_nonneg_iff_analyticAt]
    apply ((h₁f τ h₁τ).meromorphicOrderAt_eq_zero_iff.2 _).symm.le
    grind
  by_cases h₄f : {σ ∈ s | f σ x = 0} = ∅
  · exact (Finset.analyticAt_prod _ (fun σ hσ ↦ h₃f hσ (by aesop))).meromorphicNFAt
  rw [Finset.filter_eq_empty_iff] at h₄f
  push Not at h₄f
  obtain ⟨τ, h₁τ, h₂τ⟩ := h₄f
  have {μ : ι} (hμ : μ ∈ s.erase τ) : f μ x ≠ 0 := by
    by_contra
    have : τ = μ := h₂f (by aesop) (by aesop)
    aesop
  rw [← Finset.mul_prod_erase _ _ h₁τ, meromorphicNFAt_mul_iff_left]
  · apply h₁f τ h₁τ
  · apply Finset.analyticAt_prod _ (fun μ hμ ↦ h₃f (Finset.mem_of_mem_erase hμ) (by aesop))
  · rw [Finset.prod_apply, Finset.prod_ne_zero_iff]
    aesop

/--
A product of meromorphic functions in normal form is in normal form if at most one of the factors
vanishes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variant800305362d3d82c70c7364f83795ae9ee2301b4744d0529c4a0985fbbb9d122e.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f847eede3c3cd158a154044da915c22e9eadc6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
