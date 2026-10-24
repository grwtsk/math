# tent_full_sum_evaluation_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5fcc426-38e7-61a6-65fa-fcc995dccebf",
  "kind": "theorem",
  "lexical_name": "tent_full_sum_evaluation_error",
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
  "slug": "tent-full-sum-evaluation-error--e98224485708e8cf0484a0d1",
  "source": {
    "blob": "fa4c1d6ad206a6586ae0bb5f7f6e09912628e044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 132,
    "path": "GRWTSK/Analysis/Complex/TentKernelTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e98224485708e8cf0484a0d12d093d754f980c4fc8bbc2bf08ef53d612456753",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5fcc426-38e7-61a6-65fa-fcc995dccebf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_full_sum_evaluation_error (x h β T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hρ : ∀ i, i ∉ head → (ρ i).re ≤ β)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤ t * Real.log t)
    (evaluated : ℂ) (error : ℝ)
    (heval : ‖(∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated‖ ≤ error) :
    ‖(∑' i, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated‖ ≤
      tentTailBudget x h β T + error := by
  have ht := (tent_full_sum_and_remainder x h β T hh ha hβ hT
    head m ρ hhead hρ hcount).2.2
  calc
    _ = ‖((∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
          ∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) +
        ((∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) - evaluated)‖ := by congr 1; ring
    _ ≤ _ := (norm_add_le _ _).trans (add_le_add ht heval)

end
end GRWTSK.Analysis.Complex.TentKernelTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelTail.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4c1d6ad206a6586ae0bb5f7f6e09912628e044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
