# inner_sum_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1008,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6eb76963-1850-7373-8f8b-151ef3bbb7e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bdc8bf08-a966-6596-373c-630d0aeb7188",
  "kind": "lemma",
  "lexical_name": "inner_sum_bound",
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
  "slug": "inner-sum-bound--32fad61c507c387b39db73b6",
  "source": {
    "blob": "661a74a18ecefb4e719f68267d0ff8888af929d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1028,
    "line": 1008,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fad61c507c387b39db73b626ce536466c50f381ccac29e88d8467b413f7d5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bdc8bf08-a966-6596-373c-630d0aeb7188`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1008–1028.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_sum_bound {f g : ℝ → ℝ} {a b : ℝ} (P R : TaggedPartition a b)
    (k : Fin (P.n + 1) → Fin (R.n + 1)) (hk : Monotone k) (hk_eq : ∀ i, R.x (k i) = P.x i)
    (ε : ℝ) (hε : 0 ≤ ε)
    (h_osc : ∀ i : Fin P.n, ∀ x ∈ Set.Icc (P.x i.castSucc) (P.x i.succ), |f (P.xi i) - f x| ≤ ε)
    (i : Fin P.n) :
    ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val,
      (if h : j < R.n then |(f (P.xi i) - f (R.xi ⟨j, h⟩)) * IPart.term g R.toIPartition j| else 0) ≤
    ε * ∑ j ∈ Finset.Ico (k i.castSucc).val (k i.succ).val, |IPart.term g R.toIPartition j| := by
      rw [ Finset.mul_sum _ _ _ ];
      refine' Finset.sum_le_sum fun j hj => _;
      split_ifs <;> simp_all +decide [ abs_mul ];
      · refine' mul_le_mul_of_nonneg_right ( h_osc i _ _ _ ) ( abs_nonneg _ );
        · have := R.h_xi ⟨ j, by linarith ⟩;
          exact le_trans ( hk_eq _ ▸ R.monotone ( show k i.castSucc ≤ ⟨ j, by linarith ⟩ from hj.1 ) ) this.1;
        · have := R.h_xi ⟨ j, by linarith ⟩;
          exact le_trans this.2 ( hk_eq ( Fin.succ i ) ▸ R.monotone ( Nat.le_of_lt_succ ( by aesop ) ) );
      · positivity

/-
The difference between the Riemann sums of a partition and its refinement is bounded by ε times the total variation of g, provided the oscillation of f on the coarser partition is bounded by ε.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MyMVA3a/Variant1b2ea2547bc796e8691807dbc27ee88344b0840007f6ffd4af02bb3f3c807158.lean#L1008).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `661a74a18ecefb4e719f68267d0ff8888af929d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
