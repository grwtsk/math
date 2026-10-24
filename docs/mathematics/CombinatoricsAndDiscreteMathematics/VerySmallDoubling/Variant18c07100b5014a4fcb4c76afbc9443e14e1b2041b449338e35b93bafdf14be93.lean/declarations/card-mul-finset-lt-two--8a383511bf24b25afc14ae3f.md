# card_mul_finset_lt_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfee5e60c4ed2b6d48d387e14fa653d8c761a277",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 723,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/18/18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0abd871-2503-6605-e432-f4f0f4fdc7ab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6ad3e2ad-71ca-2a31-069b-6440ed5a0578",
  "kind": "theorem",
  "lexical_name": "card_mul_finset_lt_two",
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
  "slug": "card-mul-finset-lt-two--8a383511bf24b25afc14ae3f",
  "source": {
    "blob": "cfee5e60c4ed2b6d48d387e14fa653d8c761a277",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 723,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a383511bf24b25afc14ae3f4cc14fb3d3b2cc2c7b5389aaba68b159c3fc177d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ad3e2ad-71ca-2a31-069b-6440ed5a0578`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 723–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_mul_finset_lt_two {ε : ℝ} (hε₀ : 0 < ε) (hε₁ : ε ≤ 1) (hS : S.Nonempty)
    (hA : ∃ A : Finset G, #S ≤ #A ∧ #(A * S) ≤ (2 - ε) * #S) :
    ∃ (H : Subgroup G) (_ : Fintype H) (Z : Finset G),
      Fintype.card H ≤ (2 / ε - 1) * #S ∧ #Z ≤ 2 / ε - 1 ∧ (S : Set G) ⊆ H * Z := by
  let K := 1 - ε / 2
  have hK : K < 1 := by unfold K; linarith [hε₀]
  let ex := expansion K S
  let κ := connectivity K S
  -- We will show that an atomic subgroup `H ≤ G` with respect to `K` and `S` and the right coset
  -- representing finset of `S` acting on `H` are adequate choices for the theorem
  obtain ⟨H, _, hH⟩ := exists_subgroup_isAtom hK hS
  obtain ⟨Z, hZS, hHZS, hZinj⟩ := exists_subset_mul_eq_mul_injOn H S
  -- We only use the existence of `A` given by assumption to get a good bound on `ex H` solely
  -- in terms of `#S` and `ε`.
  obtain ⟨A, hA₁, hA₂⟩ := hA
  have calc₁ : ex (Set.toFinset H) ≤ (1 - ε / 2) * #S := by
    calc
          ex (Set.toFinset H)
      _ = κ                               := hH.isFragment
      _ ≤ #(A * S) - K * #A :=
        connectivity_le_expansion hK.le hS <| card_pos.mp <| hS.card_pos.trans_le hA₁
      _ ≤ (2 - ε) * #S - (1 - ε / 2) * #S := by gcongr; linarith
      _ = (1 - ε / 2) * #S                := by linarith
  refine ⟨H, inferInstance, Z, ?cardH, ?cardZ, by
    simpa only [hHZS] using Set.subset_mul_right _ H.one_mem⟩
  -- Bound on `#H` follows easily from the previous calculation.
  case cardH =>
    rw [← mul_le_mul_iff_right₀ (a := ε / 2) (by positivity)]
    calc
            ε / 2 * (Fintype.card H)
        _ = ε / 2 * #(H : Set G).toFinset   := by
          simp only [Set.toFinset_card, SetLike.coe_sort_coe]
        _ = (1 - K) * #(H : Set G).toFinset := by ring
        _ ≤ ex (Set.toFinset H)             := mul_card_le_expansion hS
        _ ≤ (1 - ε / 2) * #S                := calc₁
        _ = ε / 2 * ((2 / ε - 1) * #S)      := by field
  -- To show the bound on `#Z`, we note that `#Z = #(HS) / #H` and show `#(HS) ≤ (2 / ε - 1) * #H`.
  case cardZ =>
    calc
          (#Z : ℝ)
      _ = #(H : Set G).toFinset * #Z / #(H : Set G).toFinset          := by field
      _ = #(Set.toFinset H * Z) / #(H : Set G).toFinset               := by
        simp [← card_mul_eq_mul_card_of_injOn_opSMul hZinj, Nat.cast_mul]
      _ = #(Set.toFinset H * S) / #(H : Set G).toFinset               := by
        congr 3; simpa using congr(($hHZS).toFinset)
      _ ≤ (2 / ε - 1) * #(H : Set G).toFinset / #(H : Set G).toFinset := ?_
      _ = 2 / ε - 1                                                   := by field
    gcongr
    -- Finally, to show `#(HS) ≤ (2 / ε - 1) * #H`, we multiply both sides by `1 - K = ε / 2` and
    -- show `#(HS) = K * #H + ex H ≤ K * #H + (1 - ε / 2) * #S ≤ K * #H + (1 - ε / 2) * #(HS)`,
    -- where we used `calc₁` again.
    rw [← mul_le_mul_iff_right₀ (show 0 < 1 - K by linarith [hK])]
    suffices (1 - K) * #(Set.toFinset H * S) ≤ (1 - ε / 2) * #(H : Set G).toFinset by
      apply le_of_le_of_eq this; simp [K]; field
    rw [sub_mul, one_mul, sub_le_iff_le_add]
    calc
          (#(Set.toFinset H * S) : ℝ)
      _ = K * #(H : Set G).toFinset + (#(Set.toFinset H * S) - K * #(H : Set G).toFinset) := by ring
      _ = K * #(H : Set G).toFinset + ex (Set.toFinset H)                 := rfl
      _ ≤ K * #(H : Set G).toFinset + (1 - ε / 2) * #(Set.toFinset H * S) := by
        grw [calc₁]
        gcongr
        · linarith
        · simp only [Set.mem_toFinset, SetLike.mem_coe, H.one_mem, subset_mul_right]

/-- Corollary of `card_mul_finset_lt_two` in the case `A = S`, giving characterisation of sets of
doubling less than `2 - ε`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant18c07100b5014a4fcb4c76afbc9443e14e1b2041b449338e35b93bafdf14be93.lean#L723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfee5e60c4ed2b6d48d387e14fa653d8c761a277` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
