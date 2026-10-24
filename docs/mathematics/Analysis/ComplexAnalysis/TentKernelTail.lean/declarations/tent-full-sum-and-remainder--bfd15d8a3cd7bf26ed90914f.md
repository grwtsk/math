# tent_full_sum_and_remainder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:510d6df9-404f-d85c-6952-49731d8457aa",
  "kind": "theorem",
  "lexical_name": "tent_full_sum_and_remainder",
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
  "slug": "tent-full-sum-and-remainder--bfd15d8a3cd7bf26ed90914f",
  "source": {
    "blob": "fa4c1d6ad206a6586ae0bb5f7f6e09912628e044",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 95,
    "path": "GRWTSK/Analysis/Complex/TentKernelTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfd15d8a3cd7bf26ed90914f4ecf8d4fad90ced6fc7b17c989266a6be5a6467b",
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

Occurrence: `result:510d6df9-404f-d85c-6952-49731d8457aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tent_full_sum_and_remainder (x h β T : ℝ)
    (hh : 0 < h) (ha : 1 < x - h) (hβ : 0 ≤ β) (hT : 1 ≤ T)
    (head : Finset ι) (m : ι → ℕ) (ρ : ι → ℂ)
    (hhead : ∀ i, |(ρ i).im| ≤ T → i ∈ head)
    (hρ : ∀ i, i ∉ head → (ρ i).re ≤ β)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S (fun i => |(ρ i).im|) (fun i => (m i : ℝ)) t ≤
        t * Real.log t) :
    Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) ∧
      Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) ∧
      ‖(∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
        ∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)‖ ≤ tentTailBudget x h β T := by
  classical
  let e : (Set.Elem ((head : Set ι)ᶜ)) ↪ ι := ⟨Subtype.val, Subtype.val_injective⟩
  have htail := tent_family_tail x h β T hh ha hβ hT
    (fun i : (Set.Elem ((head : Set ι)ᶜ)) => m i) (fun i : (Set.Elem ((head : Set ι)ᶜ)) => ρ i)
    (fun i => hρ i i.property)
    (fun i => lt_of_not_ge (fun hi => i.property (hhead i hi)))
    (fun S t ht => by
      have hc := hcount (S.map e) t ht
      rw [finiteCountingMass_map] at hc
      exact hc)
  have hn : Summable (fun i => ‖(m i : ℂ) * tentKernel x h (ρ i)‖) :=
    head.summable_compl_iff.mp htail.1
  have hs : Summable (fun i => (m i : ℂ) * tentKernel x h (ρ i)) :=
    head.summable_compl_iff.mp htail.2.1
  refine ⟨hn, hs, ?_⟩
  have heq := hs.sum_add_tsum_compl (s := head)
  have hsplit : (∑' i, (m i : ℂ) * tentKernel x h (ρ i)) -
      (∑ i ∈ head, (m i : ℂ) * tentKernel x h (ρ i)) =
      ∑' i : (Set.Elem ((head : Set ι)ᶜ)), (m i : ℂ) * tentKernel x h (ρ i) := by
    rw [← heq]
    ring
  rw [hsplit]
  exact htail.2.2

/-- Same-head evaluation error is distinct from the now-derived complete tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TentKernelTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TentKernelTail.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa4c1d6ad206a6586ae0bb5f7f6e09912628e044` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
