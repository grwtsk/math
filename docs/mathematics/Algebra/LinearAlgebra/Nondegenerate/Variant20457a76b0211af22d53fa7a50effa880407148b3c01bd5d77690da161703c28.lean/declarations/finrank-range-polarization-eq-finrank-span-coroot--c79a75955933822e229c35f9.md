# finrank_range_polarization_eq_finrank_span_coroot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b392eb47b08c62b3234ded246b9ffbc016d8bb59",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/20/20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f618519d-9d5e-b658-4e73-5d6041224368",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4b9776b-0eb6-bcf4-2479-1db1253c96c9",
  "kind": "lemma",
  "lexical_name": "finrank_range_polarization_eq_finrank_span_coroot",
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
  "slug": "finrank-range-polarization-eq-finrank-span-coroot--c79a75955933822e229c35f9",
  "source": {
    "blob": "b392eb47b08c62b3234ded246b9ffbc016d8bb59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 99,
    "path": "GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c79a75955933822e229c35f934117179835bc202d39b5b7902e7cfccc6ac184e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4b9776b-0eb6-bcf4-2479-1db1253c96c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finrank_range_polarization_eq_finrank_span_coroot [P.IsAnisotropic] :
    finrank S (LinearMap.range (P.PolarizationIn S)) = finrank S (P.corootSpan S) := by
  apply (Submodule.finrank_mono (P.range_polarizationIn_le_span_coroot S)).antisymm
  have : IsReflexive R N := PerfectPairing.reflexive_right P.toPerfectPairing
  have : NoZeroSMulDivisors S N := NoZeroSMulDivisors.trans_faithfulSMul S R N
  have h_ne : ∏ i, (P.RootFormIn S (P.rootSpanMem S i) (P.rootSpanMem S i)) ≠ 0 := by
    refine Finset.prod_ne_zero_iff.mpr fun i _ h ↦ ?_
    have := (FaithfulSMul.algebraMap_eq_zero_iff S R).mpr h
    rw [algebraMap_rootFormIn] at this
    apply IsAnisotropic.rootForm_root_ne_zero i this
  refine LinearMap.finrank_le_of_isSMulRegular (P.corootSpan S)
    (LinearMap.range (M₂ := N) (P.PolarizationIn S))
    (smul_right_injective N h_ne) ?_
  intro _ hx
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun S).mp hx
  rw [← hc, Finset.smul_sum]
  simp_rw [smul_smul, mul_comm, ← smul_smul]
  exact Submodule.sum_smul_mem (LinearMap.range (P.PolarizationIn S)) c
    fun j _ ↦ prod_rootFormIn_smul_coroot_mem_range_PolarizationIn P S j

/-- An auxiliary lemma en route to `RootPairing.finrank_corootSpan_eq`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Nondegenerate/Variant20457a76b0211af22d53fa7a50effa880407148b3c01bd5d77690da161703c28.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b392eb47b08c62b3234ded246b9ffbc016d8bb59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
