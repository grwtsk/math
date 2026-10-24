# locallyIntegrableOn_mul_sum_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8538080d-0025-c13a-cfdc-95173bca3f0d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e29e3732-c2e9-f10c-3496-7aec1fc4e753",
  "kind": "theorem",
  "lexical_name": "locallyIntegrableOn_mul_sum_Icc",
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
  "slug": "locallyintegrableon-mul-sum-icc--e6bd2f42ec14f1429151bab2",
  "source": {
    "blob": "9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 240,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6bd2f42ec14f1429151bab2e5145d1f4197b03d47ae4c24ce9181e920c72fc9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e29e3732-c2e9-f10c-3496-7aec1fc4e753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyIntegrableOn_mul_sum_Icc {m : ℕ} (ha : 0 ≤ a) {g : ℝ → 𝕜}
    (hg : LocallyIntegrableOn g (Set.Ici a)) :
    LocallyIntegrableOn (fun t ↦ g t * ∑ k ∈ Icc m ⌊t⌋₊, c k) (Set.Ici a) := by
  refine (locallyIntegrableOn_iff isLocallyClosed_Ici).mpr fun K hK₁ hK₂ ↦ ?_
  by_cases hK₃ : K.Nonempty
  · have h_inf : a ≤ sInf K := (hK₁ (hK₂.sInf_mem hK₃))
    refine IntegrableOn.mono_set ?_ (Bornology.IsBounded.subset_Icc_sInf_sSup hK₂.isBounded)
    refine integrableOn_mul_sum_Icc _ (ha.trans h_inf) ?_
    refine hg.integrableOn_compact_subset ?_ isCompact_Icc
    exact (Set.Icc_subset_Ici_iff (Real.sInf_le_sSup _ hK₂.bddBelow hK₂.bddAbove)).mpr h_inf
  · rw [Set.not_nonempty_iff_eq_empty.mp hK₃]
    exact integrableOn_empty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant8ac31039cb17f4d57a19df7c2277aa0cd44ebd6bd1a778cd22c5d30c793c463d.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e3e8f6bb2a458dfb4cb9a6b5aabce18b9847f4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
