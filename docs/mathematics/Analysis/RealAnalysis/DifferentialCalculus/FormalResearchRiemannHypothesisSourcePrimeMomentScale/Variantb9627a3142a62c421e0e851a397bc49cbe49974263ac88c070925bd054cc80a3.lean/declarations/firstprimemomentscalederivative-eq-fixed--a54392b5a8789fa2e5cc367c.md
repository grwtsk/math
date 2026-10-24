# firstPrimeMomentScaleDerivative_eq_fixed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "53fd0c9a7705700988494410c2be136e2035ceb1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c2b9ef87-0b23-d0fb-2182-a3fd68d7f26d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b30867af-2ca8-b16d-4aef-3690ec9ddb78",
  "kind": "theorem",
  "lexical_name": "firstPrimeMomentScaleDerivative_eq_fixed",
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
  "slug": "firstprimemomentscalederivative-eq-fixed--a54392b5a8789fa2e5cc367c",
  "source": {
    "blob": "53fd0c9a7705700988494410c2be136e2035ceb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a54392b5a8789fa2e5cc367c6688928df34978315b1449d874648c3b80cf9964",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b30867af-2ca8-b16d-4aef-3690ec9ddb78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem firstPrimeMomentScaleDerivative_eq_fixed {A : ℝ} (hA : 0 < A) (N : ℕ)
    (hN : ⌊Real.exp (2 * A)⌋₊ ≤ N) :
    firstPrimeMomentScaleDerivative A =
      ∑ p ∈ (Finset.Ioc 0 N).filter Nat.Prime,
        vonMangoldt p * closedPrimeWeightScaleDerivative A p := by
  unfold firstPrimeMomentScaleDerivative primeLogInventory
  apply Finset.sum_subset
  · intro p hp
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr ⟨(Finset.mem_Ioc.mp hpI).1, (Finset.mem_Ioc.mp hpI).2.trans hN⟩,
        hpP⟩
  · intro p hp hpold
    obtain ⟨hpI, hpP⟩ := Finset.mem_filter.mp hp
    have hcut : ⌊Real.exp (2 * A)⌋₊ < p := by
      by_contra hh
      exact hpold (Finset.mem_filter.mpr
        ⟨Finset.mem_Ioc.mpr ⟨hpP.pos, le_of_not_gt hh⟩, hpP⟩)
    rw [closedPrimeWeightScaleDerivative_zero_above_cutoff hA hpP.two_le hcut, mul_zero]

/-- Finite closed inventory differentiation retains every original coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FormalResearchRiemannHypothesisSourcePrimeMomentScale/Variantb9627a3142a62c421e0e851a397bc49cbe49974263ac88c070925bd054cc80a3.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53fd0c9a7705700988494410c2be136e2035ceb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
