# decomposition_Q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6f659ff5c85c47f57920ef4f7488211a89dd2152",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 56,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b0d9534-f39c-c8b6-f2ba-62960b1037f7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2d78fea9-a94c-9d0a-c77a-82dd5a666170",
  "kind": "theorem",
  "lexical_name": "decomposition_Q",
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
  "slug": "decomposition-q--e49b98dc19319c4ee331f540",
  "source": {
    "blob": "6f659ff5c85c47f57920ef4f7488211a89dd2152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e49b98dc19319c4ee331f5405056ad93f3a48b75e7da7c120cc8533e94ee7d75",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d78fea9-a94c-9d0a-c77a-82dd5a666170`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decomposition_Q (n q : ℕ) :
    ((Q q).f (n + 1) : X _⦋n + 1⦌ ⟶ X _⦋n + 1⦌) =
      ∑ i : Fin (n + 1) with i.val < q, (P i).f (n + 1) ≫ X.δ i.rev.succ ≫ X.σ (Fin.rev i) := by
  induction q with
  | zero =>
    simp only [Q_zero, HomologicalComplex.zero_f_apply, Nat.not_lt_zero,
      Finset.filter_false, Finset.sum_empty]
  | succ q hq =>
    by_cases! hqn : n < q
    · rw [Q_is_eventually_constant (show n + 1 ≤ q by lia), hq]
      congr 1
      ext ⟨x, hx⟩
      simp_rw [Finset.mem_filter_univ]
      lia
    · obtain ⟨a, ha⟩ := Nat.le.dest hqn
      rw [Q_succ, HomologicalComplex.sub_f_apply, HomologicalComplex.comp_f, hq]
      symm
      conv_rhs => rw [sub_eq_add_neg, add_comm]
      let q' : Fin (n + 1) := ⟨q, Nat.lt_succ_of_le hqn⟩
      rw [← @Finset.add_sum_erase _ _ _ _ _ _ q' (by simp [q'])]
      congr
      · have hnaq' : n = a + q := by lia
        simp only [(HigherFacesVanish.of_P q n).comp_Hσ_eq hnaq', q'.rev_eq hnaq', neg_neg]
        rfl
      · ext ⟨i, hi⟩
        simp_rw [Finset.mem_erase, Finset.mem_filter_univ, q', ne_eq, Fin.mk.injEq]
        lia

variable (X)

/-- The structure `MorphComponents` is an ad hoc structure that is used in
the proof that `N₁ : SimplicialObject C ⥤ Karoubi (ChainComplex C ℕ))`
reflects isomorphisms. The fields are the data that are needed in order to
construct a morphism `X _⦋n+1⦌ ⟶ Z` (see `φ`) using the decomposition of the
identity given by `decomposition_Q n (n+1)`. -/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/Decomposition/Variantdb67bccea0fed92a4980964e556b8073b31b4379c3796ca6010d9aa26fa54de5.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f659ff5c85c47f57920ef4f7488211a89dd2152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
