# eVariationOn_bilinear_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5b7909b4-4fc6-e18c-6306-26227306a910",
  "kind": "lemma",
  "lexical_name": "eVariationOn_bilinear_comp_le",
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
  "slug": "evariationon-bilinear-comp-le--63144832db66eb383b024d8b",
  "source": {
    "blob": "5167835d1e349a14554ea4593a9951e47c04b705",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63144832db66eb383b024d8b04eaa00c626a617eb914a46e94fe732b79a914e3",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b7909b4-4fc6-e18c-6306-26227306a910`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eVariationOn_bilinear_comp_le (hf : ∀ x ∈ s, ‖f x‖ₑ ≤ C) (hg : ∀ x ∈ s, ‖g x‖ₑ ≤ D)
    (B : E →L[ℝ] F →L[ℝ] G) :
    eVariationOn (fun x ↦ B (f x) (g x) : α → G) s ≤
      ‖B‖ₑ * (C * eVariationOn g s + D * eVariationOn f s) := by
  apply iSup_le
  rintro ⟨n, ⟨u, u_mono, u_mem⟩⟩
  calc ∑ i ∈ range n, edist (B (f (u (i + 1))) (g (u (i + 1)))) (B (f (u i)) (g (u i)))
  _ ≤ ∑ i ∈ range n, edist (B (f (u (i + 1))) (g (u (i + 1)))) (B (f (u i)) (g (u (i + 1)))) +
      ∑ i ∈ range n, edist (B (f (u i)) (g (u (i + 1)))) (B (f (u i)) (g (u i))) := by
    rw [← Finset.sum_add_distrib]
    gcongr with i hi
    apply edist_triangle
  _ = ∑ i ∈ range n, ‖B (f (u (i + 1)) - f (u i)) (g (u (i + 1)))‖ₑ +
      ∑ i ∈ range n, ‖B (f (u i)) (g (u (i + 1)) - g (u i))‖ₑ := by simp [edist_eq_enorm_sub]
  _ ≤ ∑ i ∈ range n, ‖B‖ₑ * ‖f (u (i + 1)) - f (u i)‖ₑ * ‖g (u (i + 1))‖ₑ +
      ∑ i ∈ range n, ‖B‖ₑ * ‖f (u i)‖ₑ * ‖g (u (i + 1)) - g (u i)‖ₑ := by
    gcongr with i hi i hi
    · apply ContinuousLinearMap.le_opENorm₂
    · apply ContinuousLinearMap.le_opENorm₂
  _ ≤ ∑ i ∈ range n, ‖B‖ₑ * ‖f (u (i + 1)) - f (u i)‖ₑ * D +
      ∑ i ∈ range n, ‖B‖ₑ * C * ‖g (u (i + 1)) - g (u i)‖ₑ := by
    gcongr with i hi i hi
    · apply hg _ (u_mem _)
    · apply hf _ (u_mem _)
  _ = ‖B‖ₑ * D * ∑ i ∈ range n, ‖f (u (i + 1)) - f (u i)‖ₑ +
      ‖B‖ₑ * C * ∑ i ∈ range n, ‖g (u (i + 1)) - g (u i)‖ₑ := by
    simp only [← sum_mul, ← mul_sum]
    ring
  _ ≤ ‖B‖ₑ * D * eVariationOn f s + ‖B‖ₑ * C * eVariationOn g s := by
    simp only [← edist_eq_enorm_sub]
    gcongr
    · exact eVariationOn.sum_le_of_monotoneOn_Iic (u_mono.monotoneOn _) (fun i hi ↦ u_mem i)
    · exact eVariationOn.sum_le_of_monotoneOn_Iic (u_mono.monotoneOn _) (fun i hi ↦ u_mem i)
  _ = ‖B‖ₑ * (C * eVariationOn g s + D * eVariationOn f s) := by ring

@[to_fun eVariationOn_fun_smul_le]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variant5cdcaf9235ca1b5ed6f17db98b86f48d6094ed1b309f110b0be3b8376c968830.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5167835d1e349a14554ea4593a9951e47c04b705` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
