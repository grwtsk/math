# swap_diff_le

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
      "line": 1222,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1e/1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b2829736-720c-9502-abbf-f43a0197ddaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:033d38a8-9521-7834-ca05-297d29dff148",
  "kind": "lemma",
  "lexical_name": "swap_diff_le",
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
  "slug": "swap-diff-le--2c1c4b197fec202524c7a901",
  "source": {
    "blob": "bcbe56fb3e95f5ae54e4a85a366449427e538bd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1263,
    "line": 1222,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c1c4b197fec202524c7a90178323ad5c48aa7f5aa639dfce88505cea828bb9b",
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

Occurrence: `result:033d38a8-9521-7834-ca05-297d29dff148`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1222–1263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma swap_diff_le {a b : ℝ} (P : TaggedPartition a b) (j : Fin (P.n + 1)) :
  (swapTaggedPartition P).x j.succ - (swapTaggedPartition P).x j.castSucc ≤ 2 * P.mesh := by
    cases j using Fin.inductionOn;
    · unfold swapTaggedPartition;
      unfold swap_x;
      rcases P with ⟨ ⟨ n, x, hx ⟩, xi, hxi ⟩;
      rcases n with ( _ | n ) <;> norm_num [ Fin.cons ] at *;
      · simp_all +decide [ Fin.snoc ];
        unfold IPart.IPartition.mesh; aesop;
      · have := hxi 0; norm_num at *; linarith! [ hx ( show 0 ≤ 1 from Nat.zero_le _ ), IPart.mesh_ge_diff ⟨ n + 1, x, hx, by tauto, by tauto ⟩ 0 ] ;
    · unfold swapTaggedPartition;
      unfold swap_x;
      simp +decide [ Fin.cons, Fin.snoc ];
      split_ifs <;> simp_all +decide [ Fin.ext_iff ];
      · rename_i i hi;
        have h_diff : P.xi (i.succ.castLT hi) ≤ P.x (i.succ.castLT hi).succ ∧ P.x (i.succ.castLT hi).succ ≤ P.x (i.succ.castLT hi).castSucc + P.mesh := by
          have h_diff : P.x (i.succ.castLT hi).succ - P.x (i.succ.castLT hi).castSucc ≤ P.mesh := by
            exact IPart.mesh_ge_diff P.toIPartition (i.succ.castLT hi);
          exact ⟨ P.h_xi _ |>.2, by linarith ⟩;
        have h_diff : P.x (i.succ.castLT hi).castSucc - P.x i.castSucc ≤ P.mesh := by
          have h_diff : ∀ j : Fin P.n, P.x (j.succ) - P.x j.castSucc ≤ P.mesh := by
            exact fun j ↦ IPart.mesh_ge_diff P.toIPartition j;
          convert h_diff i using 1;
        linarith [ P.h_xi i ];
      · rename_i i hi;
        -- Since $P.xi i \leq b$, we have $b - P.xi i \leq b - P.xi i$.
        have h_le : b - P.xi i ≤ P.mesh := by
          have h_le : b - P.xi i ≤ P.x (Fin.last P.n) - P.x i.castSucc := by
            have := P.h_xi i;
            linarith [ P.right, P.monotone ( show i.castSucc ≤ Fin.last P.n from Fin.le_last _ ), P.monotone ( show i.succ ≤ Fin.last P.n from Fin.le_last _ ) ];
          refine le_trans h_le ?_;
          have h_le : ∀ j : Fin P.n, P.x (Fin.succ j) - P.x (Fin.castSucc j) ≤ P.mesh := by
            exact fun j ↦ IPart.mesh_ge_diff P.toIPartition j;
          cases hi.eq_or_lt <;> simp_all +decide [ Fin.eq_last_of_not_lt ];
          · convert h_le i using 1;
            congr ; aesop;
          · linarith [ Fin.is_lt i ];
        linarith [ show 0 ≤ P.mesh from IPart.mesh_nonneg P.toIPartition ]

/-
The mesh of the swapped partition is at most twice the mesh of the original partition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/LeMaxGetd875dfc0e3e51/Variant1e3183331e0ed4a4451eedb253a3c8f3ee35aedb505839fd6cd76cb2ae2e0e88.lean#L1222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcbe56fb3e95f5ae54e4a85a366449427e538bd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
