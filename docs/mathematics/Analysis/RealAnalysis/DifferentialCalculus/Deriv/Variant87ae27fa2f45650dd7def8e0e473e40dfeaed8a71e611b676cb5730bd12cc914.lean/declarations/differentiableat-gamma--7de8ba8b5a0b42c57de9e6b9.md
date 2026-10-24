# differentiableAt_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a91e966a-a5c3-63a7-40aa-ea3f16b7f1b0",
  "kind": "theorem",
  "lexical_name": "differentiableAt_Gamma",
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
  "slug": "differentiableat-gamma--7de8ba8b5a0b42c57de9e6b9",
  "source": {
    "blob": "126247f85d7b1102de744b698efd41eab61fe787",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7de8ba8b5a0b42c57de9e6b9867e2ecd3ea9ea00b260bfa3765f6a5872333e69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a91e966a-a5c3-63a7-40aa-ea3f16b7f1b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableAt_Gamma (s : ℂ) (hs : ∀ m : ℕ, s ≠ -m) : DifferentiableAt ℂ Gamma s := by
  let n := ⌊1 - s.re⌋₊ + 1
  have hn : 1 - s.re < n := mod_cast Nat.lt_floor_add_one (1 - s.re)
  apply (differentiableAt_GammaAux s n hn hs).congr_of_eventuallyEq
  let S := {t : ℂ | 1 - t.re < n}
  have : S ∈ 𝓝 s := by
    rw [mem_nhds_iff]; use S
    refine ⟨Subset.rfl, ?_, hn⟩
    have : S = re ⁻¹' Ioi (1 - n : ℝ) := by
      ext; rw [preimage, Ioi, mem_setOf_eq, mem_setOf_eq, mem_setOf_eq]; exact sub_lt_comm
    rw [this]
    exact Continuous.isOpen_preimage continuous_re _ isOpen_Ioi
  apply eventuallyEq_of_mem this
  intro t ht; rw [mem_setOf_eq] at ht
  apply Gamma_eq_GammaAux; linarith

end GammaHasDeriv

/-- At `s = 0`, the Gamma function has a simple pole with residue 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant87ae27fa2f45650dd7def8e0e473e40dfeaed8a71e611b676cb5730bd12cc914.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `126247f85d7b1102de744b698efd41eab61fe787` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
