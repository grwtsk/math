# exists_nonempty_isFragment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37a6c12d-e92a-fd95-a59a-5a019bc3183c",
  "kind": "lemma",
  "lexical_name": "exists_nonempty_isFragment",
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
  "slug": "exists-nonempty-isfragment--4bbf072394715b213854596b",
  "source": {
    "blob": "9c83e33c3f22ae5632d9878f1fabc980dcd10abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 669,
    "line": 621,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bbf072394715b213854596b88226e3a2c214aec3093861153adbb4544685982",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37a6c12d-e92a-fd95-a59a-5a019bc3183c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 621–669.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exists_nonempty_isFragment (hK : K < 1) (hS : S.Nonempty) :
    ∃ A, A.Nonempty ∧ IsFragment K S A := by
  -- We will show this lemma by contradiction. So we suppose that the infimum in the definition of
  -- connectivity is not attained by a nonempty finite subset of `G`, or, equivalently, that for
  -- every `κ < k` where `κ` is the connectivity, there is nonempty `A` such that `κ < ex A < k`.
  by_contra! H
  let ex := expansion K S
  let κ := connectivity K S
  -- Some useful calculations
  have κ_add_one_pos : 0 < κ + 1 := by linarith [connectivity_nonneg hK.le hS]
  have one_sub_K_pos : 0 < 1 - K := by linarith
  -- First we show that for large enough `A`, `κ + 1 < ex A`. Calculations show that
  -- `#A > ⌊(κ + 1) / (1 - K)⌋` suffices. We will actually use the contrapositive of this result: if
  -- `ex A` is near `κ`, then `A` will need to be small.
  let t := Nat.floor ((κ + 1) / (1 - K))
  have largeA {A : Finset G} (hA : t < #A) : κ + 1 < ex A := by
    rw [Nat.lt_iff_add_one_le] at hA
    calc
          κ + 1
      _ = (κ + 1) / ((κ + 1) / (1 - K)) * ((κ + 1) / (1 - K)) := by field
      _ < (κ + 1) / ((κ + 1) / (1 - K)) * (t + 1) := by gcongr; exact Nat.lt_floor_add_one _
      _ = (1 - K) * (t + 1) := by field
      _ ≤ (1 - K) * #A      := by norm_cast; gcongr
      _ ≤ ex A              := mul_card_le_expansion hS
  -- On the other hand, we essentially show that there are only finitely many possible values for
  -- `A` with `#A ≤ t`, and these values are found in the set `M = (⟦#S, t#S⟧ - K⟦1, t⟧) ∩ (κ, ∞)`.
  let M := {x ∈ ((Icc #S (t * #S)).map Nat.castEmbedding -
    K • (Icc 1 t).map Nat.castEmbedding : Finset ℝ) | κ < x}
  have smallA {A : Finset G} (hA : A.Nonempty) (hAt : #A ≤ t) : ex A ∈ M := by
    rw [mem_filter]
    refine ⟨sub_mem_sub ?_ ?_, (connectivity_le_expansion hK.le hS hA).lt_of_ne' <| H _ hA⟩
    · apply mem_map_of_mem
      exact mem_Icc.2 ⟨card_le_card_mul_left hA, by grw [card_mul_le, hAt]⟩
    · apply smul_mem_smul_finset
      apply mem_map_of_mem
      exact mem_Icc.2 ⟨Nat.one_le_iff_ne_zero.mpr hA.card_ne_zero, hAt⟩
  -- Now we take the minimum value of `M` (union `{κ + 1}` to handle the eventual emptiness of `M`
  -- and get better bounds). This will be strictly larger than `κ` by definition.
  have : (M ∪ {κ + 1}).Nonempty := by simp
  let k := (M ∪ {κ + 1}).min' this
  have : κ < k := by simp [k, M]
  -- By the property of infimum and the previous claim, there is `A` with `κ < ex A < k ≤ κ + 1`.
  -- But then the claim about large `A` implies that `#A ≤ t` and thus `ex A ∈ M` and `k ≤ ex A`,
  -- a contradiction.
  obtain ⟨A, hA, hAk⟩ := (connectivity_lt_iff hK.le hS).mp this
  have : ex A ≤ κ + 1 := hAk.le.trans <| min'_le _ _ (by simp)
  have := not_lt.mp (mt largeA this.not_gt)
  exact hAk.not_ge <| min'_le (M ∪ {κ + 1}) _ <| subset_union_left <| smallA hA this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/VerySmallDoubling/Variant5f74ab20207d549cc9741f484e2c18549d06d1df7f87d4354f36cc0c3fbe22a9.lean#L621).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c83e33c3f22ae5632d9878f1fabc980dcd10abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
