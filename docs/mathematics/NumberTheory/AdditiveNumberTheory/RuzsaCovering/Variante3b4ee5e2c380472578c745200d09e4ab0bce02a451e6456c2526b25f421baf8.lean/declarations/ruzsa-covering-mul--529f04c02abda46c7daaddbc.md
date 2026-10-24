# ruzsa_covering_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28ed3c37-1e14-272d-a5ab-b58ee413b6ab",
  "kind": "theorem",
  "lexical_name": "ruzsa_covering_mul",
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
  "slug": "ruzsa-covering-mul--529f04c02abda46c7daaddbc",
  "source": {
    "blob": "1fb91c1ebf95847c328da72a3ea5c1f4a810714c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:529f04c02abda46c7daaddbc35e3eeceb7d46ae371fd5bf13212f85ad788c065",
  "verification": {
    "reference": "docs/verification/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28ed3c37-1e14-272d-a5ab-b58ee413b6ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ruzsa_covering_mul (hB : B.Nonempty) (hK : #(A * B) ≤ K * #B) :
    ∃ F ⊆ A, #F ≤ K ∧ A ⊆ F * (B / B) := by
  haveI : ∀ F, Decidable ((F : Set G).PairwiseDisjoint (· • B)) := fun F ↦ Classical.dec _
  set C := {F ∈ A.powerset | F.toSet.PairwiseDisjoint (· • B)}
  obtain ⟨F, hFmax⟩ := C.exists_maximal <| filter_nonempty_iff.2
    ⟨∅, empty_mem_powerset _, by rw [coe_empty]; exact Set.pairwiseDisjoint_empty⟩
  simp only [C, mem_filter, mem_powerset] at hFmax
  obtain ⟨hFA, hF⟩ := hFmax.1
  refine ⟨F, hFA, le_of_mul_le_mul_right ?_ (by positivity : (0 : ℝ) < #B), fun a ha ↦ ?_⟩
  · calc
      (#F * #B : ℝ) = #(F * B) := by
        rw [card_mul_iff.2 <| pairwiseDisjoint_smul_iff.1 hF, Nat.cast_mul]
      _ ≤ #(A * B) := by gcongr
      _ ≤ K * #B := hK
  by_cases hau : a ∈ F
  · exact subset_mul_left _ hB.one_mem_div hau
  by_cases H : ∀ b ∈ F, Disjoint (a • B) (b • B)
  · refine (hFmax.not_gt ?_ <| ssubset_insert hau).elim
    rw [insert_subset_iff, coe_insert]
    exact ⟨⟨ha, hFA⟩, hF.insert fun _ hb _ ↦ H _ hb⟩
  push_neg at H
  simp_rw [not_disjoint_iff, ← inv_smul_mem_iff] at H
  obtain ⟨b, hb, c, hc₁, hc₂⟩ := H
  exact mem_mul.2 ⟨b, hb, b⁻¹ * a, mem_div.2 ⟨_, hc₂, _, hc₁, by simp⟩, by simp⟩

-- `alias` doesn't add the deprecation suggestion to the `to_additive` version
-- see https://github.com/leanprover-community/mathlib4/issues/19424
@[to_additive]
alias exists_subset_mul_div := ruzsa_covering_mul
attribute [deprecated ruzsa_covering_mul (since := "2024-11-26")] exists_subset_mul_div
attribute [deprecated ruzsa_covering_add (since := "2024-11-26")] exists_subset_add_sub

end Finset

namespace Set
variable {A B : Set G}

/-- **Ruzsa's covering lemma** for sets. See also `Finset.ruzsa_covering_mul`. -/
@[to_additive "**Ruzsa's covering lemma** for sets. See also `Finset.ruzsa_covering_add`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AdditiveNumberTheory/RuzsaCovering/Variante3b4ee5e2c380472578c745200d09e4ab0bce02a451e6456c2526b25f421baf8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fb91c1ebf95847c328da72a3ea5c1f4a810714c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
