# root_mem_or_mem_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b215b88-8887-88a8-fa5d-ba35c7a46b58",
  "kind": "lemma",
  "lexical_name": "root_mem_or_mem_neg",
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
  "slug": "root-mem-or-mem-neg--0893d3d827911ebfcdba61f8",
  "source": {
    "blob": "fcd966880c88aac6c2fc3ba90614088bf6597a25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0893d3d827911ebfcdba61f8b2871d09d8fe57764c2936f6382c28ca22a8bbcf",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b215b88-8887-88a8-fa5d-ba35c7a46b58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma root_mem_or_mem_neg (χ : letI := b.isCartanSubalgebra; H.root) :
    letI := b.isCartanSubalgebra
    ( (rootSystem H).root χ ∈ closure ((rootSystem H).root '' range b.baseSupp') ∨
     -(rootSystem H).root χ ∈ closure ((rootSystem H).root '' range b.baseSupp')) := by
  let := b.isCartanSubalgebra
  have (n : ι → ℕ) :
      ∑ i, n i • b.baseSupp i ∈ closure (⇑(rootSystem H).root '' range b.baseSupp') := by
    simp_rw [← Submodule.span_nat_eq_addSubmonoidClosure, Submodule.mem_toAddSubmonoid]
    exact Submodule.sum_smul_mem _ _ fun i _ ↦ Submodule.subset_span <| by simp
  let s : Set (H → K) := {0} ∪
    {f | ∃ n : ι → ℕ, n ≠ 0 ∧ f = -∑ i, n i • b.baseSupp i} ∪
    {f | ∃ n : ι → ℕ, n ≠ 0 ∧ f =  ∑ i, n i • b.baseSupp i}
  have hs : ⨆ α ∈ s, rootSpace H α = ⊤ := by
    have := b.iSup_cartan_borelLower_borelUpper_eq_top
    rw [borelLower_eq, borelUpper_eq, b.cartan_eq] at this
    rw [iSup_union, iSup_union]
    simpa [iSup_and, iSup_comm (ι := H → K)] using this
  obtain ⟨χ, hχ⟩ := χ
  change χ.toLinear ∈ _ ∨ -χ.toLinear ∈ _
  replace hs : ⇑χ ∈ s :=
    (iSupIndep_genWeightSpace K H L).mem_of_biSup_eq_top hs χ.genWeightSpace_ne_bot
  replace hs : (∃ n : ι → ℕ, n ≠ 0 ∧ χ.toLinear = -∑ i, n i • b.baseSupp i) ∨
               (∃ n : ι → ℕ, n ≠ 0 ∧ χ.toLinear = ∑ i, n i • b.baseSupp i) := by
    have hχ' : ¬ χ.IsZero := by simpa using hχ
    simp only [hχ', s, singleton_union, mem_union, mem_insert_iff, Weight.coe_eq_zero_iff,
      mem_ofPred_eq, false_or] at hs
    simpa only [← LinearMap.coe_neg, ← Weight.coe_coe, LinearMap.coe_injective.eq_iff] using hs
  refine hs.symm.imp (fun ⟨n, hn₀, hn⟩ ↦ ?_) (fun ⟨n, hn₀, hn⟩ ↦ ?_) <;> simpa [hn] using this n

/-- The distinguished root system base associated to a basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Base/Variant35d97e659a12fec40c7f5161429af9f07d5205475f30f0d1ed297976d78c4650.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcd966880c88aac6c2fc3ba90614088bf6597a25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
