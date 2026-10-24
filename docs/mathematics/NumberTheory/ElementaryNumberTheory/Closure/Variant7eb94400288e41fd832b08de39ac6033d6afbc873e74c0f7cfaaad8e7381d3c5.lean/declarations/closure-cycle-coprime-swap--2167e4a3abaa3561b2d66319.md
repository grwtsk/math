# closure_cycle_coprime_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1b4e2fe4-2bac-7a7f-8d7e-26c506c09b6f",
  "kind": "theorem",
  "lexical_name": "closure_cycle_coprime_swap",
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
  "slug": "closure-cycle-coprime-swap--2167e4a3abaa3561b2d66319",
  "source": {
    "blob": "e1236902e9efefc01e7cdb36701b03d0a12c6614",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2167e4a3abaa3561b2d6631901a912894fce41eb9159286ba3ee749841911f8e",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1b4e2fe4-2bac-7a7f-8d7e-26c506c09b6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_cycle_coprime_swap {n : ℕ} {σ : Perm α} (h0 : Nat.Coprime n (Fintype.card α))
    (h1 : IsCycle σ) (h2 : σ.support = Finset.univ) (x : α) :
    closure ({σ, swap x ((σ ^ n) x)} : Set (Perm α)) = ⊤ := by
  rw [← Finset.card_univ, ← h2, ← h1.orderOf] at h0
  obtain ⟨m, hm⟩ := exists_pow_eq_self_of_coprime h0
  have h2' : (σ ^ n).support = univ := Eq.trans (support_pow_coprime h0) h2
  have h1' : IsCycle ((σ ^ n) ^ (m : ℤ)) := by rwa [← hm] at h1
  replace h1' : IsCycle (σ ^ n) :=
    h1'.of_pow (le_trans (support_pow_le σ n) (ge_of_eq (congr_arg support hm)))
  rw [eq_top_iff, ← closure_cycle_adjacent_swap h1' h2' x, closure_le, Set.insert_subset_iff]
  exact
    ⟨Subgroup.pow_mem (closure _) (subset_closure (Set.mem_insert σ _)) n,
      Set.singleton_subset_iff.mpr (subset_closure (Set.mem_insert_of_mem _ (Set.mem_singleton _)))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Closure/Variant7eb94400288e41fd832b08de39ac6033d6afbc873e74c0f7cfaaad8e7381d3c5.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1236902e9efefc01e7cdb36701b03d0a12c6614` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
