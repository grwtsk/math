# sum_abs_diff_le_variation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 976,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:197202ee-2d9e-e600-bc9a-06cb14c8bc78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e3616b40-6106-5620-a094-80d297930852",
  "kind": "lemma",
  "lexical_name": "sum_abs_diff_le_variation",
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
  "slug": "sum-abs-diff-le-variation--068b8b9193d0d412a0a84c5f",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1007,
    "line": 976,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:068b8b9193d0d412a0a84c5f9b7bb79899c948dd800776badd993609cd3f2684",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e3616b40-6106-5620-a094-80d297930852`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 976–1007.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_abs_diff_le_variation {g : ℝ → ℝ} {a b : ℝ} (P : IPart.IPartition a b) (hg : BoundedVariationOn g (Set.Icc a b)) :
    ∑ i : Fin P.n, |g (P.x i.succ) - g (P.x i.castSucc)| ≤ (eVariationOn g (Set.Icc a b)).toReal := by
      have h_sum_le_eVariationOn : ∑ i : Fin P.n, ENNReal.ofReal (abs ((g (P.x i.succ)) - (g (P.x i.castSucc)))) ≤ eVariationOn g (Set.Icc a b) := by
        refine' le_trans _ ( eVariationOn.mono g _ );
        swap;
        exact Set.range P.x;
        · refine' le_trans _ ( le_ciSup _ ⟨ P.n, _ ⟩ );
          rotate_right;
          use fun i => if hi : i ≤ P.n then P.x ⟨ i, by linarith ⟩ else P.x ⟨ P.n, by linarith ⟩;
          refine' ⟨ _, _ ⟩;
          intro i j hij;
          all_goals norm_num [ edist_dist ];
          · split_ifs <;> try linarith [ P.monotone ( show ⟨ i, by linarith ⟩ ≤ ⟨ j, by linarith ⟩ from Nat.le_trans hij ( Nat.le_refl _ ) ) ];
            · exact P.monotone ( Nat.le_trans ( Nat.le_of_lt_succ ( by linarith ) ) ( Nat.le_refl _ ) );
            · norm_num;
          · aesop;
          · rw [ Finset.sum_range ];
            refine' Finset.sum_le_sum fun i _ => _;
            split_ifs <;> norm_num [ Nat.succ_le_iff ];
            · rfl;
            · linarith [ Fin.is_lt i ];
            · exact False.elim <| ‹¬ ( i : ℕ ) + 1 ≤ P.n› <| Nat.succ_le_of_lt <| Fin.is_lt i;
            · linarith [ Fin.is_lt i ];
        · rintro _ ⟨ i, rfl ⟩ ; exact ⟨ by linarith [ P.monotone ( show 0 ≤ i from Nat.zero_le _ ), P.left ], by linarith [ P.monotone ( show i ≤ Fin.last P.n from Fin.le_last _ ), P.right ] ⟩ ;
      convert ENNReal.toReal_mono _ h_sum_le_eVariationOn using 1;
      · rw [ ENNReal.toReal_sum ] ; aesop;
        exact fun _ _ => ENNReal.ofReal_ne_top;
      · exact hg

/-
For a fixed interval of the coarser partition, the sum of the weighted differences is bounded by epsilon times the sum of the absolute differences of g.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L976).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
