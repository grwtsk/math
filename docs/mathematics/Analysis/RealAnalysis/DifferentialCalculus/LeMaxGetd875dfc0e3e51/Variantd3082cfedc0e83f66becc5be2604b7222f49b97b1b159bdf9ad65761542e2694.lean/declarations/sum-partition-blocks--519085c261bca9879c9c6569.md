# sum_partition_blocks

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b330cc98-65cc-9467-82df-3663656bd4f8",
  "kind": "lemma",
  "lexical_name": "sum_partition_blocks",
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
  "slug": "sum-partition-blocks--519085c261bca9879c9c6569",
  "source": {
    "blob": "2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 465,
    "line": 437,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:519085c261bca9879c9c656926becac365da92014cf1565669627716025482ac",
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

Occurrence: `result:b330cc98-65cc-9467-82df-3663656bd4f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 437–465.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_partition_blocks {M : Type*} [AddCommMonoid M] (n : ℕ) (k : Fin (n + 1) → ℕ) (hk : Monotone k) (F : ℕ → M) :
    ∑ i : Fin n, ∑ j ∈ Finset.Ico (k i.castSucc) (k i.succ), F j =
    ∑ j ∈ Finset.Ico (k 0) (k (Fin.last n)), F j := by
      rw [ ← Finset.sum_biUnion ];
      · rcongr j aesop;
        simp +zetaDelta at *;
        constructor <;> intro h
        all_goals generalize_proofs at *;
        · rcases h with ⟨ i, hi ⟩ ; exact ⟨ le_trans ( hk <| Nat.zero_le _ ) hi.1, hi.2.trans_le <| hk <| Fin.le_last _ ⟩ ;
        · contrapose! h;
          intro hj
          have h_ind : ∀ i : Fin (n + 1), k i ≤ j := by
            intro i
            induction' i using Fin.induction with i ih
            all_goals generalize_proofs at *;
            · exact hj;
            · exact h i ih
          generalize_proofs at *;
          exact h_ind (Fin.last n);
      · intro i _ j _ hij; simp_all +decide [ Fin.ext_iff ] ;
        cases lt_or_gt_of_ne hij <;> simp_all +decide [ Finset.disjoint_left, hk ];
        · intro a ha₁ ha₂ ha₃; linarith [ hk ( show Fin.castSucc i ≤ Fin.castSucc j from Nat.le_of_lt ‹_› ), hk ( show Fin.succ i ≤ Fin.castSucc j from Nat.succ_le_of_lt ‹_› ) ] ;
        · exact fun a ha₁ ha₂ ha₃ => le_trans ( hk <| Nat.le_of_lt_succ <| by simpa [ Fin.castSucc_lt_succ ] using ‹j < i› ) ha₁

/- That was enough of a dive. Back to maths. Well, first, two trivial estimates.-/

/-
The length of the i-th subinterval of a partition P is at most the mesh of P.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variantd3082cfedc0e83f66becc5be2604b7222f49b97b1b159bdf9ad65761542e2694.lean#L437).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a52cfa84b2ec2edeb4638e9519ad31e4c9e637d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
