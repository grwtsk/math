# exists_discrete_support_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8869d2b8-f31b-daad-1868-aadfba4d09d5",
  "kind": "theorem",
  "lexical_name": "exists_discrete_support_nonpos",
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
  "slug": "exists-discrete-support-nonpos--363a493e8ab10a371d1158b5",
  "source": {
    "blob": "9a04c1930d85357b652259a54d97b96776d007e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:363a493e8ab10a371d1158b50e840ab980d13737ce518ca31efd2e52c85431bd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8869d2b8-f31b-daad-1868-aadfba4d09d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_discrete_support_nonpos (f : BoundedAdditiveMeasure α) :
    ∃ s : Set α, s.Countable ∧ ∀ t : Set α, t.Countable → f (t \ s) ≤ 0 := by
  /- The idea of the proof is to construct the desired set inductively, adding at each step a
    countable set with close to maximal measure among those points that have not already been
    chosen. Doing this countably many steps will be enough. Indeed, otherwise, a remaining set would
    have positive measure `ε`. This means that at each step the set we have added also had a large
    measure, say at least `ε / 2`. After `n` steps, the set we have constructed has therefore
    measure at least `n * ε / 2`. This is a contradiction since the measures have to remain
    uniformly bounded.

    We argue from the start by contradiction, as this means that our inductive construction will
    never be stuck, so we won't have to consider this case separately.

    In this proof, we use explicit coercions `↑s` for `s : A` as otherwise the system tries to find
    a `CoeFun` instance on `↥A`, which is too costly.
    -/
  by_contra' h
  -- We will formulate things in terms of the type of countable subsets of `α`, as this is more
  -- convenient to formalize the inductive construction.
  let A : Set (Set α) := {t | t.Countable}
  let empty : A := ⟨∅, countable_empty⟩
  haveI : Nonempty A := ⟨empty⟩
  -- given a countable set `s`, one can find a set `t` in its complement with measure close to
  -- maximal.
  have : ∀ s : A, ∃ t : A, ∀ u : A, f (↑u \ ↑s) ≤ 2 * f (↑t \ ↑s) := by
    intro s
    have B : BddAbove (range fun u : A => f (↑u \ ↑s)) := by
      refine' ⟨f.C, fun x hx => _⟩
      rcases hx with ⟨u, hu⟩
      rw [← hu]
      exact f.le_bound _
    let S := iSup fun t : A => f (↑t \ ↑s)
    have S_pos : 0 < S := by
      rcases h s.1 s.2 with ⟨t, t_count, ht⟩
      apply ht.trans_le
      let t' : A := ⟨t, t_count⟩
      change f (↑t' \ ↑s) ≤ S
      exact le_ciSup B t'
    rcases exists_lt_of_lt_ciSup (half_lt_self S_pos) with ⟨t, ht⟩
    refine' ⟨t, fun u => _⟩
    calc
      f (↑u \ ↑s) ≤ S := le_ciSup B _
      _ = 2 * (S / 2) := by ring
      _ ≤ 2 * f (↑t \ ↑s) := mul_le_mul_of_nonneg_left ht.le (by norm_num)
  choose! F hF using this
  -- iterate the above construction, by adding at each step a set with measure close to maximal in
  -- the complement of already chosen points. This is the set `s n` at step `n`.
  let G : A → A := fun u => ⟨(↑u : Set α) ∪ ↑(F u), u.2.union (F u).2⟩
  let s : ℕ → A := fun n => G^[n] empty
  -- We will get a contradiction from the fact that there is a countable set `u` with positive
  -- measure in the complement of `⋃ n, s n`.
  rcases h (⋃ n, ↑(s n)) (countable_iUnion fun n => (s n).2) with ⟨t, t_count, ht⟩
  let u : A := ⟨t \ ⋃ n, ↑(s n), t_count.mono (diff_subset _ _)⟩
  set ε := f ↑u with hε
  have ε_pos : 0 < ε := ht
  have I1 : ∀ n, ε / 2 ≤ f (↑(s (n + 1)) \ ↑(s n)) := by
    intro n
    rw [div_le_iff' (show (0 : ℝ) < 2 by norm_num), hε]
    convert hF (s n) u using 2
    · dsimp
      ext x
      simp only [not_exists, mem_iUnion, mem_diff]
      tauto
    · congr 1
      simp only [Function.iterate_succ', Subtype.coe_mk, union_diff_left, Function.comp]
  have I2 : ∀ n : ℕ, (n : ℝ) * (ε / 2) ≤ f ↑(s n) := by
    intro n
    induction' n with n IH
    · simp only [BoundedAdditiveMeasure.empty, id.def, Nat.cast_zero, zero_mul,
        Function.iterate_zero, Subtype.coe_mk, Nat.zero_eq]
      rfl
    · have : (↑(s (n + 1)) : Set α) = ↑(s (n + 1)) \ ↑(s n) ∪ ↑(s n) := by
        simp only [Function.iterate_succ', union_comm, union_diff_self, Subtype.coe_mk,
          union_diff_left, Function.comp]
      rw [Nat.succ_eq_add_one, this, f.additive]
      swap; · exact disjoint_sdiff_self_left
      calc
        ((n + 1 : ℕ) : ℝ) * (ε / 2) = ε / 2 + n * (ε / 2) := by simp only [Nat.cast_succ]; ring
        _ ≤ f (↑(s (n + 1 : ℕ)) \ ↑(s n)) + f ↑(s n) := add_le_add (I1 n) IH
  rcases exists_nat_gt (f.C / (ε / 2)) with ⟨n, hn⟩
  have : (n : ℝ) ≤ f.C / (ε / 2) := by
    rw [le_div_iff (half_pos ε_pos)]; exact (I2 n).trans (f.le_bound _)
  exact lt_irrefl _ (this.trans_lt hn)
#align counterexample.phillips_1940.bounded_additive_measure.exists_discrete_support_nonpos Counterexample.Phillips1940.BoundedAdditiveMeasure.exists_discrete_support_nonpos

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a04c1930d85357b652259a54d97b96776d007e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
