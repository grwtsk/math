# RSSum_swap_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbed1f6c-f76a-0a5e-2f90-6d0c6895a37d",
  "kind": "lemma",
  "lexical_name": "RSSum_swap_identity",
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
  "slug": "rssum-swap-identity--8d99cde870ce602aac103216",
  "source": {
    "blob": "3b06a0570821a48a2e65208640ff2e5af25d4cbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1229,
    "line": 1209,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8d99cde870ce602aac103216bf1035cf01ed5a8491b68ba9dcf5f604d1e605f4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbed1f6c-f76a-0a5e-2f90-6d0c6895a37d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1209–1229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma RSSum_swap_identity {a b : ℝ} {f g : ℝ → ℝ} (P : TaggedPartition a b) :
  RSSum g f P = f b * g b - f a * g a - RSSum f g (swapTaggedPartition P) := by
    unfold swapTaggedPartition Integ.RSSum;
    -- By definition of swap_x and swap_xi, we can expand the sums.
    have h_expand : ∑ x : Fin (P.n + 1), f (swap_xi P x) * (g (swap_x P x.succ) - g (swap_x P x.castSucc)) =
      ∑ x : Fin (P.n + 1), f (P.x x) * (g (swap_x P x.succ) - g (swap_x P x.castSucc)) := by
        rfl;
    have h_telescope : ∑ x : Fin (P.n + 1), f (P.x x) * g (swap_x P x.succ) = f b * g b + ∑ x : Fin P.n, f (P.x x.castSucc) * g (P.xi x) := by
      rw [ Fin.sum_univ_castSucc ];
      simp +decide [ add_comm, swap_x ];
      exact Or.inl ( congr_arg f ( P.right ) );
    have h_telescope : ∑ x : Fin (P.n + 1), f (P.x x) * g (swap_x P x.castSucc) = f a * g a + ∑ x : Fin P.n, f (P.x x.succ) * g (P.xi x) := by
      convert Fin.sum_univ_succ _ using 1;
      congr! 2;
      · exact P.left.symm ▸ rfl;
      · unfold swap_x; aesop;
    simp_all +decide [ mul_sub, sub_mul, mul_comm, Finset.sum_add_distrib, Finset.mul_sum _ _ _ ] ; ring

/-
The length of any interval in the swapped partition is at most twice the mesh of the original partition.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variantfc7199f0e351d125be2481ab78fe7011c1466f7f71b608246feeb2ab50165331.lean#L1209).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b06a0570821a48a2e65208640ff2e5af25d4cbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
