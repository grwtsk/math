# RSSum_R_rewrite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc36c837-68b1-034d-9555-fdeddd543dc8",
  "kind": "lemma",
  "lexical_name": "RSSum_R_rewrite",
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
  "slug": "rssum-r-rewrite--4db575e1698951fb7eb817ab",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 949,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4db575e1698951fb7eb817abdd57e78494842eb946a171829b01154aeb1eac64",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc36c837-68b1-034d-9555-fdeddd543dc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 949–983.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RSSum_R_rewrite {a b : ℝ} (f g : ℝ → ℝ) (P R : TaggedPartition a b)
    (k : Fin (P.n + 1) → Fin (R.n + 1)) (hk : Monotone k) (hk_0 : k 0 = 0) (hk_eq : ∀ i, R.x (k i) = P.x i) :
    RSSum f g R = ∑ i : Fin P.n, ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, term_f_g f g R j := by
      have h_rewrite : ∑ j ∈ Finset.range R.n, term_f_g f g R j = ∑ j ∈ Finset.Ico 0 (k (Fin.last P.n)).val, term_f_g f g R j := by
        -- Since $R.x m = b$ and $R.x$ is monotone, for $j \geq m$, $R.x j = b$.
        have h_monotone : ∀ j : Fin (R.n + 1), (k (Fin.last P.n)).val ≤ j.val → R.x j = b := by
          intros j hj
          have h_monotone : ∀ i j : Fin (R.n + 1), i ≤ j → R.x i ≤ R.x j := by
            exact R.monotone;
          have h_monotone : R.x (k (Fin.last P.n)) = b := by
            exact hk_eq _ ▸ P.right;
          exact le_antisymm ( by linarith [ R.monotone ( show j ≤ Fin.last _ from Fin.le_last _ ), R.right ] ) ( by linarith [ ‹∀ i j : Fin ( R.n + 1 ), i ≤ j → R.x i ≤ R.x j› _ _ ( show k ( Fin.last P.n ) ≤ j from hj ) ] );
        -- Since $R.x j = b$ for $j \geq m$, the term_f_g $f$ $g$ $R$ $j$ is zero for $j \geq m$.
        have h_zero : ∀ j : ℕ, (k (Fin.last P.n)).val ≤ j → j < R.n → term_f_g f g R j = 0 := by
          intros j hj₁ hj₂
          have h_x_eq_b : R.x ⟨j + 1, by linarith⟩ = b := by
            exact h_monotone _ ( Nat.le_succ_of_le hj₁ );
          have h_x_eq_b : R.x ⟨j, by linarith⟩ = b := by
            exact h_monotone ⟨ j, by linarith ⟩ hj₁;
          unfold term_f_g IPart.term; aesop;
        rw [ ← Finset.sum_range_add_sum_Ico _ ( show ( k ( Fin.last P.n ) |> Fin.val ) ≤ R.n from Nat.le_of_lt_succ <| Fin.is_lt _ ) ];
        simp +zetaDelta at *;
        exact Finset.sum_eq_zero fun x hx => h_zero x ( Finset.mem_Ico.mp hx |>.1 ) ( Finset.mem_Ico.mp hx |>.2 );
      convert h_rewrite using 1;
      · unfold RSSum term_f_g;
        unfold IPart.term; simp +decide [ Finset.sum_range, Fin.sum_univ_castSucc ] ;
        rfl;
      · convert IPart.sum_partition_blocks P.n ( fun i => ( k i : ℕ ) ) ( fun i j hij => by simpa using hk hij ) ( fun j => term_f_g f g R j ) using 1;
        aesop

/- Now we start proving meaningful bounds.-/

/-
The sum of absolute differences of g over a partition is bounded by the total variation of g.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
